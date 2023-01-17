[startoption]

[chara_new name="black_top" storage="singlepic/演出/black.png" width="1280" height="720"]
[chara_new name="black_bottom" storage="singlepic/演出/black.png" width="1280" height="720"]

;マクロ定義
[macro name="black_band_init"]
;黒帯使うための初期化
    [chara_config pos_mode="false"]
    [chara_show name="black_top" layer="0" top="-720" time="0"]
    [chara_show name="black_bottom" layer="0" top="720" time="0"]
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

[bg storage="living.png" time="10" ]
[black_band_init]
[chara_show name="mizuka_big" top="-110" wait="true" layer="1" time="0"]
クリックしたら帯でる[p]
[black_band_show]

[wa]
クリックしたら帯隠す[p]
[black_band_hide]

タイトルへ[p]

[chara_hide_all time=0 wait="true"]
[chara_hide_all time=0 wait="true" layer=1]
[scenejumpNormal sc="title.ks"]