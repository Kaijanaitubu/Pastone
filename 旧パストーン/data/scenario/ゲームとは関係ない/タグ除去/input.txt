*start
;rタグ整理、？と！の後のスペース追加、名前表示残留修正済み（つぶ）

[startoption]

[bg storage="makkuro.jpg" time="0"]

#
『やめてくれ』[p]
目の前が、鮮血で染まっていく。[p]
赤いだけではないどす黒さが、余計に目の前の状況の異常さを物語っていた。[p]
『止めてくれ』[p]
誰かの、怒号が聞こえる。[p]
焦ったような、どうしようもない苦痛を抱えたような、そんな叫び。[p]

;[bg storage="救急車" time="400"]
[playse_ambulance]
…その次に聞こえたのは、耳を劈くようなサイレン。[p]
さっきの声で通報されたのであろう…[p]
猛スピードでやってきた救急車が、瞬く間に『母だったもの』を乗せていく。[p]
他にも何人か運ばれていた気がするが…[p]
思い出したく、なかった。[p]
…なら、俺は？[p]

[bg name="1-1CG" storage="1-1CG.png" time="2000"]
;修正後 フェード時間を長くしました（つぶ）
;修正前 CGに対して何らかのノイズエフェクトを追加したい

…ああ、そうだ。[p]
あの時の俺は、立ち尽くしていた。[p]
目の前の状況に、思考が停止し、[p]
理解を拒み、[p]
…『言葉』だけを、ただ、紡いでいく。[p]

[bg storage="black.jpg" time="2000"]
#yukito
『やめてくれ』[p]
『止めてくれ』[p]
『誰か…助けてくれ』[p]

#
…それが、俺の発した、最後の言葉だった。[p]

[stopse]

[mask time="400"]
[bg storage="myroom.png" time="0"]
[camera zoom="1.7" x="-70" y="-50" time="0" wait="false"]
[wait time="400"]
[mask_off time="400" wait="true"]

#yukito
≪・・・・・≫[p]

#
今日も、いつもと同じ朝が来る。[p]
当たり前のことだが、こうも同じだと退屈してくると感じるのは、俺だけだろうか？[p]

[reset_camera]

[playse storage="se/cloth_1.ogg" loop="false" ]
#yukito
≪…ん…≫[p]

#
起き上がろうとして、背中に違和感を感じる。[p]
…妙に冷たい。しかもなんだか湿っている。[p]

#yukito
≪…これに関しては久しぶりだな。≫[p]

#
起き上がると、案の定シーツの上に地図が描かれている。[p]
勿論、大学生になってお漏らしをした、というわけではなく…[p]
全て、寝ている間にかいた汗だ。[p]

#yukito
≪脳に刻み込まれているとはいえ…あれを何回も見せられるのは辛いな…≫[p]

#
あれ、というのは夢の内容のことである。[p]

[bg storage="black.jpg" time="1000"]

;修正済 黒背景フェードイン

5年前の2022年。[p]
『悲劇の飲酒暴走事故』[p]
後に、そんな名前がつけられるほど大きな事故があった。[p]
起こしたのは、飲酒をし、しかも無免許で運転していた大学生。[p]

#男
「事故を起こした後、死のうと思っていた。」[p]

#
警察の取り調べで、男が吐いた言葉は自殺の意志。[p]
…そして、[p]
…その事故で俺は、母親を失うことになった。[p]

[bg storage="myroom.png" time="400" wait="false"]

#yukito
≪…自殺なんかに、他人の命を巻き込むんじゃねぇよ。≫[p]

#

[playse storage="se/cloth_1.ogg" loop="false" ]
何度吐いたか分からない呪いを吐き捨て、俺はベッドから起きる。[p]

…その時だった。[p]

[voice1 vf1="roz/Roz1-1_1.ogg"]
#???
「なぁなぁ、もう８時やで？  はよ起きた方がええんやないの？」[p]
#

[voice2 vf2="laz/Laz1-1_1.ogg"]
#???
「いいじゃありませんかロズ。
今雪翔様の学校は夏休み、むしろ早起きのほうかと…」[p]
#

[voicestop]
#yukito
≪朝から騒がしいな…≫[p]
#

;[chara_show name="roz" top="20" face="fuman" left = "505" wait = "false" pos_mode = "false"]
;[chara_show name="laz" top="20" wait = "true" pos_mode = "true"]
[chara_show name="RozLaz" top="10" left="200" width="753.12" height="795.614" face="roz_taunt" wait="true" pos_mode="true"]
[voice2 vf2="roz/Roz1-1_2.wav"]
;修正後 ロズラズ単体で画面に表示するなら以前のように大きく表示しても良いと思う（今回のアップロード時に手が間に合わないのは仕方がないので一旦手無しで）

;[kanim name="roz" time="150" keyframe="pyon"] 
#ロズ
「そうやってラズが甘やかすから、どんどんマスターの生活リズムが崩れていくんやで？」[p]
#

[chara_mod name="RozLaz" face="laz_kushou" wait="false"]
[voice2 vf2="laz/Laz1-1_2.wav"]
#ラズ
「あらあら、それならあなただってどうして深夜まで頑張って作業しているご主人様を止めませんの？ 元はといえばロズのせいだと言えますが」[p]
#

[free_filter]
[voicestop]
#
俺の言葉を無視し、携帯からの声達はどんどん険悪な雰囲気になっていく。[p]

[chara_mod name="RozLaz" face="roz_okori_2" wait="false"]
[voice2 vf2="roz/Roz1-1_3.wav"]
#ロズ
「どうやら、今日こそ決着つけなあかんみたいやな。」[p]

#

[chara_mod name="RozLaz" face="laz_confident" wait="false"]
[voice2 vf2="laz/Laz1-1_3.wav"]
#ラズ
「勝てるとお思いで？　私、貴方に負けたことないでしょう？」[p]

#

;[kanim name = "roz" time = "300" keyframe = "pyonpyon"] 
[chara_mod name="RozLaz" face="roz_okori_3" wait="false"]
[voice2 vf2="roz/Roz1-1_4.wav"]
#ロズ
「当たりまえやろ毎回引き分けなんやから！！　とにかく、覚悟…」[p]

#

[chara_hide_all time="500" wait="true"]
[voicestop]

何やら決闘が始まりそうなので、
これ以上うるさくならないうちに音量をゼロに。[p]

#yukito
≪おしゃべりAI達め…≫[p]
#
;修正後 名前表示をSE再生の前に削除（つぶ）

[playse_dooropen_1]

どうしようもない、と言った風に俺はドアを開け、階下へ降りる。[p]

[chara_hide_all time="0" ]

[scenejumpNormal sc="1n2.ks"]