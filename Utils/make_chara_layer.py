import os

# パスの設定
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
CHARA_DIR = os.path.normpath(os.path.join(SCRIPT_DIR, "..", "パストーン", "data", "fgimage", "chara"))
OUTPUT_FILE = os.path.normpath(os.path.join(SCRIPT_DIR, "..", "パストーン", "data", "scenario", "chara_layer.ks"))

# 固定zindex定義
base_zindex_map = {
    "body": 0,
    "mouth": 1,
    "eyes": 2,
    "brow": 3,
}

# 出力バッファ
final_output_lines = []

# ===== 1. キャラクター定義の追加 =====
character_defs = []

for character in sorted(os.listdir(CHARA_DIR)):
    character_path = os.path.join(CHARA_DIR, character)
    if not os.path.isdir(character_path):
        continue
    base_image = os.path.join(character_path, "base.png")
    if os.path.exists(base_image):
        rel_path = f"chara/{character}/base.png"
        # 通常
        character_defs.append(f'[chara_new  name="{character}" storage="{rel_path}"]')

# 出力に追加
final_output_lines.extend(character_defs)
final_output_lines.append("")

# ===== 各キャラクター処理関数 =====
def process_character(character):
    base_character = character
    character_path = os.path.join(CHARA_DIR, character)

    dynamic_zindex_map = {}
    next_zindex = 4
    char_lines = []

    # 再帰的にパス内の画像ディレクトリを検出し、部分名はcharacter_pathからの相対パスを'_'で接続して作る
    discovered = []
    for root, dirs, files in os.walk(character_path):
        pngs = [f for f in files if f.endswith(".png")]
        if not pngs:
            continue
        rel = os.path.relpath(root, character_path)
        if rel == ".":
            # ルート直下の画像 (通常は base.png など) はスキップ
            continue
        part_name = rel.replace(os.sep, "_")
        base_part = os.path.basename(root)
        discovered.append((part_name, root, base_part, sorted(pngs)))

    for part_name, part_path, base_part, filenames in sorted(discovered, key=lambda x: x[0]):
        # zindex の決定: ディレクトリの basename が固定定義にある場合はそれを優先
        if base_part in base_zindex_map:
            zindex = base_zindex_map[base_part]
        elif part_name in base_zindex_map:
            zindex = base_zindex_map[part_name]
        else:
            if part_name not in dynamic_zindex_map:
                dynamic_zindex_map[part_name] = next_zindex
                next_zindex += 1
            zindex = dynamic_zindex_map[part_name]

        # 特別対応: armパートの "n.png" を先に出す（ディレクトリの basename が arm の場合）
        if base_part == "arm" and "n.png" in filenames:
            rel_path = f"chara/{base_character}/{rel.replace(os.sep, '/')}/n.png"
            char_lines.append((zindex, f'[chara_layer name="{character}" part={part_name} id=n storage="{rel_path}" zindex="{zindex}"]'))
            filenames = [f for f in filenames if f != "n.png"]

        # none 定義
        char_lines.append((zindex, f'[chara_layer name="{character}" part={part_name} id=none storage="none" zindex="{zindex}"]'))

        # 各差分
        for filename in filenames:
            id_name = filename[:-4]
            rel_path = f"chara/{base_character}/{part_name.replace('_', '/')}/{filename}"
            char_lines.append((zindex, f'[chara_layer name="{character}" part={part_name} id={id_name} storage="{rel_path}" zindex="{zindex}"]'))

    # 出力
    final_output_lines.append(f";{character}")
    for _, line in sorted(char_lines, key=lambda x: x[0]):
        final_output_lines.append(line)
    final_output_lines.append("")

# ===== 全キャラ処理 =====
for character in sorted(os.listdir(CHARA_DIR)):
    character_path = os.path.join(CHARA_DIR, character)
    if not os.path.isdir(character_path):
        continue
    process_character(character)

# ===== ファイルに出力 =====
with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
    for line in final_output_lines:
        f.write(line + "\n")

print(f"完了: {OUTPUT_FILE} にキャラクター別・zindex昇順で出力しました。")
