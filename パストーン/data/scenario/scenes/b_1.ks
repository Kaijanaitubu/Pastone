*start

[startoption]
[bg2 storage="myroom.png" ]
[ambient_light_off]
[voconfig sebuf="2" name="美寿花" vostorage="b_1/mizuka_{number}.ogg" number="1"]
[voconfig sebuf="3" name="ロズ" vostorage="b_1/roz_{number}.ogg" number="1"]
[voconfig sebuf="4" name="ラズ" vostorage="b_1/laz_{number}.ogg" number="1"]
[vostart]
[chap_b]


怒涛の初日から一夜明け、翌日。[vp]
8月31日、夏休み最後の日という事で一部の学生は憂鬱な気分に包まれることだろう。[vp]

#雪翔
（まぁ、俺にはあまり関係ないけど）[vp]

というわけで、今日もいつも通り過ごす‥‥はずだったのだが、[vp]
[backlay]
[chara_part name="mizuka" brow="n" mouth="niko" arm="n" wait="false" time="0"]
[if exp="tf.is_skip != true"]
    [chara_show name="mizuka" top="20" left="640" time="0" wait="false" page="back" ]
    [trans layer="0" time="1600" method="fadeInRight" ]
    [wait time="2000"]
[else]
    [chara_show name="mizuka" top="20" left="640" time="10" wait="true" ]
[endif]
#美寿花
「‥‥‥‥」[vp]

#雪翔
≪‥‥‥‥≫[vp]

俺は昨日に引き続き楽曲制作の真っ最中。[vp]
それを後ろからじっと見つめる美寿花。[vp]
‥‥なんなんだこの空間。[vp]

[kanim keyframe="unun" name="mizuka" time="800" ]
#美寿花
「‥‥‥‥‥‥‥‥」[vp]

#雪翔
≪‥‥‥‥‥‥‥‥≫[vp]

#雪翔
（お、落ち着かない‥‥）[vp]

そうはいっても、かれこれ数時間はこの状態。[vp]

さすがに休憩入れるか‥‥と立ち上がり、ヘッドホンを外す。[vp]
[if exp="tf.is_skip != true"]
    [anim name="mizuka" time="600" top="+=40" opacity="0" effect="easeInQuad"]
    [wait time="1000"]
[endif]
[chara_hide name="mizuka" time="0" ]
[mizuka b="nemu" m="hwara" effect="ase" arm="n"]
#美寿花
「お。お疲れ様～‥‥っと」[vp]

そう言いながら、やっぱり同じ体勢じゃ辛かったのか、大きく伸びをして俺の肩に手を置く。[vp]

[mizuka m="niko" effect="none"]
#雪翔
≪‥‥‥‥≫[vp]

‥‥美寿花にとってはただ話したいってだけなんだろうけど‥‥[vp]
意識外から触れられると否応なしにドキッとしてしまうのは、俺が女の子に耐性がないからだろうか。[vp]

[mizuka e="none" m="chi"]
#美寿花
「さっきの部分、結構悩んでたね。何回もやり直してたし‥‥どうしたの？」[vp]

#雪翔
≪あ～、なんか納得いかなくて‥‥≫[vp]

#雪翔
≪いやそうじゃなくて、なんでずっといるの。ここに≫[vp]

[mizuka b="saga" m="neko" arm="te"]
#美寿花
「ん～、暇だから‥‥からかな？」[vp]

#雪翔
≪自分の部屋あるでしょ‥‥そこで好きなことするなりなんなりしてればいいのに‥‥≫[vp]

美寿花には、我が家に一つだけある空き部屋を自由に使っていいことにしてある。クーラーもあるので空調面で問題はないはずだが‥‥[vp]

[mizuka b="n" m="niko" arm="n"]
#美寿花
「一人でいるの、なんか苦手なんだよね。それに人が何かしてるのって、見てて面白いし」[vp]

#美寿花
「結構面白いね。人が何かしてるのを見るのって」[vp]

#雪翔
≪俺は全く集中できないんだけどね‥‥≫[vp]

[chara_hide name="mizuka"]
まさか、これからもここに入り浸るつもりなのだろうか？[vp]

#雪翔
≪‥‥勘弁してほしいなぁ≫[vp]

そう呟いて、俺は下に降りようと立ち上がり、部屋を出る。[vp]

[bg2 storage="living.png" time="1000" ] 

