[startoption]

[bg storage="living.png" time="10" ]

[chara_show name="mizuka" top="20" wait="true" layer=0]

クリックしたらマスクかかる[p]

[chara_hide name="mizuka" wait="false" time="500"]
[bg  storage="living.png" wait="false" time="1000"]

;[capimg ui=false filename="mizuka_fade.png" saveas="true"]
;[mask time=500 effec=fadeIn graphic="フェード演出/mizuka_fade.png"]
;[camera time=0 zoom=1.3 wait=true]

[chara_show name="mizuka_big" top="-50" wait="false" time="800" layer=1]

;[mask_off effect="fadeOut" ]
;[chara_move name="mizuka" effect="easeInOutBack" left="-=100" top="-=50" width="1203" height="1701"]

[wa]
クリックしたらタイトル[p]

aa[p]

[chara_hide_all time=0 wait="true"]
[chara_hide_all time=0 wait="true" layer=1]
[scenejumpNormal sc="title.ks"]
