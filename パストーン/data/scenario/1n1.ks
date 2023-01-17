*start
;rタグ整理、？と！の後のスペース追加、名前表示残留修正済み（つぶ）

[startoption]
[voconfig sebuf=2 name="roz" vostorage="roz/roz1-1_{number}.ogg" number=2 ]
[voconfig sebuf=2 name="laz" vostorage="laz/laz1-1_{number}.ogg" number=2 ]
[vostart]

[bg storage="makkuro.jpg" time="10"]
[magnification_fade]
『やめてくれ』[np]
目の前が、鮮血で染まっていく。[np]
赤いだけではないどす黒さが、余計に目の前の状況の異常さを物語っていた。[np]
『止めてくれ』[np]
誰かの、怒号が聞こえる。[np]
焦ったような、どうしようもない苦痛を抱えたような、そんな叫び。[np]
;[capimg ui=true filename="akane_image_1.jpg" saveas="true" quality="0" saveas="false" path="true"]
;[bg storage="救急車" time="400"]
[playse_ambulance]
…その次に聞こえたのは、耳を劈くようなサイレン。[np]
さっきの声で通報されたのであろう…[np]
猛スピードでやってきた救急車が、瞬く間に『母だったもの』を乗せていく。[np]
他にも何人か運ばれていた気がするが…[np]
思い出したく、なかった。[np]
…なら、俺は？[np]



[bg name="1-1CG" storage="1-1CG.png" time="2000"]
;修正後 フェード時間を長くしました（つぶ）
;修正前 CGに対して何らかのノイズエフェクトを追加したい

…ああ、そうだ。[np]
あの時の俺は、立ち尽くしていた。[np]
目の前の状況に、思考が停止し、[np]
理解を拒み、[np]
…『言葉』だけを、ただ、紡いでいく。[np]

[bg storage="black.jpg" time="2000"]
『やめてくれ』[np]
『止めてくれ』[np]
『誰か…助けてくれ』[np]

…それが、俺の発した、最後の言葉だった。[np]

[stopse]

[mask time="400"]
[camera zoom="1.7" x="-70" y="-50" time="10" wait="true"]
[better_wait time="400"]
[bg storage="myroom.png" time="10"]
[mask_off time="400" wait="true"]

#yukito
≪・・・・・≫[np]

今日も、いつもと同じ朝が来る。[np]
当たり前のことだが、こうも同じだと退屈してくると感じるのは、俺だけだろうか？[np]

[reset_camera]

[playse storage="se/cloth_1.ogg" loop="false" ]
#yukito
≪…ん…≫[np]

起き上がろうとして、背中に違和感を感じる。[np]
…妙に冷たい。しかもなんだか湿っている。[np]

#yukito
≪…これに関しては久しぶりだな≫[np]

起き上がると、案の定シーツの上に地図が描かれている。[np]
勿論、大学生になってお漏らしをした、というわけではなく…[np]
全て、寝ている間にかいた汗だ。[np]

#yukito
≪脳に刻み込まれているとはいえ…あれを何回も見せられるのは辛いな…≫[np]

あれ、というのは夢の内容のことである。[np]

[bg storage="black.jpg" time="1000"]

;修正済 黒背景フェードイン

5年前の2022年。[np]
『悲劇の飲酒暴走事故』[np]
後に、そんな名前がつけられるほど大きな事故があった。[np]
起こしたのは、飲酒をし、しかも無免許で運転していた大学生。[np]

#男
「事故を起こした後、死のうと思っていた」[np]

警察の取り調べで、男が吐いた言葉は自殺の意志。[np]
…そして、[np]
…その事故で俺は、母親を失うことになった。[np]

[bg storage="myroom.png" time="400" wait="true"]

#yukito
≪…自殺なんかに、他人の命を巻き込むんじゃねぇよ≫[np]


[playse storage="se/cloth_1.ogg" loop="false" ]
何度吐いたか分からない呪いを吐き捨て、俺はベッドから起きる。[np]

…その時だった。[np]

[voice1 vf1="roz/roz1-1_1.ogg"]
#???
「なぁなぁ、もう８時やで？  はよ起きた方がええんやないの？」[np]

[voice2 vf2="laz/laz1-1_1.ogg"]
#???
「いいじゃありませんかロズ。今雪翔様の学校は夏休み、むしろ早起きのほうかと…」[np]

#yukito
≪朝から騒がしいな…≫[np]


;[chara_show name="RozLaz" top="10" left="200" width="753.12" height="795.614" face="roz_taunt" wait="true" pos_mode="true"]
[RozLaz f="roz_taunt"]
[show_RozLaz]
;[voice2 vf2="roz/Roz1-1_2.wav"]
#roz
「そうやってラズが甘やかすから、どんどんマスターの生活リズムが崩れていくんやで？」[np]

;[capimg ui=false filename="1-1roz.png" saveas="true"]
[mask time=500 effec=fadeIn graphic="フェード演出/1-1roz.png"]
[camera time=0 zoom=1.3 wait=true]
[mask_off effect="fadeOut" ]

/*
;[chara_mod name="RozLaz" face="laz_kushou" wait="false"]
[RozLaz f="laz_kushou"]
;[voice2 vf2="laz/Laz1-1_2.wav"]
#ラズ
「あらあら、それならあなただってどうして深夜まで頑張って作業しているご主人様を止めませんの？ 元はといえばロズのせいだと言えますが」[np]
[chara_hide_all time="500" wait="true"]

俺の言葉を無視し、携帯からの声達はどんどん険悪な雰囲気になっていく。[np]
*/

;[chara_mod name="RozLaz" face="roz_okori_2" wait="false"]
[RozLaz f="roz_okori_2"]
[show_RozLaz]
;[voice2 vf2="roz/Roz1-1_3.wav"]
#roz
「どうやら、今日こそ決着つけなあかんみたいやな」[np]


;[chara_mod name="RozLaz" face="laz_confident" wait="false"]
[RozLaz f="laz_confident"]
;[voice2 vf2="laz/Laz1-1_3.wav"]
#ラズ
「勝てるとお思いで？　私、貴方に負けたことないでしょう？」[np]


;[kanim name = "roz" time = "300" keyframe = "pyonpyon"] 
;[chara_mod name="RozLaz" face="roz_okori_3" wait="false"]
[RozLaz f="roz_okori_3"]
;[voice2 vf2="roz/Roz1-1_4.wav"]
#roz
「当たりまえやろ毎回引き分けなんやから！！　とにかく、覚悟…」[np]

[chara_hide_all time="500" wait="true"]

何やら決闘が始まりそうなので、
これ以上うるさくならないうちに音量をゼロに。[np]

#yukito
≪おしゃべりAI達め…≫[np]
;修正後 名前表示をSE再生の前に削除（つぶ）

[playse_dooropen_1]

どうしようもない、と言った風に俺はドアを開け、階下へ降りる。[np]

[vostop]
[scenejumpNormal sc="1n2.ks"]