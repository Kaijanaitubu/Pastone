*start
[cm]
[title name="テキストボックス装飾プラグインサンプル"]
[clearfix]
[hidemenubutton]
[start_keyconfig]
[bg storage="rouka.jpg" time="100"]
[position layer="message0" left=20 top=400 width=920 height=200 page=fore visible=true]
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]
[layopt layer=message0 visible=true]
[ptext name="chara_name_area" layer="message0" color="white" size=32 x=50 y=410 edge="0x333333"]
[chara_config ptext="chara_name_area"]

;文字色をオレンジに
[macro name="fc_orange"]
[font color="0xFACB00"]
[endmacro]

;文字色を白に戻す
[macro name="fc_def"]
[font color="0xFFFFFF"]
[endmacro]

;左上の見出し用
[macro name="midashi"]
[freeimage layer="0" time="0"]
[ptext layer="0" x="20" y="10" text="%text" size="26" color="0xFFFFFF" edge="0x222222" bold="bold"]
[endmacro]


;===============================================================================

; プラグイン読み込み

;===============================================================================
[plugin name="textbox_ex"]

;===============================================================================

; テキストボックス配置

;===============================================================================
[layopt layer="0" visible="true"]

[midashi text="01-はじめに"]

*sample_001
こんにちは、製作者のこ・ぱんだと申します。[r]
こちらは「テキストボックス拡張プラグイン」の使用サンプルです。[p]

テキストボックスの外観を変更したり、自動フォーカスしたり、未入力チェックをおこなったり、文字の整形をおこなったり、
とテキスト入力の使い勝手を改良したプラグインです。[p]

[midashi text="02-初期設定"]

*001_001
[cm]
まずは初期状態のテキストボックスを表示します。[r]
テキストは入力してもしなくてもかまいません。[p]

; テキストボックス
[edit initial="初期設定のテキストボックス" name="tf.test0" top="100" left="280" width="400" height="50" maxchars="30"]

; 決定ボタン
[button graphic="button.png" x="380" y="250" target="*001_002" enterimg="button2.png"]

[s]

*001_002
[commit]
[cm]

入力された文字は「[emb exp="tf.test0"]」です。[p]

[midashi text="03-テキストボックスの外観を変える"]

さて、それではテキストボックスの見た目を変えましょう。[r]
プラグインを導入すると「[fc_orange]change_textbox[fc_def]」というマクロが定義され、
テキストボックスの外観を変えられるようになります。[p]

マクロを使用するにあたって、ひとつだけ注意点があります。[p]

edit タグで指定した color は無効化されます。[r]
文字色は change_textbox マクロの font_color で設定してください。[p]

それではマクロを適用してみましょう。[r]
適当に文字を入力してみてください。[p]

*001_003
[cm]

; change_textbox を使うと edit タグの color パラメータは無視されるので注意
[edit initial="あいう　ABC　ＡＢＣ　123　１２３" name="tf.test1" top="100" left="280" width="400" height="100" maxchars="30"]

; テキストボックスの外観変更（パラメータの詳細は init.ks 参照）
[change_textbox bg_color="0x222222" border_width="4" border_color="0xF8C537" border_radius="0" font_color="0xFFFFFF" font_weight="bold"]

; 決定ボタン
[button graphic="button.png" x="380" y="250" target="*001_004" enterimg="button2.png"]

[s]

;===============================================================================

; 未入力チェック

;===============================================================================
*001_004

; 入力内容の確定
[commit]

[iscript]

  tf.test1_ck = sf.del_space(tf.test1); // 空白をすべて削除してチェック用の変数に代入

[endscript]

; 未入力チェック　※変数名の前にかならず「&」をつけてね
[check_blank var_name="&tf.test1_ck" storage_ng="sample.ks" target_ng="*001_003" storage_ok="sample.ks" target_ok="*001_005" alert_message="入力しないと次に進めないので、適当になんか書いてね"]

[s]

;===============================================================================

; 入力内容を変換する（全角←→半角）

;===============================================================================

*001_005
[cm]
入力した文字は「[fc_orange][emb exp="tf.test1"][fc_def]」です。[p]

[midashi text="04-文字列を整形する"]

つづけて文字列の整形をおこないます。[r]
先ほどの文字からスペースを削除してみましょう。[p]

; さっき未入力チェックで使った変数を活用します
[eval exp="tf.test1 = tf.test1_ck"]
入力した文字は「[fc_orange][emb exp="tf.test1"][fc_def]」です。[p]

つぎに全角文字を半角文字に変換します。[r]
なお、変換できない文字はそのままです。[p]

