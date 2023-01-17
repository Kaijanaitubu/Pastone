[cm]

*start 

@clearstack
@bg storage="title.png" time="100"
@wait time="200"
@layopt layer="message0" visible="false"
[hidemenubutton]
[layopt layer="fix" visible="false" ]


;リリースするときには消す
;[iscript]
;localStorage.clear();
;[endscript]
;ここまで

[afterjumpmaskNormal]

[button x="130" y="350" graphic="title/START.png" enterimg="title/START_c.png"  target="gamestart"]
[button name="title" x="130" y="460" graphic="title/LOAD.png" enterimg="title/LOAD_c.png" role="load" ]
;[button name="title" x="130" y="480" graphic="title/GALLERY.png" enterimg="title/GALLERY_u.png" storage="cg.ks"]
;[button name="title" x=135 y=500 graphic="title/button_replay.png" enterimg="title/button_replay2.png" storage="replay.ks"]
;[button name="title" x="130" y="590" graphic="title/CONFIG.png" enterimg="title/CONFIG_c.png" role="sleepgame" storage="config.ks"]

[image x="10" y="30" width="692" height="232" storage="logo_title.png" layer="0" visible="true"]

;[fadeinbgm storage="title_intro.ogg" loop="false" time="1000"]
;[wait time="7000"]
[playbgm storage="title.ogg" loop="true"]

[s]

*gamestart
[clearfix name="title" ]
;一番最初のシナリオファイルへジャンプする
@jump storage="1n1.ks"
