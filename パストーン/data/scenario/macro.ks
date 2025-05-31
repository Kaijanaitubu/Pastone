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

;黒帯キャラ定義
[chara_new name="black_top" storage="singlepic/演出/black.png" width="1280" height="720"]
[chara_new name="black_bottom" storage="singlepic/演出/black.png" width="1280" height="720"]

;黒帯を画面に出す
[macro name="black_band_show"]
	[chara_show name="black_top" layer="%layer|base" top="-720" time="0"]
	[chara_show name="black_bottom" layer="%layer|base" top="720" time="0"]
	[chara_config pos_mode="false" ]
	[chara_move name="black_top" top="+=120" wait="false" anim="true" ]
	[chara_move name="black_bottom" top="-=120" wait="false" anim="true"]
	[chara_config pos_mode="true" ]
[endmacro]

;黒帯を隠す
[macro name="black_band_hide"]
	[chara_config pos_mode="false" ]
	[chara_move name="black_top" top="-=120" wait="false" anim="true" ]
	[chara_move name="black_bottom" top="+=120" wait="false" anim="true"]
	[chara_config pos_mode="true" ]
[endmacro]

;カメラズーム演出
[macro name="zoom" ]
	[eval exp="tf.bigchara = 'big_' + mp.c"]
	[camera zoom=1.35 x="%x|0" y="%x|42" time="0" wait="false" layer="1" ]
	[camera zoom=1.35 x="%x|0" y="%x|42" time="0" wait="false" layer="2" ]
	[image folder="bgimage" storage="%bg" layer="1" time="%time|1000" wait="false" visible="%visible|true"]
	[filter layer="1" blur="5" ]
	[if exp="mp.c.includes('roz') || mp.c.includes('laz')"]
		[chara_part name="big_RozLaz" body="%c" eyes="%e" brow="%b" mouth="%m" wait="%p_wait|false" time="%p_time|600"]
		[chara_show name="big_RozLaz" zindex="%z" wait="%s_wait|true" layer="%layer|0" time="%s_time|1000" top="%top|55" width="574" height="579" layer="2"]
	[else if exp="mp.c.includes('mizuka')"]
		[chara_part name="&tf.bigchara" eyes="%e" brow="%b" mouth="%m" arm="%arm|n" effects="%effects|none" wait="%p_wait|false" time="%p_time|600" ]
		[chara_show name="&tf.bigchara" zindex="%z" wait="%s_wait|true" layer="%layer|0" time="%s_time|1000" top="%top|80" width="642" height="1489"layer="2"]
	[else if exp="mp.c.includes('kouki')"]
		[chara_part name="&tf.bigchara" eyes="%e" brow="%b" mouth="%m" wait="%p_wait|false" time="%p_time|600"]
		[chara_show name="&tf.bigchara" zindex="%z" wait="%s_wait|true" layer="%layer|0" time="%s_time|1000" top="%top|-20" width="542" height="1792" layer="2"]
	[else if exp="mp.c.includes('ayana')"]
		[chara_part name="&tf.bigchara" eyes="%e" brow="%b" mouth="%m" wait="%p_wait|false" time="%p_time|600"]
		[chara_show name="&tf.bigchara" zindex="%z" wait="%s_wait|true" layer="%layer|0" time="%s_time|1000" top="%top|80" width="502" height="1414" layer="2"]
	[endif ]
[endmacro]

;カメラズーム解除演出
[macro name="zoomout" ]
	[freeimage layer="1" time="%time|1000" wait="false" ]
	[chara_hide_all time="1000" layer="2" ]
	[reset_camera wait="true" ease_type="ease" time="0" ]
	[free_filter]
[endmacro]

;キャラを非表示にしながらカメラズーム解除
[macro name="zoomout_hide" ]
	[chara_hide_all wait="false" time="600"]
	[better_wait time="200"]
	[reset_camera wait="false" ease_type="ease" ]
	[free_filter]
	[better_wait time="300"]
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

;------------------------------------------------------------------------------------------------------
; キャラ表示
;------------------------------------------------------------------------------------------------------

;美寿花
[macro name="mizuka"]
	[chara_part name="big_mizuka" eyes="%e" brow="%b" mouth="%m" arm="%arm" effects="%effects|none" wait="%p_wait|false" time="%p_time|600" ]
	[chara_part name="mizuka" eyes="%e" brow="%b" mouth="%m" arm="%arm" effects="%effects|none" wait="%p_wait|false" time="%p_time|600" ]
	[chara_show name="mizuka" zindex="%z" wait="%s_wait|true" layer="%layer|0" time="%s_time|1000" top="%top|80" width="642" height="1489"]
[endmacro]

