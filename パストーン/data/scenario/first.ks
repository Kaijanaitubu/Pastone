;一番最初に呼び出されるファイル

[title name="パストーン"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]


;メッセージウィンドウの設定
[position layer="message0" left="160" top="487" width="960" height="300" page="fore" visible="false"]

;文字が表示される領域、文字スタイルを調整
[position layer="message0" page="fore" frame="textbox.png" width="1280" height="234" left="0" margint="45" marginl="150" marginr="150" marginb="60" ]
;[font shadow="0x222222"]

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" shadow="0x333333" size="28" bold="true" x="140" y="505"]
[chara_config ptext="chara_name_area" anim="false" ]

;プラグイン呼び出し
[plugin name="textbox_ex"]
[plugin name="backlog"]
;[plugin name="tsex"]
[plugin name="voiceplay_ex"]
[plugin name="ambient_light" link="bg"]
[plugin name="slider_ui"]
[plugin name="auto_indent"]

;マクロやキーフレームの定義
@call storage="macro.ks"

;このゲームで登場するキャラクターを宣言(立ち絵は仮)
@call storage="chara.ks"

;ボタン関連
; [vrepeat_config graphic=".button_voice.png" x="400" y="500"]
;[logrepeat_config element=".backlog_chara_name" insert="after"]
; [logrepeat_config]element=".backlog_chara_name" insert="intoafter"]
; [logrepeat_config]element=".backlog_chara_name" insert="self"]


;タイトル画面へ移動
@jump storage="title.ks"

[s]

