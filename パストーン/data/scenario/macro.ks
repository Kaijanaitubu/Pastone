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
	[fadeoutbgm time="300"]
	[freeimage layer="0"]
	;メッセージウィンドウの表示
	@layopt layer="message0" visible="true"

	;システムボタンの表示
	[layopt layer="fix" visible="true" ]

	;喋っていないキャラが暗くなる機能をオフに
	[chara_config  talk_focus="none"]
	
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
; マスク類
;------------------------------------------------------------------------------------------------------

;アイキャッチ付きシーンチェンジマクロ
[macro name="EC"]

	;アイキャッチの画像が用意出来次第、実装予定
	[mask time="3000" effect="fadeIn"]
	[stopse]
	[resetdelay]
	[reset_camera layer="0" time="10" ]
	[reset_camera layer="base" time="10" ]
	[chara_hide_all time="10"]
	@layopt layer="message0" visible="false"
	[layopt layer="fix" visible="false"]

	;アイキャッチ画像表示（これは仮）
	[bg2 storage="title.png" time=10]
	[mask_off effect="fadeOut" time="2000"]
	;美寿花、文永、ロズ、ラズの「パストーン」のボイスの中からランダムで再生？（音声素材未作成）
	[better_wait time="5000"]

	[mask time="3000" effect="fadeIn"]

	@jump storage="&mp.sc"
	
[endmacro]

[macro name="ECout"]
	@layopt layer="message0" visible="true"
	[layopt layer="fix" visible="true"]
	[mask_off effect="fadeOut" time="2000"]
[endmacro]

;シーンジャンプ用マクロ
[macro name="scenejumpNormal"]
	[mask time="1200" effect="slideInLeft"]

	[stopse]
	[resetdelay]
	[reset_camera layer="0" time="10" ]
	[reset_camera layer="base" time="10" ]
	[chara_hide_all time="10"]
	
	@jump storage="&mp.sc"

	[endlink]
	[cm]

[endmacro]

;シーンジャンプ後のマクロ
[macro name="afterjumpmaskNormal"]
	[mask_off effect="slideOutRight" time="1200"]
[endmacro]

;背景が変わるときに使うマスクのマクロ
[macro name="bgchangemask"]
	[mask effect="slideInRight"]
[endmacro]

;マスク効果を切るときのマクロ
[macro name="bgchangemask_off"]
	[mask_off effect="slideOutLeft" time="1200"]
[endmacro]

;------------------------------------------------------------------------------------------------------
; チャプター変更 
;------------------------------------------------------------------------------------------------------

;チャプター1
[macro name="chap_a"]
	;チャプターが始まる際にサブタイトルを表示したい。
	;動画を作成して流すかスクリプトの装飾文字で対応するかは検討中
[endmacro]

;チャプター2
[macro name="chap_b"]
	
[endmacro]

;チャプター3
[macro name="chap_c"]
	
[endmacro]

;チャプター4
[macro name="chap_d"]
	
[endmacro]

;チャプター5
[macro name="chap_e"]
	
[endmacro]

;チャプター6
[macro name="chap_f"]
	
[endmacro]

;------------------------------------------------------------------------------------------------------
; 演出関係
;------------------------------------------------------------------------------------------------------

;各キャラの表情表示マクロ
[macro name="mizuka"]
	[chara_mod name="mizuka" face="%f" cross="false" wait="%m_wait|false" time="%m_time|600" ]
	[chara_show name="mizuka" top="%top|20" zindex="%z" wait="%s_wait|true" layer="%layer|0" time="%time|1000" ] 
[endmacro]

[macro name="RozLaz"]
	[chara_mod name="RozLaz" face="f" cross="false" wait="m_wait|false" time="%m_time|600"]
	[chara_show name="RozLaz" top="%top" zindex="%z"  wait="s_wait|true" layer="%layer|0" time="%time|1000"]
[endmacro]

[macro name="kouki"]
	[chara_mod name="kouki" face="%f" cross="false" wait="%m_wait|false" time="%m_time|600"]
	[chara_show name="kouki" zindex="%z" wait="%s_wait|true" top="%top|-50" layer="%layer|0" time="%time|1000"]
[endmacro]

