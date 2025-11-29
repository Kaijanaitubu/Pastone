### テキストファイルからCSVファイルを生成するスクリプト
import re
import csv

KAGIKAKKO_START = '「'
KAGIKAKKO_END = '」'

EXCEPT_LIST = ['雪翔']

REGEX_PATTERN = r'[A-Z]-[0-9][a-z]?'  

# 出力形式 チャプター、キャラクター、セリフ、文字数カウント

def process_text_file(input_file, output_file):
    with open(input_file, 'r', encoding='utf-8') as infile, open(output_file, 'w', newline='', encoding='utf-8') as outfile:
        writer = csv.writer(outfile)
        writer.writerow(['Chapter', 'Character', 'Dialogue', 'Character Count'])  # ヘッダー行を書き込む
        chapter = None
        for line in infile:
            # 正規表現でチャプターを検出

            line = line.strip()
            if not line:
                continue  # 空行をスキップ
            if re.match(REGEX_PATTERN, line):
                chapter = line
                continue
            if KAGIKAKKO_START in line and KAGIKAKKO_END in line:
                start_index = line.index(KAGIKAKKO_START)
                end_index = line.index(KAGIKAKKO_END, start_index) + 1
                dialogue = line[start_index:end_index]
                character = line[:start_index].strip()
                
                if character in EXCEPT_LIST:
                    continue  # 除外リストにあるキャラクターをスキップ
                # カギかっことスペースを除いた文字数をカウント
                char_count = len(dialogue) - 2 - dialogue.count(' ') - dialogue.count('　')
                writer.writerow([chapter, character, dialogue, char_count])  # かぎ括弧を除いた文字数をカウント

if __name__ == "__main__":
    # 引数でファイル名を指定
    input_file = 'scenario.txt'  # 入力テキストファイルのパス
    output_file = 'output.csv'  # 出力CSVファイルのパス
    process_text_file(input_file, output_file)
    print(f"CSVファイル '{output_file}' が生成されました。")