import os
import re

# パスの設定
CHARA_DIR = "c:/Users/advan/Desktop/Pastone/パストーン/data/fgimage/chara"
OUTPUT_FILE = "c:/Users/advan/Desktop/Pastone/パストーン/data/scenario/chara_layer.ks"

# 固定zindex定義
base_zindex_map = {
    "body": 0,
    "mouth": 1,
    "eyes": 2,
    "brow": 3,
}

# フォルダ存在確認
if not os.path.isdir(CHARA_DIR):
    raise FileNotFoundError(f"キャラフォルダが見つかりません: {CHARA_DIR}")

# 全出力をここに
final_output_lines = []

# 各キャラクターごとに処理
for character in sorted(os.listdir(CHARA_DIR)):
    character_path = os.path.join(CHARA_DIR, character)
    if not os.path.isdir(character_path):
        continue

    dynamic_zindex_map = {}
    next_zindex = 4

    # 一時的にキャラクターの出力を格納（zindex, 行）
    char_lines = []

    for part in sorted(os.listdir(character_path)):
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

        # none 行を先に追加
        line = f'[chara_layer name="{character}" part={part} id=none storage="none" zindex="{zindex}"]'
        char_lines.append((zindex, line))

        # 実画像ファイルを追加
        for filename in sorted(os.listdir(part_path)):
            if filename.endswith(".png"):
                id_name = filename[:-4]
                rel_path = os.path.join("chara", character, part, filename).replace("\\", "/")
                line = f'[chara_layer name="{character}" part={part} id={id_name} storage="{rel_path}" zindex="{zindex}" ]'
                char_lines.append((zindex, line))

    # キャラクター名コメント行を追加
    final_output_lines.append(f";{character}")

    # zindex昇順に並べた出力行を追加
    for _, line in sorted(char_lines, key=lambda x: x[0]):
        final_output_lines.append(line)

    # キャラクターの終わりに空行を追加
    final_output_lines.append("")

# ファイルに書き出し
with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
    for line in final_output_lines:
        f.write(line + "\n")

print(f"完了: {OUTPUT_FILE} にキャラクター別・zindex昇順で出力しました。")