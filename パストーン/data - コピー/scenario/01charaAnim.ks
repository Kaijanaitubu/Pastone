;☆演出指定を「;☆☆」でしています。実装済みの箇所は☆を消してください
*start
[startoption]
[voconfig sebuf=2 name="roz" vostorage="roz/roz1-1_{number}.ogg" number=2 ]
[voconfig sebuf=2 name="laz" vostorage="laz/laz1-1_{number}.ogg" number=2 ]
[vostart]
;☆背景 黒

[chara_config anim="false"]

[chara_new  name="mizuka_2" storage="chara/mizuka/akire.png" width="868" height="1227" jname="美寿花"]
[chara_new  name="ayana_2" storage="chara/ayana/akire.png" width="868" height="1227" jname="美寿花"]

[bg storage="living.png"]

;[layopt layer="1" visible="false" ]
[chara_show name="mizuka_2" top="20" wait="true" time="0" layer="1" page="back"]
[chara_show name="ayana" top="20" wait="true" time="0" layer="1" page="back"]

aa[p]

[chara_show name="mizuka" top="20" wait="false"]

aa[p]

[chara_hide name="mizuka" wait="false" time="1000"]

aa[p]

[layopt  layer="1" page="back"]






aaa[p]

@jump storage="title.ks"