#美寿花
「あれ、どこ行くの？」[vp]
;美寿花の立ち絵をセリフの後に表示
[backlay]
[chara_part name="mizuka" brow="n" mouth="niko" wait="false" time="0"]
[if exp="tf.is_skip != true"]
    [chara_show name="mizuka" top="20" left="600" time="0" wait="false" page="back" ]
    [trans layer="0" time="800" method="fadeInRight" ]
    [wait time="1000"]
[else]
    [chara_show name="mizuka" top="20" left="600" time="10" wait="true" ]
[endif]

美寿花がリビングまで俺を追いかけてくる。[vp]

#雪翔
≪喉乾いたから飲み物‥‥ってあー‥‥≫[vp]

少し迷った結果、冷蔵庫を指さす。[vp]

[mizuka e="n" m="yoko" b="n"]
#美寿花
「‥‥冷蔵庫？　えーっと‥‥お腹すいた？　何か作ろうか？」[vp]

やっぱり、触れてないと伝わらないのか‥‥[vp]
改めて、喋れないことの不便さが浮き彫りになる。[vp]

[mizuka m="niko"]
#美寿花
「そういえばさ、君って学校どうしてるの？」[vp]

#雪翔
≪‥‥学校？≫[vp]

[mizuka m="mu" arm="kan"]
俺が首を傾げると、美寿花も『あれ？』と同じことをする。[vp]

[mizuka b="ken"]
#美寿花
「大学だよ大学。声が出ないんじゃ、色々と大変じゃないかな～って」[vp]

あ、そういうことか。[vp]
美寿花の言わんとしていることを察し、答えようとする‥‥が[vp]

#雪翔
≪‥‥えーと‥‥≫[vp]

どうやって伝えようか‥‥[vp]
何かに書いて、と思ったが、取りに行くのもなんだか面倒くさい。[vp]

[mizuka b="saga" arm="none" m="yoko"]
#美寿花
「‥‥いや、変な意地張らずに素直においでよ。私も相手の声聞けた方が話しやすいし」[vp]

#雪翔
≪そ、れはそうかもしれないけど‥‥≫[vp]

[mizuka m="niko"]
‥‥‥‥‥[vp]

[better_wait time="1000"]
数秒間の葛藤の末、結局美寿花に頼ることにする。
[if exp="tf.is_skip != true"]
    [anim name="mizuka" time="800" left="360" effect="easeInOutQuad" ]
    [wait time="1000"]
[else]
    [anim name="mizuka" time="10" left="480" ]
    [wait time="10"]
[endif]
[vp]

#雪翔
≪‥‥学校、ずっと行ってないんだ≫[vp]

;ボイス更新予定
#美寿花
「‥‥ずっと？」[vp]

#雪翔
≪ああ、ずっと≫[vp]

[mizuka e="toji"]
#美寿花
「‥‥」[vp]

[better_wait time="1000"]
[mizuka e="jito" m="hawa" b="koma"]
#美寿花
「ニート、[better_wait time="400"]ってこと‥‥？」[vp]

#雪翔
≪その通りだけどその表現は止めてくれるかな！？≫[vp]
;テキストボックスを揺らす演出？

[mizuka e="biku" m="chi" b="aga"]
#美寿花
「ああごめんごめん」[vp]

[mizuka e="kana" b="koma"]
#美寿花
「‥‥でもそっか。学校行けてないのか‥‥」[vp]

そこまで言って、[mizuka e="kira" m="chi" b="n" time="200"]あ、[better_wait time="300"]と何か閃いたように目が輝きだす。[vp]

同時に、そこはかとなく嫌な予感。[vp]

[mizuka m="wara" e="x" b="shaki"] 
;やりすぎか？
[kanim keyframe="unun" name="mizuka" time="800" ]
#美寿花
「じゃあ、一緒に学校行こうよ！」[vp]

まぁそうなるよな‥‥と肩をすくめる。[vp]

#雪翔
≪‥‥なんて言ったらいいか分からないけど‥‥今更学校に行ったって仕方ないだろ≫[vp]

#雪翔
≪それにめんどくさいし≫[vp]

[mizuka arm="kan" e="none" m="chi" ]
#美寿花
「それはどうかな？　多分、雪翔君の目標の一歩にはなると思うよ？」[vp]

#雪翔
≪‥‥というと？≫[vp]

[mizuka e="toji" m="toji"]
#美寿花
「考えたんだけどさ」[vp]

[mizuka arm="none" e="none" m="chi" b="n"]
#美寿花
「雪翔君が声を出せないのって『喋る必要性がない生活』のせいなんじゃないかな～って」[vp]

#雪翔
≪‥‥‥‥≫[vp]

