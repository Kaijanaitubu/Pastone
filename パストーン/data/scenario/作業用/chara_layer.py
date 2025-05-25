import os
import re

# 相対パス設定
CHARA_DIR = "../../fgimage/chara"
OUTPUT_FILE = "../chara_layer.ks"

# 固定zindexマップ（4以降は動的に割り当て）
base_zindex_map = {
    "base": 0,
    "body": 1,
    "mouth": 2,
    "eyes": 3,
    "brow": 4,
}

# 出力行を保持：タプル (zindex, line)
output_entries = []

if not os.path.isdir(CHARA_DIR):
    raise FileNotFoundError(f"キャラフォルダが見つかりません: {CHARA_DIR}")

# キャラクターごとの処理
for character in os.listdir(CHARA_DIR):
    character_path = os.path.join(CHARA_DIR, character)
    if not os.path.isdir(character_path):
        continue

    dynamic_zindex_map = {}
    next_zindex = 5

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

        # その他パートには none 行を追加
        if part not in base_zindex_map:
            line = f'[chara_layer name="{character}" part={part} id=none storage="none" zindex="{zindex}"]'
            output_entries.append((zindex, line))

        # 各画像ファイルから出力行生成
        for filename in sorted(os.listdir(part_path)):
            if filename.endswith(".png"):
                id_name = filename[:-4]
                rel_path = os.path.join("chara", character, part, filename).replace("\\", "/")
                line = f'[chara_layer name="{character}" part={part} id={id_name} storage="{rel_path}" zindex="{zindex}" ]'
                output_entries.append((zindex, line))

# zindex 昇順でソート
output_entries.sort(key=lambda x: x[0])

# 出力
with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
    for _, line in output_entries:
        f.write(line + "\n")

print(f"完了: {OUTPUT_FILE} に zindex 昇順で出力しました。")
