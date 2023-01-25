;☆演出指定を「;☆☆」でしています。実装済みの箇所は☆を消してください
*start
[startoption]
;ロズラズのボイスはファイル名変えてない環境だと動かない
[voconfig sebuf=2 name="ロズ" vostorage="roz/roz1-1_{number}.ogg" number=2 ]
[voconfig sebuf=3 name="ラズ" vostorage="laz/laz1-1_{number}.ogg" number=2 ]
[voconfig sebuf=4 name="???" vostorage="other/1-1_{number}.ogg" number=1 ]
[vostart]
;☆背景 黒

[bg2 storage="black.jpg"]

@jump target="*debug"

#
『やめてくれ』[vp]
目の前が、鮮血で染まっていく。[vp]
赤いだけではないどす黒さが、余計に目の前の状況の異常さを物語っていた。[vp]
『止めてくれ』[vp]
誰かの、怒号が聞こえる。[vp]
焦ったような、どうしようもない苦痛を抱えたような、そんな叫び。[vp]

…その次に聞こえたのは、耳を劈くようなサイレン。[vp]
;☆効果音 要検討 サイレンの音が徐々に低くなっていくように加工？
さっきの声で通報されたのであろう…[vp]
猛スピードでやってきた救急車が、瞬く間に『母だったもの』を乗せていく。[vp]
;☆背景 可能であればここから wait="false" で3分とかかけて美寿花のCGをフェードイン
他にも何人か運ばれていた気がするが…[vp]
思い出したく、なかった。[vp]
…なら、俺は？[vp]

…ああ、そうだ。[vp]
あの時の俺は、立ち尽くしていた。[vp]
目の前の状況に、思考が停止し、[vp]
理解を拒み、[vp]
…『言葉』だけを、ただ、紡いでいく。[vp]

;☆背景 黒
『やめてくれ』[vp]
『止めてくれ』[vp]
『誰か……助けてくれ』[vp]

…それが、俺の発した、最後の言葉だった。[vp]

;画面 暗転
[mask effect="fadeIn" time="1000"]
;背景 雪翔の部屋（昼）
[bg2 storage="myroom.png" name="bg" time="0" wait="false"]
;背景 カメラ拡大
[camera time="0" x="-50" y="-50" zoom="3" time="0" wait="false" layer="base"]

[mask_off effect="fadeOut" time="1000"]

#雪翔
≪‥‥‥≫[vp]

今日も、いつもと同じ朝が来る。[vp]
当たり前のことだが、こうも同じだと退屈してくると感じるのは、俺だけだろうか？[vp]

#雪翔
≪…ん…≫[vp]

;背景 拡大解除
[reset_camera time="1000" wait="false" layer="base"]
;☆効果音 衣擦れ
[se s="se/cloth_1.ogg" loop="false"]

[wa]
起き上がろうとして、背中に違和感を感じる。[vp]
…妙に冷たい。しかもなんだか湿っている。[vp]

#雪翔
≪…これに関しては久しぶりだな。≫[vp]

起き上がると、案の定シーツの上に地図が描かれている。[vp]
勿論、大学生になってお漏らしをした、というわけではなく…[vp]
全て、寝ている間にかいた汗だ。[vp]

#雪翔
≪脳に刻み込まれているとはいえ…あれを何回も見せられるのは辛いな…≫[vp]

あれ、というのは夢の内容のことである。[vp]

;背景 黒帯演出 少し拡大した部屋の背景を映す（出来れば少しづつ横に背景を移動していきたい）
[keyframe name="1n1leftToRight"]
    [frame p="100%" x="-200"]
[endkeyframe]

[keyframe name="1n1resetKeyFrame"]
    [frame p="100%" x="*0" y="*0"]
[endkeyframe]

[black_band_init layer="0"]
[black_band_show]
;[camera zoom="1.5" x="-200"  time="1000" layer="base" wait="true"]
[bg2 storage="myroom_blur.png" name="bg" top="-180" left="0" height="1080" width="1920" tiem="600" wait="true" ]
[kanim name="bg" keyframe="1n1leftToRight" time="30000" easing="linear" ]


#
5年前の2022年。[vp]
『悲劇の飲酒暴走事故』[vp]
後に、そんな名前がつけられるほど大きな事故があった。[vp]
起こしたのは、飲酒をし、しかも無免許で運転していた大学生。[vp]

男「事故を起こした後、死のうと思っていた。」[vp]

警察の取り調べで、男が吐いた言葉は自殺の意志。[vp]
…そして、
…その事故で俺は、母親を失うことになった。[vp]

;背景 黒帯解除
[stop_kanim name="bg"]
[black_band_hide]
;[reset_camera wait="false" layer="base"]
[bg2 storage="myroom.png" name="bg" time="1000" top="0" left="0" height="720" width="1280" wait="false"]
;[kanim name="bg" keyframe="1n1resetKeyFrame" easing="linear" time="1000"]

;[wa]

#雪翔
≪…自殺なんかに、他人の命を巻き込むんじゃねぇよ。≫[vp]

何度吐いたか分からない呪いを吐き捨て、俺はベッドから起きる。[vp]

…その時だった。[vp]

#???
「なぁなぁ、もう８時やで？　はよ起きた方がええんやないの？」[vp]

#???
「いいじゃありませんかロズ。今雪翔様の学校は夏休み、むしろ早起きのほうかと…」[vp]

#雪翔
≪朝から騒がしいな…≫[vp]

;立ち絵 ロズ拡大版 roz_taunt
[roz_big f="roz_taunt" top="-50"]
#ロズ
「そうやってラズが甘やかすから、どんどんマスターの生活リズムが崩れていくんやで？」[vp]

;立ち絵 ラズ拡大版 laz_kushou
[laz_big f="laz_kushou" top="-50"]
#ラズ
「あらあら、それならあなただってどうして深夜まで頑張って作業しているご主人様を止めませんの？　元はといえばロズのせいだと言えますが」[vp]

;[chara_hide_all]
俺の言葉を無視し、携帯からの声達はどんどん険悪な雰囲気になっていく。[vp]

;立ち絵 ロズ拡大版 roz_okori_2
[roz_big f="roz_okori_2" top="-50"]
#ロズ
「どうやら、今日こそ決着つけなあかんみたいやな。」[vp]

*debug

;立ち絵 ラズ拡大版 laz_confident
;☆漫符 tameiki？
[laz_big f="laz_confident" top="-50"]
[manpu layer="1" name="RozLaz" type="tameiki"]
#ラズ
「勝てるとお思いで？　私、貴方に負けたことないでしょう？」[vp]

;ボイス差し替え予定
;立ち絵 ロズ拡大版 roz_okori_3
;☆漫符 muka
[roz_big f="roz_okori_3" top="-50"]
#ロズ
「当たりまえやろ毎回引き分けなんやから！！　とにかく、覚悟…」[vp]


[chara_hide_all]
;画面が静か、BGMがない影響もある？

何やら決闘が始まりそうなので、[vp]
これ以上うるさくならないうちに音量をゼロに。[vp]

#雪翔
≪おしゃべりAI達め…≫[vp]

どうしようもない、と言った風に俺はドアを開け、階下へ降りる。[vp]
;効果音 ドア開ける
[se s="se/door_open.mp3" loop="false"]
[vostop]

@jump storage="title.ks" 