心当たりは、ないことはない。[vp]
実際、美寿花が来るまでは人に会うとしても父さんぐらい。[vp]
しかも、頻度は3日に一度ぐらいなわけで‥‥[vp]

#美寿花
「前までは、人に何か伝えることが大変だったかもしれないけど‥‥今は私っていう『声』もいる」[vp]

[mizuka b="shin" m="niko"]
#美寿花
「めんどくさいのは分かるけど‥‥一度だけでも行ってみない？」[vp]

#雪翔
≪って言われてもなぁ‥‥≫[vp]

[mizuka b="n"]
#美寿花
「まぁ、考えといてよ。といっても、学校明日からだけどね」[vp]

そう言って苦笑を浮かべる美寿花だが、ふと時計を確認すると、[vp]

[mizuka arm="te" e="biku" m="biku"]
#美寿花
「‥‥ってもうこんな時間！？　作業ちょっとだけ見たら買い物しようと思ってたのに‥‥」[vp]

外を見ると、もう空は橙色に染まっている。[vp]

#雪翔
≪別に、家に残ってるので適当に作れば‥‥≫[vp]

[mizuka b="fuman" e="none" arm="none" m="toji"]
そう言い終わる前に、スマホに何やら打ち込んでいく美寿花。[vp]

[mizuka m="chi"]
#美寿花
「待ってて！　ちょっと色々買ってくるから！」[vp]
[anim name="mizuka" time="600" left="+=800" opacity="0" effect="easeInBack"]
‥‥行ってしまった。[vp]
[chara_hide name="mizuka" time="0" ]
#雪翔
≪‥‥‥‥≫[vp]

‥‥作業、戻るか。[vp]
ここで待っていても仕方ないので、自分の部屋に戻る。[vp]

[bg2 storage="myroom.png"]
#雪翔
≪大学、か≫[vp]

行きたくないわけじゃない、が‥‥[vp]

美寿花は、俺の声が出ない原因が『喋る必要のない生活』にある。と言った。[vp]
確かにその通りだ。誰にも会わず、同じことの繰り返しでしかない日々を送れば、声なんて必要なくなる。[vp]
でも‥‥それでいいと、そう望んだのは俺で。[vp]

美寿花は今、そんな俺の望んだ生活を変えようとしている。[vp]
‥‥なら、この胸のざわつきはその反発なのだろうか。[vp]
分からない。[vp]
それを想像することすらできないほど、繰り返しの日々に慣れてしまっていたらしい。[vp]
だけど‥‥[vp]

#雪翔
≪‥‥‥‥≫[vp]

再び動き出した日々を前に、俺は悪い気はしなかった。[vp]

#ロズ
「随分楽しそうやね。マスター」[vp]

#雪翔
≪っ！？≫[vp]

スマホから聞こえる、関西弁の女の子の声。[vp]

[roz e="jito" b="oko" m="puku"]
#雪翔
≪‥‥ロズか≫[vp]

まぁ、勿論ラズもいるんだろうが。[vp]
‥‥というか、[vp]

#ロズ
「む～‥‥」[vp]

ちょっと怒って‥‥ますね。はい。[vp]
昨日、ミュート状態のまま放置したのは俺なのだから、自業自得なのだが‥‥[vp]

#雪翔
≪‥‥ほんとに、悪いと思ってます≫[vp]

スマホでそう文字を打ち込み、謝罪の念を伝える。[vp]

[roz e="n" b="koma" m="mu"]
#ロズ
「まぁ、それに関してはもうええんやけどさ‥‥」[vp]

#雪翔
≪ラズにも伝えといてくれ。お前らを怒らせるのが一番怖い≫[vp]

#ロズ
「はいは～い」[chara_hide name="roz"][vp]

ちょっと不満げだが、それ以降は声が聞こえなくなる。[vp]
そういえばあいつら、なんで美寿花の前に出てこないんだ‥‥？[vp]

;画面暗転
[bg2 storage="makkuro.jpg" time="1000" ]
#ラズ
「ふむ‥‥ご主人様を大学に？」[vp]

#ロズ
「せや。まだマスターは決めてないけど‥‥まぁ、多分時間の問題やろな」[vp]

#ラズ
「よろしいのではないですか？　むしろ良い方向に転がっているように見えますが‥‥」[vp]

#ロズ
「いや、それだけやなくてな‥‥」[vp]

#ラズ
「何です？」[vp]

#ロズ
「マスター、デレデレしとった」[vp]

#ラズ
「‥‥なるほど」[vp]

#ラズ
「少々、見極める必要がありますわね。常葉、美寿花‥‥」[vp]

[EC sc="b_2.ks"]
