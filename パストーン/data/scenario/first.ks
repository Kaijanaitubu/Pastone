;一番最初に呼び出されるファイル

[title name="ティラノスクリプト解説"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;プラグイン呼び出し
; [plugin name="textbox_ex"]
; [plugin name="backlog"]
; [plugin name="tsex"]
; [plugin name="voiceplay_ex"]
;[plugin name="ambient_light"]
; [plugin name="slider_ui"]
; [plugin name="auto_indent"]

;ボタン関連


; [vrepeat_config graphic=".button_voice.png" x="400" y="500"]
;[logrepeat_config element=".backlog_chara_name" insert="after"]
; [logrepeat_config]element=".backlog_chara_name" insert="intoafter"]
; [logrepeat_config]element=".backlog_chara_name" insert="self"]
;タイトル画面へ移動
@jump storage="title.ks"

[s]

