;☆演出指定を「;☆☆」でしています。実装済みの箇所は☆を消してください
*start
[startoption]
[voconfig sebuf=2 name="roz" vostorage="roz/roz1-1_{number}.ogg" number=2 ]
[voconfig sebuf=2 name="laz" vostorage="laz/laz1-1_{number}.ogg" number=2 ]
[vostart]
;☆背景 黒



[bg storage="living.png"]

[mizuka f="egao"]

aa[p]

[layopt layer="0" visible="true"]
[image storage="chara/mizuka/akire.png" layer="0" top="20" left="206" depth="front" width="868" height="1227"]
[chara_hide_all]

[layermode layer="1" opacity="255" time="0"]
[chara_show name="mizuka_big" top="20" zindex="2" wait="true" layer="1" time="10" ] 
[chara_show name="kouki_big" zindex="1" wait="true" top="-50" layer="1" time="10" ]

bb[p]

[freeimage layer="0" time="10" wait="true"]

cc[p]



@jump storage="title.ks"