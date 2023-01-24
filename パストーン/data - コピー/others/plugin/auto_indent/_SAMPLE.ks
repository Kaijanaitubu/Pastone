[plugin name=auto_indent test=test]

[layopt layer=0 visible=true]
[chara_new name=akane jname=あかね storage=chara/akane/normal.png]
[position width=1240 height=240 top=440 left=20]
[position page=fore margint=50 marginl=10 marginr=20 marginb=10 vertical=false opacity=180 color=0x000000]
[ptext name=chara_name_area layer=message0 color=0xFFFFFF size=32 x=50 y=445 bold=bold]
[chara_config ptext=chara_name_area]
[bg storage=room.jpg time=150]
[chara_show name=akane time=150]

#akane

[font size=32]
「カゴカッコ付きの文章（キャラクターのセリフ）内で[r]
改行が発生した際に、2行目以降に自動でインデント（空白）を付ける[r]
プラグインです」[p]

[font size=16]
「文字を小さくして[r]
テストします」[p]

[font size=52]
「文字を大きくして[r]
テストします」[p]

#
[font size=32]
キャラクター名が空欄だと[r]
インデントは発生しません。[p]

サンプルおわり[s]