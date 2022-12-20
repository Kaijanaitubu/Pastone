;改行マクロ
[macro name="np"]
    [p]
[endmacro]

;改行マクロボイス関連
[macro name="vp"]
    #
    [p]
    [vrepeat_delete]
    [stopse buf="2"]
    [stopse buf="3"]
    [stopse buf="4"]
    [stopse buf="5"]
    [stopse buf="6"]
    [stopse buf="7"]
    [stopse buf="8"]
[endmacro]

;シナリオの一番最初に宣言する設定
[macro name="startoption"]
	[cm]
	[start_keyconfig]

	;メッセージウィンドウの表示
	@layopt layer="message0" visible="true"

	;システムボタンの表示
	[layopt layer="fix" visible="true" ]

	;喋っていないキャラが暗くなる機能をオフに
	[chara_config  talk_focus="none"]
	
	#
[endmacro]

;各キャラの表情表示マクロ
[macro name="mizuka"]
    [chara_mod name="mizuka" face="%f" cross="false" wait="%m_wait"]
    [chara_show name="mizuka" top="%top" zindex="%z" wait="%s_wait"]
[endmacro]

[macro name="raz"]
    [chara_mod name="raz" face="%f" cross="false" wait="%m_wait"]
    [chara_show name="raz" top="%top" zindex="%z" wait="%s_wait"]
[endmacro]

[macro name="loz"]
    [chara_mod name="loz" face="%f" cross="false" wait="%m_wait"]
    [chara_show name="loz" top="%top" zindex="%z" wait="%s_wait"]
[endmacro]

[macro name="kouki"]
    [chara_mod name="kouki" face="%f" cross="false" wait="%m_wait"]
    [chara_show name="kouki" top="%top" zindex="%z" wait="%s_wait"]
[endmacro]

[macro name="ayana"]
    [chara_mod name="ayana" face="%f" cross="false" wait="%m_wait"]
    [chara_show name="ayana" top="%top" zindex="%z" wait="%s_wait"]
[endmacro]

[return]