;美寿花（部屋着）
[macro name="mizuka_r"]
	[chara_part name="big_mizuka_r" eyes="%e" brow="%b" mouth="%m" arm="%arm" effects="%effects" wait="%p_wait|false" time="%p_time|600" ]
	[chara_part name="mizuka_r" eyes="%e" brow="%b" mouth="%m" arm="%arm" effects="%effects" wait="%p_wait|false" time="%p_time|600" ]
	[chara_show name="mizuka_r" zindex="%z" wait="%s_wait|true" layer="%layer|0" time="%s_time|1000" top="%top|80" width="642" height="1489"]
[endmacro]

;ロズ
[macro name="roz"]
	[eval exp="tf.roz_eye = 'roz_' + mp.e"]
	[eval exp="tf.roz_brow = 'roz_' + mp.b"]
	[eval exp="tf.roz_mouth = 'roz_' + mp.m"]

	[if exp="mp.size == 's'"]
		[eval exp="tf.top = 150" ]
	[else]
		[eval exp="tf.top = 55" ]
	[endif]

	[chara_part name="big_RozLaz" body="%re|roz" eyes="&tf.roz_eye" brow="&tf.roz_brow" mouth="&tf.roz_mouth" wait="%p_wait|false" time="%p_time|600" ]
	[chara_part name="RozLaz" body="%re|roz" eyes="&tf.roz_eye" brow="&tf.roz_brow" mouth="&tf.roz_mouth" wait="%p_wait|false" time="%p_time|600" ]
	[chara_show name="RozLaz" zindex="%z" wait="%s_wait|true" layer="%layer|0" time="%s_time|1000" top="&tf.top" width="574" height="579"]
[endmacro]

;ラズ
[macro name="laz"]
	[eval exp="tf.laz_eye = 'laz_' + mp.e"]
	[eval exp="tf.laz_brow = 'laz_' + mp.b"]
	[eval exp="tf.laz_mouth = 'laz_' + mp.m"]

	[if exp="mp.size == 's'"]
		[eval exp="tf.top = 150" ]
	[else]
		[eval exp="tf.top = 55" ]
	[endif]

	[chara_part name="big_RozLaz" body="%re|laz" eyes="&tf.laz_eye" brow="&tf.laz_brow" mouth="&tf.laz_mouth" wait="%p_wait|false" time="%p_time|600" ]
	[chara_part name="RozLaz" body="%re|laz" eyes="&tf.laz_eye" brow="&tf.laz_brow" mouth="&tf.laz_mouth" wait="%p_wait|false" time="%p_time|600" ]
	[chara_show name="RozLaz" zindex="%z" wait="%s_wait|true" layer="%layer|0" time="%s_time|1000" top="&tf.top" width="574" height="579"]
[endmacro]

;ラズ（お辞儀）
[macro name="laz_ojigi"]
	[if exp="mp.size == 's'"]
		[eval exp="tf.top = 150" ]
	[else]
		[eval exp="tf.top = 55" ]
	[endif]

	[chara_part name="big_RozLaz" body="laz_ojigi" wait="%p_wait|false" time="%p_time|600"]
	[chara_part name="RozLaz" body="laz_ojigi" wait="%p_wait|false" time="%p_time|600"]
	[chara_show name="RozLaz" zindex="%z" wait="%s_wait|true" layer="%layer|0" time="%s_time|1000" top="&tf.top" width="574" height="579"]
[endmacro]

;ロズ＆ラズ
[macro name="rozlaz"]
	[if exp="mp.size == 's'"]
		[eval exp="tf.top = 150" ]
	[else]
		[eval exp="tf.top = 55" ]
	[endif]

	[chara_part name="big_RozLaz" body="rozlaz" wait="%p_wait|false" time="%p_time|600"]
	[chara_part name="RozLaz" body="rozlaz" wait="%p_wait|false" time="%p_time|600"]
	[chara_show name="RozLaz" zindex="%z" wait="%s_wait|true" layer="%layer|0" time="%s_time|1000" top="&tf.top" width="574" height="579"]
[endmacro]

;黄樹
[macro name="kouki"]
	[chara_part name="big_kouki" eyes="%e" brow="%b" mouth="%m" wait="%p_wait|false" time="%p_time|600"]
	[chara_part name="kouki" eyes="%e" brow="%b" mouth="%m" wait="%p_wait|false" time="%p_time|600"]
	[chara_show name="kouki" zindex="%z" wait="%s_wait|true" layer="%layer|0" time="%s_time|1000" top="%top|-20" width="542" height="1792"]
[endmacro]

;文永
[macro name="ayana"]
	[chara_part name="big_ayana" eyes="%e" brow="%b" mouth="%m" wait="%p_wait|false" time="%p_time|600"]
	[chara_part name="ayana" eyes="%e" brow="%b" mouth="%m" wait="%p_wait|false" time="%p_time|600"]
	[chara_show name="ayana" zindex="%z" wait="%s_wait|true" layer="%layer|0" time="%s_time|1000" top="%top|80" width="502" height="1414"]
[endmacro]

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