; tf.test1 の文字列を半角に変換して tf.test1_a に代入（変換できない文字はそのまま）
[eval exp="tf.test1_a = sf.to_half_width(tf.test1)"]
全角→半角に変換すると[r]
「[fc_orange][emb exp="tf.test1_a"][fc_def]」になります。[p]

こんどは逆に半角文字を全角文字に変換します。[r]
先ほどと同様、変換できない文字はそのままです。[p]

; tf.test1 の文字列を全角に変換して tf.test1_b に代入（変換できない文字はそのまま）
[eval exp="tf.test1_b = sf.to_full_width(tf.test1)"]

半角→全角に変換すると[r]
「[fc_orange][emb exp="tf.test1_b"][fc_def]」になります。[p]

; 今回はもとの変数を残すために変換した結果を別の変数に代入していますが
; 実際に使用するときは同じ変数に代入してしまってかまいません

;===============================================================================

; 入力した値を足し算する（文字列バージョン）

;===============================================================================

[midashi text="05-複数のテキストボックスを使用する"]

*sample_002
今度は入力した文字同士を足してみましょう。[r]
２つのテキストボックスに適当な文字を入力してください。[p]

ついでにフォーカス機能もつけましょう。[r]
テキストボックスに自動的にカーソルを合わせるので[r]
ユーザーさんの手間が省けます。[p]

*002_001
[cm]

[edit initial="タピオカ"   name="tf.test2_a" top="100" left="280" width="400" height="50" maxchars="20"]
[edit initial="ミルクティ" name="tf.test2_b" top="180" left="280" width="400" height="50" maxchars="20"]

; テキストボックスごとに外観を変更することはできません（改造すればいける気がしなくもない）
[change_textbox bg_color="0xEEEEEE" border_radius="10" font_color="0x222222"]

[button graphic="button.png" x="380" y="250" target="*002_002" enterimg="button2.png"]

; 自動フォーカス
; テキストボックスを複数指定した場合は一番目に設置したボックスに自動フォーカスしますが
; パラメータ num を使用すると好きなボックスにカーソルを合わせることができます（詳細は init.ks にて）
[focus_textbox]

[s]

;===============================================================================

; 未入力チェック

;===============================================================================
*002_002

; 入力内容の確定
[commit]

[iscript]

  /* 空白を削除 */
  tf.test2_a = sf.del_space(tf.test2_a); // 上の箱
  tf.test2_b = sf.del_space(tf.test2_b); // 下の箱

[endscript]

; 未入力チェック　上の箱
[check_blank var_name="&tf.test2_a" storage_ng="sample.ks" target_ng="*002_001" storage_ok="sample.ks" target_ok="*002_003" alert_message="１つめのワードが入力されていません"]

*002_003
; 未入力チェック　下の箱
[check_blank var_name="&tf.test2_b" storage_ng="sample.ks" target_ng="*002_001" storage_ok="sample.ks" target_ok="*002_004" alert_message="２つめのワードが入力されていません"]

;念のため進行止めてます
[s]

*002_004
[cm]
１つめのワードは「[fc_orange][emb exp="tf.test2_a"][fc_def]」[r]
２つめのワードは「[fc_orange][emb exp="tf.test2_b"][fc_def]」[r]
では、この２つを足し算します。[p]

*002_005
ワードは「[fc_orange][emb exp="tf.test2_a + tf.test2_b"][fc_def]」となりました。[p]

名字と名前をそれぞれ入力してもらうゲームなどで[r]
フルネームを表示するときに使うとよいかも知れません。[p]

;===============================================================================

; 入力した値を足し算する

;===============================================================================

[midashi text="06-入力した数値を足し算する"]

*sample_003
今度はテキストボックスに入力した数字を足し算してみましょう。[r]
好きな数字を入力してください（全角、半角どちらでもＯＫ）[p]

*003_001
[cm]
[edit name="tf.test3" top="100" left="280" width="400" height="60" maxchars="20"]

; opacity の設定によってテキストボックスの背景を半透明にできます（詳細は init.ks にて）
[change_textbox font_color="0x6C5D53" bg_color="0xFCFAF9" opacity="180" border_color="0xC87137" border_width="6" border_style="double" border_radius="20"]

[button graphic="button.png" x="380" y="250" target="*003_002" enterimg="button2.png"]
[focus_textbox]

[s]

;===============================================================================

; 未入力チェック

;===============================================================================
*003_002
[commit]

[iscript]

  tf.test3 = sf.only_number(sf.to_half_width(sf.del_space(tf.test3)));

/*
  上の処理を分割するとこうなります

  tf.test2 = sf.del_space(tf.test2);                  // 空白をすべて削除
  tf.test2 = sf.to_half_width(sf.del_spaceの返り値);   // 全角→半角に変換
  tf.test2 = sf.only_number(sf.to_half_widthの返り値); // 半角数字のみ残す

  どのような文字列を入力しても半角数字しか残らなくなります

*/

