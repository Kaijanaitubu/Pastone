;☆演出指定を「;☆☆」でしています。実装済みの箇所は☆を消してください
*start
[startoption]
[voconfig sebuf=2 name="roz" vostorage="roz/roz1-1_{number}.ogg" number=2 ]
[voconfig sebuf=2 name="laz" vostorage="laz/laz1-1_{number}.ogg" number=2 ]
[vostart]
;☆背景 黒

;ここからマクロ関係
[keyframe name="charafade"]
    [frame p="100%" y="-1000"]
[endkeyframe]

[macro name="OneFadeTwoShow"]
;必要な引数左右のキャラ、表情
    [eval exp="f.charaleft = $charaleft"]

    [image storage="chara/mizuka/akire.png" layer="0" top="20" left="206" depth="front" width="868" height="1227"]
    [chara_hide_all time="800" wait="true"]

    [chara_show name="mizuka" top="1020" zindex="2" wait="true" layer="1" time="1" page="fore"] 
    [chara_show name="kouki" top="950" zindex="1" wait="true" layer="1" time="1" page="fore"]

    [anim layer="1" time="0" opacity="1" ]
    [wa]

    [kanim keyframe="charafade" layer="1" time="1" easing="stop-end"]
    [wa]

    [freeimage layer="0" time="1000" wait="false"]
    [anim layer="1" opacity="255" time="1000" ]
    [wa]
[endmacro]
;ここまでマクロ関係


[bg storage="living.png"]
[mizuka f="egao"]

aa[p]



cc[p]

[chara_mod name="mizuka" face="fuan"]
[chara_mod name="kouki" face="straight"]

aaaaa[p]

@jump storage="title.ks"