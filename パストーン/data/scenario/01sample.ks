[startoption]

[bg storage="living.png" time="10" ]
[chara_show name="mizuka" top="20" wait="true" layer=0]
[black_band_init]

#
黒帯演出[np]
[black_band_show]
#
黒帯演出終わり[np]
[black_band_hide]


#
拡大演出[np]

[chara_show name="mizuka_big" top="-50" wait="false" time="800" layer=1]


タイトルへ[p]

[chara_hide_all time=0 wait="true" layer="base"]
[chara_hide_all time=0 wait="true" layer=0]
[chara_hide_all time=0 wait="true" layer=1]
@jump storage="title.ks"