[endscript]

; 未入力チェック
[check_blank var_name="&tf.test3" storage_ng="sample.ks" target_ng="*003_001" storage_ok="sample.ks" target_ok="*003_003"]

;===============================================================================

; 結果表示

;===============================================================================
*003_003
[cm]
入力された値は「[fc_orange][emb exp="tf.test3"][fc_def]」です。[p]

;===============================================================================

; 足し算したい数値を入力

;===============================================================================
*003_004
[cm]
さきほどの数字に足したい値を入力してください。[r]
数字以外の文字やスペースを入れても大丈夫です。[p]

*003_005
[cm]
[edit name="tf.test4" top="100" left="280" width="400" height="80" maxchars="20"]
; 背景読み込みバージョン
[change_textbox font_color="0x404C4D" bg_image="patern_001.jpg" border_color="0xC2E5E7" border_style="solid" border_width="6" border_radius="10"]
[button graphic="button.png" x="380" y="250" target="*003_006" enterimg="button2.png"]
[focus_textbox]

[s]

;===============================================================================

; 変換処理＆未入力チェック

;===============================================================================
*003_006
[commit]

[iscript]

  tf.test4 = sf.only_number(sf.to_half_width(sf.del_space(tf.test4)));

[endscript]

; 未入力チェック
[check_blank var_name="&tf.test4" storage_ng="sample.ks" target_ng="*003_005" storage_ok="sample.ks" target_ok="*003_007"]

;===============================================================================

; 結果表示

;===============================================================================
*003_007
[cm]
入力された値は「[fc_orange][emb exp="tf.test4"][fc_def]」です。[r]
では、計算してみましょう。[p]

;===============================================================================

; 入力した値を足し算する（失敗バージョン）

;===============================================================================

; 先に計算結果を変数に入れておく
[eval exp="tf.test5 = tf.test3 + tf.test4"]

[fc_orange][emb exp="tf.test3"][fc_def]と[fc_orange][emb exp="tf.test4"][fc_def]を足した答えは
「[fc_orange][emb exp="tf.test5"][fc_def]」です。[p]

[midashi text="07-テキストボックスの落とし穴"]

・・・・・・正しく計算されていませんね。[r]
ここですぐに「バグだ！」と開発者に詰め寄ってはいけません。[r]
開発者の心がバキバキに折れます。[p]

これはテキストボックスを使うときの注意点なのですが[r]
テキストボックスに入力された値はすべて「文字列」と認識されます。[p]

そのため、半角数字で「123」と入力しても[r]
「ひゃくにじゅうさん」という「数値」ではなく[r]
「いちにさん」という「文字」として扱われるのです。[p]

というわけで、数字として計算できるよう[r]
入力された文字を数値に変換しましょう。[p]

;===============================================================================

; 文字列を数値に変換する

;===============================================================================
; 文字列を数値に変換する方法はいろいろあります
; 興味があるかたは「文字列　数値　変換 JavaScript」で検索

[midashi text="08-文字列を数値に変換する"]

まずは「[emb exp="tf.test3"]」を数値に変換します。[r]

; 文字列を数値に変換
[eval exp="tf.test3 = sf.to_number(tf.test3)"]

・・・・・・はい、変換しました。[r]
くわしくはシナリオファイルを覗いてみてください。[p]


つぎに「[emb exp="tf.test4"]」を数値に変換します。[r]

; 文字列を数値に変換
[eval exp="tf.test4 = sf.to_number(tf.test4)"]

・・・・・・わっしょい！　変換しました！[r]
それでは、もういちど計算してみましょう。[p]

;===============================================================================

; 入力した値を足し算する（成功バージョン）

;===============================================================================
; 先に計算しておく
[eval exp="tf.test5 = tf.test3 + tf.test4"]

[emb exp="tf.test3"]と[emb exp="tf.test4"]を足した答えは「[fc_orange][emb exp="tf.test5"][fc_def]」です。[p]

こんどはバッチリですね。[p]

;===============================================================================

; 終了処理

;===============================================================================

[midashi text="09-おわりに"]

以上でサンプルは終了となります。[r]
最後までおつきあいいただきありがとうございました。[p]

ご利用に際してご不明な点がありましたらご質問ください。[r]
また、不具合を発見された方はご連絡いただけると助かります(*´ｪ`*)ﾉ[p]

[hidemenubutton]
[layopt layer="message0" visible="false"]
[freeimage layer="0"]
[jump storage="first.ks"]

[s]
