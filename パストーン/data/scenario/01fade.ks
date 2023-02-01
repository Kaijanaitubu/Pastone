[startoption]
[bg storage="living.png"]
背景ループ[np]

[eval exp="f.cnt=1"]

*loopstart

[emb exp="f.cnt"]
[image storage="living.png"layer="0" x="-100"]
[image storage="living.png"layer="0" x="100"]
[camera layer="0" wait="false" x="-100" time="500" ease_type="linear" ]

[eval exp="f.cnt=f.cnt+1" ]

@jump target="loopstart"
[mizuka f="egao" layer=0]

クリックしたらアニメーションかかる[p]

[chara_hide_all]

[mizuka_big f="egao" top="-50" layer=1]

こっち見んな[p]

[wa]
aa[p]

;[chara_hide_all time=0 wait="true"]
[chara_hide_all time=0 wait="true" layer=1]
;[scenejumpNormal sc="title.ks"]
[clearfix]
@jump storage="title.ks"
