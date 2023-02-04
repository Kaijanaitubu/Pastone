;☆演出指定を「;☆☆」でしています。実装済みの箇所は☆を消してください
*start
[startoption]
;ロズラズのボイスはファイル名変えてない環境だと動かない
[voconfig sebuf=2 name="ロズ" vostorage="roz/roz1-1_{number}.ogg" number=2 ]
[voconfig sebuf=3 name="ラズ" vostorage="laz/laz1-1_{number}.ogg" number=2 ]
[voconfig sebuf=4 name="???" vostorage="other/1-1_{number}.ogg" number=1 ]
[vostart]

;背景 黒

[bgmovie storage="first_1.mp4"]
[mask_off time="3000" effect="fadeOut" color="0xffffff" ]

;@jump target="*debug"

;☆背景first1
;mizuka1_1再生
[playse storage="mizuka/mizuka1_1.mp3" loop="false" buf="2"]
「じゃ、約束ね！」[vp]
そう言う彼女の表情は、笑顔に溢れていた。[vp]
向けられたこちらが、照れくさくて目を逸らしてしまうぐらい眩しい笑顔。[vp]
黄昏時の帰り道。[vp]
どこにでもあるような、そしてどこか懐かしい光景。[vp]

;☆背景first2
[stop_bgmovie time="4000" wait="false"]
[bgmovie storage="first_2.mp4" loop="false"]

瞬間、目の前が一変する。[vp]
地面が見慣れないどす黒い赤に染まっていき…[vp]
その次に聞こえたのは、耳を[ruby text = "つんざ"]劈くようなサイレン。[vp]

;☆効果音 要検討 サイレンの音が徐々に低くなっていくように加工？
[se s="se/ambulance.ogg" buf="1"]
さっきの声で通報されたのであろう。[vp]
猛スピードでやってきた救急車が、瞬く間に『母だったもの』を乗せていく。[vp]

;☆背景first3、同じく長い時間フェード出来そうならお願いします。
[bg2 storage="blood.png" time="1"]
[bgmovie storage="first_3.mp4" time="1000"]

;[bg name="1_1" storage="1-1CG.png" time="3000" method="fadeInUp"  wait="false"]
他にも何人か運ばれていた気がするが…[vp]
思い出したく、なかった。[vp]
──なら、俺は？[vp]

──ああ、そうだ。[vp]
あの時の俺は、立ち尽くしていた。[vp]
目の前の状況に、思考が停止し、[vp]
理解を拒み、[vp]
『言葉』だけを、ただ、紡いでいく。[vp]


;背景 黒
[bg2 storage="black.jpg" time="1" wait="false"]

[stop_bgmovie time="3000" wait="false"]
『やめてくれ』[vp]
『止めてくれ』[vp]
『誰か……助けてくれ』[vp]

[stopse buf="1"]


;ここから辻つくった

*debug

;画面 暗転
[mask effect="fadeIn" time="1000"]
;背景 雪翔の部屋（昼）
[bg2 storage="myroom.png" name="bg" time="500" wait="false"]
;背景 カメラ拡大
[camera time="0" x="-50" y="-50" zoom="3" time="0" wait="false" layer="base"]

[mask_off effect="fadeOut" time="1000"]

#雪翔
≪‥‥‥≫[vp]

今日も、いつもと同じ朝が来る。[vp]
当たり前のことだが、こうも同じだと退屈してくると感じるのは、俺だけだろうか？[vp]

#雪翔
≪ん……≫[vp]

;背景 拡大解除
[reset_camera time="1000" wait="false" layer="base"]
;効果音 衣擦れ
[se s="se/cloth_1.ogg" loop="false"]

[wa]

起き上がろうとして、背中に違和感を感じる。[vp]
妙に冷たい。しかもなんだか湿っている。[vp]

#雪翔
≪……これに関しては久しぶりだな。≫[vp]

シーツに目を向けると、汗でぐっしょりと濡れていた。[vp]

#雪翔
≪脳に刻み込まれているとはいえ、あれを何回も見せられるのは辛いな…≫[vp]

あれ、というのは夢の内容のことである。[vp]

[bg2 storage="myroom_blur.png" time="400" wait="false"]

5年前の2022年…俺は母親を失った。[vp]
一緒に帰っている道中で、信号を無視して突っ込んできた車にはねられて…　[vp]

#雪翔
≪…朝から考えることじゃないな≫[vp]

[bg2 storage="myroom.png" time="400"]

頭を振り、脳裏によぎった記憶をさっさと追い出す。[vp]
今の時代、人は何百人に一人が交通事故に遭うんだ。[vp]
それが母親だったというだけのこと。薄情かもしれないが割り切るしかない。[vp]


#???
「なぁなぁ、もう８時やで？　はよ起きた方がええんやないの？」[vp]

#???
「いいじゃありませんかロズ。今雪翔様の学校は夏休み、むしろ早起きのほうかと…」[vp]

#雪翔
≪朝から騒がしいな…≫[vp]

朝に似つかわしくない騒音が、スマホから聞こえてくる。[vp]

;立ち絵 ロズ拡大版 roz_taunt
[roz_big f="roz_taunt" top="-50"]
#ロズ
「そうやってラズが甘やかすから、どんどんマスターの生活リズムが崩れていくんやで？」[vp]

;立ち絵 ラズ拡大版 laz_kushou
[laz_big f="laz_kushou" top="-50"]
#ラズ
「あらあら、それならあなただってどうして深夜まで頑張って作業しているご主人様を止めませんの？　元はといえばロズのせいだと言えますが」[vp]

俺の言葉を無視し、携帯からの声達はどんどん険悪な雰囲気になっていく。[vp]

;立ち絵 ロズ拡大版 roz_okori_2
[roz_big f="roz_okori_2" top="-50"]
#ロズ
「どうやら、今日こそ決着つけなあかんみたいやな」[vp]

;立ち絵 ラズ拡大版 laz_confident
;漫符 tameiki？
[laz_big f="laz_confident" top="-50"]
[manpu layer="1" type="tameiki" x="550" y="80" sound="null.mp3"]
#ラズ
「勝てるとお思いで？　私、貴方に負けたことないでしょう？」[vp]

;☆
;立ち絵 ロズ拡大版 roz_okori_3
;漫符 muka
[roz_big f="roz_okori_3" top="-50"]
[manpu layer="1" type="muka" x="700" y="50" sound="null.mp3"]
#ロズ
「当たりまえやろ毎回引き分けなんやから！！　とにかく、覚悟──」[vp]
;画面が静か、BGMがない影響もある？

[chara_hide_all layer="1"]

何やら決闘が始まりそうなので、[vp]
これ以上うるさくならないうちに音量をゼロに。[vp]

#雪翔
≪おしゃべりAI達め…≫[vp]

どうしようもない、と言った風に俺はドアを開け、階下へ降りる。[vp]

[se s="se/door_open.mp3" loop="false"]
[vostop]

[scenejumpNormal sc="1_2.ks"]