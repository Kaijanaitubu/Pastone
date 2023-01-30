[startoption]

[bg storage="living.png" time="10"]
; [image storage="living.png" layer="base" visible="true" ]
; [camera x="-180" layer="base" wait="false" time="2000" ease_type="linear" ]

; [reset_camera time="1000"layer="base"]
;[chara_show name="mizuka" top="20" wait="true" layer=0]
[mizuka f="egao" layer=0]
;[chara_show name="kouki" top="20" wait="true" layer=0]
;[chara_show name="ayana" top="20" wait="true" layer=0]
;[chara_show name="RozLaz" top="20" wait="true" layer=0 ]
クリックしたらアニメーションかかる[p]

;[chara_hide name="mizuka" time="500"]
[chara_hide_all]
;[chara_hide name="kouki" time="500"]
;[chara_hide name="ayana" time="500"]
;[chara_hide name="RozLaz" time="500"]
[mizuka_big f="egao" top="-50" layer=1]
[kanim layer=1 keyframe="un" time="1000"]
;[chara_show name="mizuka" top="-50"  face="bishou" layer=1]
;[bg  storage="living.png" wait="false" time="1000"]

;[capimg ui=false filename="mizuka_fade.png" saveas="true"]
;[mask time=500 effec=fadeIn graphic="フェード演出/mizuka_fade.png"]
;[camera time=0 zoom=1.3 wait=true]

;[mizuka_big top="-50" wait="false" time="500" layer=1]
;[chara_show name="mizuka_big" top="-50" wait="false"  time="800" layer=1]
;[chara_show name="kouki_big" top="-50" wait="false" time="800" layer=1]
;[chara_show name="ayana_big" top="-50" wait="false" time="800" layer=1]
;[chara_show name="RozLaz_big" top="-50" wait="false" time="800" layer=1]

;[mask_off effect="fadeOut" ]
;[chara_move name="mizuka" effect="easeInOutBack" left="-=100" top="-=50" width="1203" height="1701"]


こっち見んな[p]

[wa]
aa[p]

;[chara_hide_all time=0 wait="true"]
[chara_hide_all time=0 wait="true" layer=1]
;[scenejumpNormal sc="title.ks"]
[clearfix]
@jump storage="title.ks"
