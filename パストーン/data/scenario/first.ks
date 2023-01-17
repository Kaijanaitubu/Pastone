;一番最初に呼び出されるファイル


[title name="パストーン"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;マクロやキーフレームの定義
@call storage="macro.ks"

;このゲームで登場するキャラクターを宣言(立ち絵は仮)
@call storage="chara.ks"

;メッセージボックスは非表示
@layopt layer="message" visible="false"

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;メッセージウィンドウの設定
[position layer="message0" left="160" top="487" width="960" height="300" page="fore" visible="true"]

;文字が表示される領域を調整
[position layer="message0" page="fore" frame="textbox.png" width="1280" height="240" left="0" margint="45" marginl="150" marginr="150" marginb="60" ]

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" shadow="0x333333" size="28" bold="true" x="140" y="505"]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;本文の影を設定
[font shadow="0x222222"]

;改行用マクロ
[macro name="np"]
	[p]
	#
	[stopse buf=2]
[endmacro]

;システムボタン
[button name="skip" role="skip" graphic="skip.png" width="71" height="30" x="50" y="680"]	
[button name="role_button" role="save" graphic="button/save.png" enterimg="button/save2.png"  width="90" height="30" x="250" y="680"]
[button name="role_button" role="load" graphic="button/load.png" enterimg="button/load2.png"  width="90" height="30" x="450" y="680"]
[button name="auto" role="auto" graphic="auto.png" width="96" height="30" x="650" y="680"]
[button name="role_button" role="backlog" graphic="button/log.png" enterimg="button/log2.png"  width="73" height="30" x="855" y="680"]
[button graphic="button/config.png" enterimg="button/config2.png" role="sleepgame" storage="config.ks" width="130" height="30" x="1050" y="680"]
[layopt layer="fix" visible="false" ]


;プラグイン(＆設定)呼び出し
[chara_config talk_focus="brightness"]
[plugin name="textbox_ex"]
[plugin name="manpu"]
[plugin name="slider_ui"]
[plugin name="auto_indent"]
[plugin name="autoskip_ex" auto_button_name="auto" auto_button_normal="auto.png" auto_button_active="auto2.png" skip_button_name="skip" skip_button_normal="skip.png" skip_button_active="skip2.png" ]
;[plugin name=tsex]
[plugin name="magnification_fade"]
[plugin name="capimg"]
;タイトル画面へ移動
@jump storage="title.ks"

;debug画面へ移動
;@jump storage="debug.ks"

[s]