;------------------------------------------------------------------------------------------------------
; システム関係
;------------------------------------------------------------------------------------------------------

;改行マクロ
[macro name="np"]
    [p]
[endmacro]

;改行マクロボイス関連
[macro name="vp"]
    [p]
    [vrepeat_delete]
    [stopse buf="2"]
    [stopse buf="3"]
    [stopse buf="4"]
    [stopse buf="5"]
    [stopse buf="6"]
    [stopse buf="7"]
    [stopse buf="8"]
    #
[endmacro]

;シナリオの一番最初に宣言する設定
[macro name="startoption"]
	[cm]
	[start_keyconfig]

	;メッセージウィンドウの表示
	@layopt layer="message0" visible="true"

	;システムボタンの表示
	[layopt layer="fix" visible="true" ]
	
	#
[endmacro]

;skip判定用
[macro name="is_skip"]
	[iscript]
   		tf.is_skip = TG.stat.is_skip;
	[endscript]
[endmacro]

;スキップ対応waitタグ
[macro name="better_wait"]
	[is_skip]
	[if exp="tf.is_skip!==true"]
		[wait time="%time"]
	[else]
		[wait time="10"]
	[endif]
[endmacro]


;------------------------------------------------------------------------------------------------------
; 演出関係
;------------------------------------------------------------------------------------------------------

;各キャラの表情表示マクロ
[macro name="mizuka"]
    [chara_mod name="mizuka" face="%f" cross="false" wait="%m_wait|true" time="%time" ]
    [chara_show name="mizuka" top="20|%top" zindex="%z" wait="%s_wait|true" layer="%layer" time="%time" ] 
[endmacro]

[macro name="raz"]
    [chara_mod name="raz" face="%f" cross="false" wait="%m_wait|true" time="%time"]
    [chara_show name="raz" top="|%top" zindex="%z" wait="%s_wait|true" layer="%layer" time="%time"]
[endmacro]

[macro name="loz"]
    [chara_mod name="loz" face="%f" cross="false" wait="%m_wait|true" time="%time"]
    [chara_show name="loz" top="%top" zindex="%z" wait="%s_wait|true" layer="%layer" time="%time"]
[endmacro]

[macro name="kouki"]
    [chara_mod name="kouki" face="%f" cross="false" wait="%m_wait|true" time="%time"]
    [chara_show name="kouki" zindex="%z" wait="%s_wait|true" top="%top|-50" layer="%layer" time="%time"]
[endmacro]

[macro name="ayana"]
    [chara_mod name="ayana" face="%f" cross="false" wait="%m_wait|true" time="%time"]
    [chara_show name="ayana" top="%top" zindex="%z" wait="%s_wait|true" layer="%layer" time="%time"]
[endmacro]

;効果音再生
[macro name="se"]
    [playse storage="%s" ]
[endmacro]

;画像表示用
[macro name="cg" ]
    [image storage="%s" width="%w|1280" height="%h|720" layer="%layer|1" visible="%visible|true" time="%time|1000" name="%name|cg" ]
[endmacro]

;画像削除用
[macro name="freecg" ]
    [free layer="%layer|1" name="cg" time="10" ]
    [freeimage layer="%layer|1" time="%time|1000" wait="%wait|true" ]
[endmacro]

;頷き風
[keyframe name="un"]
	[frame p="50%" y="20"]
[endkeyframe]

;ぴょんぴょん
[keyframe name="pyonpyon"]
	[frame p="25%" y="-20"]
	[frame p="50%" y="20"]
	[frame p="75%" y="-20"]
[endkeyframe]

;ぴょん
[keyframe name="pyon"]
	[frame p="50%" y="-20"]
[endkeyframe]

[return]