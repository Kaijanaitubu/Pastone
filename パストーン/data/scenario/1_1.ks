*start
;rタグ整理、？と！の後のスペース追加、名前表示残留修正済み（つぶ）

[startoption]
[voconfig sebuf=2 name="roz" vostorage="roz/roz1-1_{number}.ogg" number=1 ]
[voconfig sebuf=2 name="laz" vostorage="laz/laz1-1_{number}.ogg" number=1 ]
[vostart]
[mask_off time="3000" effect="fadeOut" color="0xffffff" ]

;☆演出指定を「;☆」でしています。実装済みの箇所は☆を消してください


;☆背景first1
;mizuka1_1再生
「じゃ、約束ね！」[vp]
そう言う彼女の表情は、笑顔に溢れていた。[vp]
向けられたこちらが、照れくさくて目を逸らしてしまうぐらい眩しい笑顔。[vp]
黄昏時の帰り道。[vp]
どこにでもあるような、そしてどこか懐かしい光景。[vp]
;☆背景first2
瞬間、目の前が一変する。[vp]
地面が見慣れないどす黒い赤に染まっていき…[vp]
その次に聞こえたのは、耳を[ruby text = "つんざ"]劈くようなサイレン。[vp]
;☆効果音 要検討 サイレンの音が徐々に低くなっていくように加工？
[se s="se/ambulance.ogg"]
さっきの声で通報されたのであろう。[vp]
猛スピードでやってきた救急車が、瞬く間に『母だったもの』を乗せていく。[vp]
;☆背景first3、同じく長い時間フェード出来そうならお願いします。
[bg name="1_1"storage="1-1CG.png" time="3000" method="fadeInUp"  wait="false"]
他にも何人か運ばれていた気がするが…[vp]
思い出したく、なかった。[vp]
──なら、俺は？[vp]

──ああ、そうだ。[vp]
あの時の俺は、立ち尽くしていた。[vp]
目の前の状況に、思考が停止し、[vp]
理解を拒み、[vp]
『言葉』だけを、ただ、紡いでいく。[vp]

;背景 黒
[bg storage="black.jpg" time="2000" ]
『やめてくれ』[vp]
『止めてくれ』[vp]
『誰か……助けてくれ』[vp]

[stopse]

[mask time="400"]
[camera zoom="1.7" x="-70" y="-50" time="10" wait="true"]
[better_wait time="400"]

[bg storage="myroom.png" time="10"]
[mask_off time="400" wait="true"]
#雪翔
≪‥‥‥≫[vp]

今日も、いつもと同じ朝が来る。[vp]
当たり前のことだが、こうも同じだと退屈してくると感じるのは、俺だけだろうか？[vp]

#雪翔
≪…ん…≫[vp]

[reset_camera]

[se s="se/cloth_1.ogg" loop="false"]

起き上がろうとして、背中に違和感を感じる。[vp]
妙に冷たい。しかもなんだか湿っている。[vp]

#雪翔
≪…これに関しては久しぶりだな。≫[vp]

シーツに目を向けると、汗でぐっしょりと濡れていた。[vp]

#雪翔
≪脳に刻み込まれているとはいえ、あれを何回も見せられるのは辛いな…≫[vp]

あれ、というのは夢の内容のことである。[vp]

5年前の2022年…俺は母親を失った。[vp]
一緒に帰っている道中で、信号を無視して突っ込んできた車にはねられて…　[vp]

#雪翔
≪…朝から考えることじゃないな≫[vp]

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
[roz_big f="roz_taunt" layer=0]
#ロズ
「そうやってラズが甘やかすから、どんどんマスターの生活リズムが崩れていくんやで？」[vp]

;立ち絵 ラズ拡大版 laz_kushou
[laz_big f="laz_kushou" layer=0]
#ラズ
「あらあら、それならあなただってどうして深夜まで頑張って作業しているご主人様を止めませんの？　元はといえばロズのせいだと言えますが」[vp]

[chara_hide_all]
俺の言葉を無視し、携帯からの声達はどんどん険悪な雰囲気になっていく。[vp]

;立ち絵 ロズ拡大版 roz_okori_2
[roz_big f="roz_okori_2" layer=0]
#ロズ
「どうやら、今日こそ決着つけなあかんみたいやな。」[vp]

;立ち絵 ラズ拡大版 laz_confident
[laz_big f="laz_confident" layer=0]
;漫符 tameiki？
[manpu type="tameiki？"]
#ラズ
「勝てるとお思いで？　私、貴方に負けたことないでしょう？」[vp]

;ボイス差し替え予定
;立ち絵 ロズ拡大版 roz_okori_3
[roz_big f="roz_okori_3" layer=0]
;漫符 muka
[manpu type="muka" volume="15"]
#ロズ
「当たりまえやろ毎回引き分けなんやから！！　とにかく、覚悟──」[vp]

[chara_hide_all]
;画面が静か、BGMがない影響もある？

何やら決闘が始まりそうなので、[s]
これ以上うるさくならないうちに音量をゼロに。[vp]

#雪翔
≪おしゃべりAI達め…≫[vp]

どうしようもない、と言った風に俺はドアを開け、階下へ降りる。[vp]
;効果音 ドア開ける
[se s="se/door_open.mp3" loop="false"]
[vostop]

@jump storage="title.ks" 