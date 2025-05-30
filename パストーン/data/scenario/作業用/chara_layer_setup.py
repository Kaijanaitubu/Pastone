import os
import re

# パスの設定
CHARA_DIR = "c:/Users/kouty/Desktop/Pastone/パストーン/data/fgimage/chara"
OUTPUT_FILE = "c:/Users/kouty/Desktop/Pastone/パストーン/data/scenario/chara.ks"

# 固定zindex定義
base_zindex_map = {
    "body": 0,
    "mouth": 1,
    "eyes": 2,
    "brow": 3,
}

# mizuka_rに使う_r付きフォルダの対象
MIZUKA_R_NAME = "mizuka_r"
MIZUKA_NAME = "mizuka"

# フォルダ存在確認
if not os.path.isdir(CHARA_DIR):
    raise FileNotFoundError(f"キャラフォルダが見つかりません: {CHARA_DIR}")

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
        character_defs.append(f'[chara_new  name="{character}" storage="{rel_path}"]')

# mizuka_r 追加（base_r.png を参照）
mizuka_r_base = os.path.join(CHARA_DIR, MIZUKA_NAME, "base_r.png")
if os.path.exists(mizuka_r_base):
    character_defs.append(f'[chara_new  name="{MIZUKA_R_NAME}" storage="chara/{MIZUKA_NAME}/base_r.png"]')

# 先頭にキャラクター定義を出力
final_output_lines.extend(character_defs)
final_output_lines.append("")

# ===== 各キャラクター処理関数 =====
def process_character(character, is_mizuka_r=False):
    if is_mizuka_r:
        base_character = MIZUKA_NAME
        character_path = os.path.join(CHARA_DIR, base_character)
    else:
        base_character = character
        character_path = os.path.join(CHARA_DIR, character)

    dynamic_zindex_map = {}
    next_zindex = 4
    char_lines = []

    part_dirs = sorted([
        d for d in os.listdir(character_path)
        if os.path.isdir(os.path.join(character_path, d))
    ])

    # mizuka_rのとき、_r付きフォルダとそれ以外を区別
    parts_to_process = []
    r_parts_map = {}

    for part in part_dirs:
        if is_mizuka_r:
            if part.endswith("_r"):
                r_parts_map[part[:-2]] = part  # 例: arm_r → arm
            else:
                parts_to_process.append(part)
        else:
            if not part.endswith("_r"):
                parts_to_process.append(part)

    if is_mizuka_r:
        parts_to_process.extend(r_parts_map.keys())

    for part in sorted(parts_to_process):
        if is_mizuka_r and part in r_parts_map:
            real_part = r_parts_map[part]
            part_path = os.path.join(CHARA_DIR, base_character, real_part)
        else:
            real_part = part
            part_path = os.path.join(character_path, real_part)

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

        # 特別対応：armパートの順序（nを先に）
        if part == "arm":
            if "n.png" in filenames:
                line = f'[chara_layer name="{character}" part={part} id=n storage="chara/{base_character}/{real_part}/n.png" zindex="{zindex}"]'
                char_lines.append((zindex, line))
                filenames.remove("n.png")

        # none（ただしarmはnの後に追加）
        line = f'[chara_layer name="{character}" part={part} id=none storage="none" zindex="{zindex}"]'
        char_lines.append((zindex, line))

        for filename in filenames:
            id_name = filename[:-4]
            rel_path = f"chara/{base_character}/{real_part}/{filename}"
            line = f'[chara_layer name="{character}" part={part} id={id_name} storage="{rel_path}" zindex="{zindex}"]'
            char_lines.append((zindex, line))

    # キャラクター名コメント行を追加
    final_output_lines.append(f";{character}")
    for _, line in sorted(char_lines, key=lambda x: x[0]):
        final_output_lines.append(line)
    final_output_lines.append("")

# ===== 2. 通常キャラの処理 =====
for character in sorted(os.listdir(CHARA_DIR)):
    character_path = os.path.join(CHARA_DIR, character)
    if not os.path.isdir(character_path):
        continue
    if character != MIZUKA_NAME:
        process_character(character)

# ===== 3. mizukaとmizuka_rの個別処理 =====
process_character(MIZUKA_NAME)
process_character(MIZUKA_R_NAME, is_mizuka_r=True)

# ===== ファイルに出力 =====
with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
    for line in final_output_lines:
        f.write(line + "\n")

print(f"完了: {OUTPUT_FILE} にキャラクター別・zindex昇順で出力しました。")
