[startoption]
[ambient_light_off]

[bg2 storage="living.png" time="10" ]

キャラ表示

[chara_part name="mizuka" body="biku" eyes="n" brow="n" mouth="niko"]
[chara_show name="mizuka" top="80" width="642" height="1489" ]

[vp]

表情変更
[chara_part name="mizuka" eyes="jito" brow="aga" mouth="chobo" time="600" ]
[vp]

表情変更
[chara_part name="mizuka" eyes="fuse" mouth="wara" time="600" ]
[vp]

カメラズーム演出+キャラ表示
[filter layer="base" blur="5" ]
[camera zoom=1.35 y="42" time=1000 ease_type="ease" wait="false" ]

[better_wait time="300"]

[chara_part name="RozLaz" body="rozlaz"]
[chara_show name="RozLaz" top="55" width="531" height="561" ]

; [macro name="roz"]
	
; 	[chara_part name="RozLaz" body="roz" eyes="%e" brow="%b" mouth="%m" time="600"]
; [endmacro]

[vp]

表情変更[chara_part name="RozLaz" body="roz" eyes="roz_n" brow="roz_n" mouth="roz_niko" time="600"]
[vp]

表情変更[chara_part name="RozLaz" brow="roz_n" mouth="roz_niko" time="600"]
[vp]

表情変更[chara_part name="RozLaz" body="laz" eyes="laz_n" brow="laz_n" mouth="laz_n" time="600"]
[vp]

表情変更[chara_part name="RozLaz" eyes="laz_odo" brow="laz_n" mouth="laz_n" time="600"]
[vp]











