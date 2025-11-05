import os

# パスの設定
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
CHARA_DIR = os.path.normpath(os.path.join(SCRIPT_DIR, "..", "..", "fgimage", "chara"))
OUTPUT_FILE = os.path.normpath(os.path.join(SCRIPT_DIR, "..", "chara_layer.ks"))

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
        # big_ も追加
        character_defs.append(f'[chara_new  name="big_{character}" storage="{rel_path}"]')

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

    part_dirs = sorted([
        d for d in os.listdir(character_path)
        if os.path.isdir(os.path.join(character_path, d))
    ])

    for part in sorted(part_dirs):
        part_path = os.path.join(character_path, part)
        if not os.path.isdir(part_path):
            continue

        # zindex の決定
        if part in base_zindex_map:
            zindex = base_zindex_map[part]
        else:
            if part not in dynamic_zindex_map:
                dynamic_zindex_map[part] = next_zindex
                next_zindex += 1
            zindex = dynamic_zindex_map[part]

        filenames = sorted(f for f in os.listdir(part_path) if f.endswith(".png"))

        # 特別対応: armパートの "n.png" を先に出す
        if part == "arm" and "n.png" in filenames:
            rel_path = f"chara/{base_character}/{part}/n.png"
            char_lines.append((zindex, f'[chara_layer name="{character}" part={part} id=n storage="{rel_path}" zindex="{zindex}"]'))
            char_lines.append((zindex, f'[chara_layer name="big_{character}" part={part} id=n storage="{rel_path}" zindex="{zindex}"]'))
            filenames.remove("n.png")

        # none 定義
        char_lines.append((zindex, f'[chara_layer name="{character}" part={part} id=none storage="none" zindex="{zindex}"]'))
        char_lines.append((zindex, f'[chara_layer name="big_{character}" part={part} id=none storage="none" zindex="{zindex}"]'))

        # 各差分
        for filename in filenames:
            id_name = filename[:-4]
            rel_path = f"chara/{base_character}/{part}/{filename}"
            char_lines.append((zindex, f'[chara_layer name="{character}" part={part} id={id_name} storage="{rel_path}" zindex="{zindex}"]'))
            char_lines.append((zindex, f'[chara_layer name="big_{character}" part={part} id={id_name} storage="{rel_path}" zindex="{zindex}"]'))

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