[macro name="ayana"]
	[chara_mod name="ayana" face="%f" cross="false" wait="%m_wait|false" time="%time|1000"]
	[chara_show name="ayana" top="%top|40" zindex="%z" wait="%s_wait|true" layer="%layer|0" time="%time|1000"]
[endmacro]

;効果音再生
[macro name="se"]
	[playse storage="%s" volume="30" loop="%loop|true" buf="1" ]
[endmacro]

;画像表示用
[macro name="cg" ]
	[image storage="%s" x="%x|0" y="%y|0" width="%w|1280" height="%h|720" layer="%layer|1" visible="%visible|true" time="%time|1000" name="%name|cg" ]
[endmacro]

;画像削除用
[macro name="freecg" ]
	[free layer="%layer|1" name="cg" time="10" ]
	[freeimage layer="%layer|1" time="%time|1000" wait="%wait|true" ]
[endmacro]

;ズーム用
[macro name="mizuka_big"]
	[chara_mod name="mizuka_big" face="%f" cross="false" wait="%m_wait|false" time="%time|1200" ]
	[chara_show name="mizuka_big" top="-50|%top" zindex="%z" wait="%s_wait|true" layer="%layer|1" time="%time|1000" ] 
[endmacro]

[macro name="laz_big"]
	[chara_mod name="RozLaz_big" face="%f" cross="false" wait="%m_wait|false" time="%time|1200"]
	[chara_show name="RozLaz_big" top="%top" zindex="%z" wait="%s_wait|true" layer="%layer|1" time="%time|1000"]
[endmacro]

[macro name="roz_big"]
	[chara_mod name="RozLaz_big" face="%f" cross="false" wait="%m_wait|false" time="%time|1200"]
	[chara_show name="RozLaz_big" top="%top" zindex="%z" wait="%s_wait|true" layer="%layer|1" time="%time|1000"]
[endmacro]

[macro name="kouki_big"]
	[chara_mod name="kouki_big" face="%f" cross="false" wait="%m_wait|false" time="%time|1200"]
	[chara_show name="kouki_big" zindex="%z" wait="%s_wait|true" top="%top|-50" layer="%layer|1" time="%time|1000"]
[endmacro]

[macro name="ayana_big"]
	[chara_mod name="ayana_big" face="%f" cross="false" wait="%m_wait|false" time="%time|1200"]
	[chara_show name="ayana_big" top="%top" zindex="%z" wait="%s_wait|true" layer="%layer|1" time="%time|1000"]
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

;マクロ定義
[macro name="black_band_init"]
;黒帯使うための初期化
	[chara_config pos_mode="false"]
	[chara_show name="black_top" layer="%layer|base" top="-720" time="0"]
	[chara_show name="black_bottom" layer="%layer|base" top="720" time="0"]
	[chara_config pos_mode="true"]
[endmacro]

[macro name="black_band_show"]
;黒帯を画面に出す
	[chara_config pos_mode="false" ]
	[chara_move name="black_top" top="+=120" wait="false" anim="true" ]
	[chara_move name="black_bottom" top="-=120" wait="false" anim="true"]
	[chara_config pos_mode="true" ]
[endmacro]

[macro name="black_band_hide"]
;黒帯を隠す
	[chara_config pos_mode="false" ]
	[chara_move name="black_top" top="-=120" wait="false" anim="true" ]
	[chara_move name="black_bottom" top="+=120" wait="false" anim="true"]
	[chara_config pos_mode="true" ]
[endmacro]
;マクロ定義終わり

;------------------------------------------------------------------------------------------------------
; BGM設定
;------------------------------------------------------------------------------------------------------

;美寿花のテーマ
[macro name="bgm_mizuka"]
	[playbgm storage="mizuka.mp3" volume="40"]
[endmacro]

;------------------------------------------------------------------------------------------------------
; SE設定
;------------------------------------------------------------------------------------------------------

[macro name="playse_ambulance"]	
	[is_skip]
	[if exp="tf.is_skip !== true"]
		[fadeinse storage="se/ambulance.ogg" loop="true" sprite_time="2000-93000" time="5000" volume="20"]
		[wait time="300"]
	[else]
		[fadeinse storage="se/ambulance.ogg" loop="true" sprite_time="2000-93000" time="5000" volume="20"]
		[wait time="10" ]
	[endif]
[endmacro]

[return]