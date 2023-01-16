*start
;rタグ整理、？と！の後のスペース追加、名前表示残留修正済み（つぶ）
/*
[startoption]
[chara_show name="mizuka" top="20" face="odoroki_3" time="0"]
[bg storage="living.png" time="0"]



;[afterjumpmaskNormal]

[playbgm storage="Yurari_kurari.mp3" volume="40" ]

#雪翔
（…誰だ…？この時間に…）[np]

そもそも、この家に来客が来ること自体滅多にない。[np]
家にいるのはいつも俺だけだったし…[np]

#雪翔
≪‥‥‥≫[np]

;チャイム鳴らす
[playse_chaimu]

もう一度、チャイムが鳴る。[np]

[voice1 vf1="mizuka/mizuka5-2_1.ogg"]
#美寿花:shinpai
「で、出ようか…？」[np]
;表情 shinapi



ちょっと俺の様子を伺いながらではあるが、美寿花が声をかけてくれた。[np]

#雪翔
≪…いや、大丈夫。…ラズ、頼めるか？≫[np]

[chara_show name="RozLaz" top="200" width="523" height="552.51" face="laz_normal" wait="true" pos_mode="true"]
俺は首を横に振ってから、スマホでラズを呼びだす。[np]

[voice2 vf2="laz/laz5-2_1.ogg"]
[chara_mod name="RozLaz" face="laz_normal"]
#ラズ
「…よろしいのですか？」[np]
;表情 normal_2



#雪翔
≪…一応、美寿花の父親って可能性もあるが…少しでも怪しかったら切っていい≫[np]

[chara_mod name="RozLaz" face="laz_bow"]
[voice2 vf2="laz/laz5-2_2.ogg"]
#ラズ
「承知いたしました。では…」[np]
;表情 ozigi

[voice2 vf2="kouki/kouki5-2_1.ogg"]
#黄樹
「いや、僕が出るよ」[np]
;セリフの後に立ち絵フェードイン



[chara_hide name="RozLaz" time="500"]
[chara_show name="kouki" face="straight" top="-50" time="1000"]




#雪翔
≪…え…？≫[np]

背後から聞こえた予想外の声。[np]

#雪翔
≪…父さん…≫[np]

さっきまで寝室で聞いていた声の本人が、そこにいた。[np]

[voice2 vf2="kouki/kouki5-2_2.ogg"]
#黄樹:normal
「偶然休みが取れてね。状況が状況だし、部屋から出てくるつもりはなかったんだけど…」[np]
;表情 normal



言いながら、父さんが俺と美寿花を交互に見る。[np]

[voice2 vf2="mizuka/mizuka5-2_2.ogg"]
#美寿花:straight
「…すいません。ご迷惑をおかけしてしまって」[np]
;表情 straight

[voice2 vf2="kouki/kouki5-2_3.ogg"]
#黄樹:shinpai
「…いいんだよ。元々僕がまいた種だ。この状況も…」[np]
;表情 shinpai

[voice2 vf2="kouki/kouki5-2_4.ogg"]
#黄樹:shinpai
「もしかしたら、この来客も…だな」[np]
;表情 shinapi



#雪翔
≪え…？≫[np]

[chara_hide name="kouki" time="500"]

言い終わると同時に、父さんは玄関へと消える。[np]

[voice2 vf2="mizuka/mizuka5-2_3.ogg"]
#美寿花:straight
「‥‥‥」[np]
;表情 straight



#雪翔
≪‥‥‥≫[np]

俺らの間に、微妙な空気感が流れる。[np]
…さっきまで謝ろうと思っていたのが嘘のように、言葉が出てこなかった。[np]

[voice2 vf2="mizuka/mizuka5-2_4.ogg"]
#美寿花:straight
「‥‥‥‥‥‥」[np]
;表情 straight

#雪翔
≪‥‥‥‥‥‥≫[np]

[voice2 vf2="eijurou/eijurou5-2_1.ogg"]
#???
「すまないね………いきなり……しまって」[np]
[chara_mod name="mizuka" face="odoroki_3" cross="false" ]



客人と話しているのだろう。[np]
微かに話し声が聞こえ、俺は思わず聞き耳を立てる。[np]

[voice2 vf2="kouki/kouki5-2_5.ogg"]
#黄樹
「いえいえ、それよりどうしたんです？　貴方のような人が何故こんな所まで…」[np]
;表情 なし

[voice2 vf2="eijurou/eijurou5-2_2.ogg"]
#永寿郎
「いや何、私の娘が君や君の家族に随分迷惑かけてしまったからね」[np]



#雪翔
≪ッ！？≫[np]

[voice2 vf2="kouki/kouki5-2_6.ogg"]
#黄樹
「あ～…いえ、そんなことは…」[np]
;表情 なし

[voice2 vf2="eijurou/eijurou5-2_3.ogg"]
#永寿郎
「今日は謝罪と、娘を連れて帰るつもりで来たんだ」[np]



今、父さんと話しているのは…EL社の社長であり、美寿花の父親…常葉永寿郎だ。[np]

#雪翔
≪…どうする…≫[np]

美寿花に伝えるべきか？[np]
いや…でも…[np]

#雪翔
（…どうやって？）[np]

決まってる。美寿花に触れて、今の状況を伝える。[np]
それだけで、済む話なんだ。[np]

[chara_hide_all time="500" wait="false"]
[bg storage="makkuro.jpg" time="500"]

*/

#雪翔
≪お前は…美寿花じゃ…ないっ…！！！≫[np]

[bg storage="makkuro.jpg" time="500"]

#雪翔
≪──ッ≫[np]

嫌な記憶が、蘇る。[np]
美寿花に伝わるのは、多分俺の中で声にしたいと強く願った言葉だ。[np]
…もし、また美寿花にあの感情が伝わってしまったら？[np]
俺は…触れるだけで彼女を傷つけてしまうんじゃないか…？[np]

[voice2 vf2="mizuka/mizuka5-2_5.ogg"]
#美寿花:shinpai
「…雪翔君…？」[np]
;表情 shinpai




[bg storage="living.png" time="500" wait="false"]
[chara_show name="mizuka" top="20" face="shinpai" time="500"]

無意識に見つめてしまっていたからか、美寿花は心配げな声で俺を呼ぶ。[np]
…ダメだ。[np]
…俺には…できない。[np]

[voice2 vf2="eijurou/eijurou5-2_4.ogg"]
#永寿郎
「…すまないが、上がってもいいかね？　あの子と話がしたいんだ」[np]




[voice2 vf2="kouki/kouki5-2_7.ogg"]
#黄樹
「……分かりました」[np]
;表情　なし



[chara_show name="kouki" face="straight" top="-50" time="1000"]

そんな声が聞こえた。[np]
もう、どうしようもなかった。[np]
止めようと思えば止められたのに、俺は…[np]

[voice2 vf2="mizuka/mizuka5-2_6.ogg"]
#美寿花
「…お父…さん…？」[np]
;表情
;[backlay layer="0"]
;[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" folder="bgimage" storage="makkuro.jpg"]
;[trans layer="0" time="500" method="fadeIn"]
;[wt]
;[bg storage="makkuro.jpg" time="0" wait="false"]
[chara_hide_all time="2000" wait="true"]
;[bg storage="living.png" time="0"]
;[freeimage layer="0" time="500" wait="true"]

;修正前 暗転をなくす

;修正前 永寿郎の立ち絵表示

;[chara_show name="eijyurou" time="2000" top="20"]
[voice2 vf2="eijurou/eijurou5-2_5.ogg"]
#永寿郎
「久しぶりだね。美寿花」[np]



させてはならない再会が今、果たされてしまった。[np]

[voice2 vf2="eijurou/eijurou5-2_6.ogg"]
#永寿郎
「隣にいるのは…薄谷雪翔君、かな」[np]



すっと、男…常葉永寿郎の意識が俺の方を向く。[np]
鋭い視線で貫かれ、俺は何を言われるのかと身構えてしまったが…[np]

[voice2 vf2="eijurou/eijurou5-2_7.ogg"]
#永寿郎
「本当にすまなかった。うちの美寿花が迷惑かけて」[np]



#雪翔
≪…へ？≫[np]

[voice2 vf2="eijurou/eijurou5-2_8.ogg"]
#永寿郎
「君には君の事情があるというのに、部外者が安易に立ち入ってしまった。この子は私が責任を持って家に連れて帰るよ」[np]



#雪翔
≪‥‥えーと‥≫[np]

[voice2 vf2="eijurou/eijurou5-2_9.ogg"]
#永寿郎
「君の事は薄谷教授から聞いているよ。何でも声を失ってしまったとか。[r]今まで大変だっただろう？」[np]



にこやかに話しかけられて、動揺してしまう。[np]
俺のイメージでは、もっと暴君のような性格なのだと思っていたのだが…[np]

[voice2 vf2="kouki/kouki5-2_8.ogg"]
#黄樹:shinpai
「大変なのは貴方も同じでしょう？　あんな大きな会社の社長なんですから」[np]
;表情 shinpai



どうしようか悩んでいると、父さんが助け船を出してくれた。[np]

[voice2 vf2="eijurou/eijurou5-2_10.ogg"]
#永寿郎
「いやいや、私は自分のするべき事をしただけだよ。確かに大変だが、その分やりがいも感じられる」[np]



[voice2 vf2="eijurou/eijurou5-2_11.ogg"]
#永寿郎
「どうだい？　また私と働くというのは…」[np]



[voice2 vf2="kouki/kouki5-2_9.ogg"]
#黄樹:kushou
「ありがたいお誘いですが、遠慮しておきます。私も今の仕事にやりがいを感じているので」[np]
;表情 kushou

[voice2 vf2="eijurou/eijurou5-2_12.ogg"]
#永寿郎
「そ、そうか…」[np]



そこまで言って、俺に視線を戻す。[np]
;修正前 黄樹さんout

[chara_hide name="kouki" time="1000"]

[voice2 vf2="eijurou/eijurou5-2_13.ogg"]
#永寿郎
「…それにしても、まさか美寿花と『同い年』とは…ね。これからも仲良くしてくれたら嬉しいよ」[np]



#雪翔
≪……いや…≫[np]

違う。[np]
この人の笑顔は…美寿花と違う。確かに顔は笑っているが…[np]
目は、全く笑っていない。[np]
それに、今の発言…[np]

#雪翔
≪…俺の反応を…伺っているのか？≫[np]

どこまで知っているのか、と。[np]
…それなら、下手に過剰反応するのはやめたほうがいいな…[np]
最悪なのは、このまま美寿花と二度と会えなくなること。[np]
俺があの事故の裏を知っていると分かれば、警戒されてしまう。[np]

[voice2 vf2="eijurou/eijurou5-2_14.ogg"]
#永寿郎
「さて、時間も時間だし、そろそろ私たちは…」[np]



[voice2 vf2="roz/roz5-2_1.ogg"]
「ちょい聞きたいんやけどさ」[np]
;名前、立ち絵表示無し

[voice2 vf2="eijurou/eijurou5-2_15.ogg"]
#永寿郎
「ん？」[np]



[voice2 vf2="mizuka/mizuka5-2_7.ogg"]
#美寿花
「え…」[np]
;表情

スマホからの声に、周囲の空気が凍る。[np]

[chara_show name="RozLaz" top="10" left="200" width="753.12" height="795.614" face="roz_okori_2" wait="true" pos_mode="true" zindex="10"]

[voice2 vf2="roz/roz5-2_2.ogg"]
#ロズ
「それ、ほんまに親のやることなん？」[np]
;表情 okori_2



しまった…放っておいたらやばい奴らがまだいた…[np]

[chara_mod name="RozLaz" face="laz_okori" cross="false"]
[voice2 vf2="laz/laz5-2_3.ogg"]
#ラズ
「…はぁ…貴方は少し様子を見るということが出来ないんですの？」[np]
;表情 okori

[chara_mod name="RozLaz" face="roz_fuman_2" cross="false"]
[voice2 vf2="roz/roz5-2_3.ogg"]
#ロズ
「別にええやん！　さっき呼ばれたんラズだけやったし、次ウチに喋らせてーな」[np]
;表情 fuman_2

[voice2 vf2="eijurou/eijurou5-2_16.ogg"]
#永寿郎
「おや…これはうちのAIかな？　しかも2体も…こんなところでも使われているとは、嬉しいね」[np]

[voice2 vf2="eijurou/eijurou5-2_17.ogg"]
#永寿郎
「それで…どういう事かな？」[np]

[chara_mod name="RozLaz" face="roz_fuman" cross="false"]
[voice2 vf2="roz/roz5-2_4.ogg"]
#ロズ
「そのまんまの意味や。さっきから口を開けばうちの美寿花、うちの美寿花って…」[np]
;表情 fuman

[chara_mod name="RozLaz" face="roz_okori_3" cross="false"]
[voice2 vf2="roz/roz5-2_5.ogg"]
#ロズ
「別に美寿花はあんたのもんとちゃうやろ。勝手に所有物にせんといてや」[np]
;表情 okori_3



;修正前 優先度中 暗転or4-3文永のフラッシュバック
──私が雪翔さんに話したと知られれば…もう、お姉ちゃんを貴方に会わせる事はないでしょうね…[np]
──記憶を消して…また、『作り直す』…そういう人なんです。あの父親は[np]

#雪翔
≪…ッ≫[np]

そうだ…馬鹿か俺は！[np]
ロズの言葉に、文永の悲痛な声が蘇る。[np]
警戒云々以前に、相手は美寿花の記憶を消すことすらできてしまうんだ。[np]
なら、ここで連れて帰られたら最後、もう会う事は出来なくなる…！[np]

[voice2 vf2="eijurou/eijurou5-2_18.ogg"]
#永寿郎
「ちょ、ちょっと被害妄想が過ぎないかい？　私はそんな…」[np]



[chara_mod name="RozLaz" face="laz_utagai" cross="false" ]
[voice2 vf2="laz/laz5-2_4.ogg"]
#ラズ
「…なら、どうしてそう美寿花を執拗に自分の元に置こうとするのでしょうか？　それも本人の意見も聞かずに」[np]

;表情 utagai

[voice2 vf2="eijurou/eijurou5-2_19.ogg"]
#永寿郎
「ハッ…文永の話だと、雪翔君とはあまり上手くいってないらしいじゃないか。…そうなんだろう？　美寿花」[np]

[chara_show name="mizuka" face="fushime" top="20" zindex="0"]
[voice2 vf2="mizuka/mizuka5-2_8.ogg"]
#美寿花
「……そう、です…」[np]
;表情 uneasy


顔を俯かせ、怯えたような様子で答える美寿花を見て、永寿郎は勝ち誇ったように笑みを浮かべる。[np]

[voice2 vf2="eijurou/eijurou5-2_20.ogg"]
#永寿郎
「ほら、当の本人がこう言ってるんだ。何も問題はないだろう？」[np]




[chara_mod name="RozLaz" face="roz_ge"]
[voice2 vf2="roz/roz5-2_6.ogg"]
#ロズ
「ぐっ…」[np]
;表情

[chara_hide name="RozLaz"] 

実際、俺が混乱したがためにすれ違ったことは間違いはなく、これに関しては永寿郎が正しいように見える。[np]
…でも…それはあくまで『事実』であり、『意志』じゃない。[np]

[camera layer="base" x="0" y="0" zoom="1.25" time="2000" wait="false"]
[camera layer="0" x="0" y="0" zoom="1.25" time="2000" wait="true"]

#雪翔
≪…お前は…どうしたいんだよ…！美寿花…！！≫[np]


絞り出した声は、音にはならずに散っていく。[np]
俺には、美寿花を止めることは出来ない。[np]
でも、まだ…希望は、ある。[np]
要は、美寿花が鍵なのだ。[np]
美寿花が帰る事を拒めば…まだ…！！[np]



[voice2 vf2="mizuka/mizuka5-2_9.ogg"]
#美寿花
「…ごめんね、みんな」[np]
;表情



弱弱しく、美寿花は笑う。[np]
こんな時でも、君は胸が痛くなるほどに笑ってみせる。[np]

[voice2 vf2="mizuka/mizuka5-2_10.ogg"]
#美寿花:kushou_3
「…皆にいっぱい優しくしてもらったし、ちゃんと自分のことを知れた。[r]
…それだけで、私はもう十分。…だから…」[np]

[fadeoutbgm time="1000"]

[voice2 vf2="mizuka/mizuka5-2_11.ogg"]
#美寿花:jichou
「…帰るよ。お父さんと」[np]
;表情


;ここから５－３のシナオ

…希望は、あっという間に崩れ去った。[np]
いとも簡単に、消えてなくなった。[np]


[voice2 vf2="mizuka/mizuka5-3_1.ogg"]
#美寿花:shinpai
「…雪翔君」[np]


美寿花が、俺に一歩近づく。[np]

;一枚絵 真剣な顔
;CG美寿花アップ



[playbgm storage="nc162068.mp3" volume="65"]

;仮のCG
[backlay layer="0"]
[image name="1"  layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/5-3/katari.png"]
[trans layer="0" time="2000" method="fadeIn"]
[wt]
[voice2 vf2="mizuka/mizuka5-3_2.ogg"]
#美寿花
「…こんな形で、お別れになると思ってなかったけど…私は、君に出会えて…本当に良かったと思ってる」[np]



また、一歩。[np]
[backlay layer="0"]
[image name="2" layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/5-3/teinen.png"]
[trans layer="0" time="1500" method="fadeIn"]
[wt]
[voice2 vf2="mizuka/mizuka5-3_3.ogg"]
#美寿花
「私と出会ってくれて、ありがとう」[np]



また、一歩。[np]

[backlay layer="0"]
[image name="3" layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/5-3/sabishi.png"]
[trans layer="0" time="1500" method="fadeIn"]
[wt]
[voice2 vf2="mizuka/mizuka5-3_4.ogg"]
#美寿花
「私と話をしてくれて、ありがとう」[np]



そして…[np]
[backlay layer="0"]
[image name="4" layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/5-3/egao.png"]
[trans layer="0" time="1500" method="fadeIn"]
[wt]
[voice2 vf2="mizuka/mizuka5-3_5.ogg"]
#美寿花
「…『また』私と仲良くなってくれて…本当に、ありがとう」[np]
;一枚絵 寂しげな笑顔



#雪翔
≪………っ≫[np]

すぐ目の前に、君がいる。[np]
手を伸ばせば、触れられる距離に。[np]

[backlay layer="0"]
[image name="5" layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/5-3/komari.png"]
[trans layer="0" time="1500" method="fadeIn"]
[wt]
[chara_hide_all time="0"]
[voice2 vf2="mizuka/mizuka5-3_6.ogg"]
#美寿花
「…少年君は、泣き虫だね」[np]
;差分 寂しげな笑顔2



#雪翔
≪…え？≫[np]

気づけば、視界がぼやけていた。[np]
…自分が泣いているなんて、思いもしなかった。[np]

[backlay layer="0"]
[image name="6" layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/5-3/odayaka.png"]
[trans layer="0" time="1500" method="fadeIn"]
[wt]
[voice2 vf2="mizuka/mizuka5-3_7.ogg"]
#美寿花
「…ねぇ、私が来た日の事…覚えてる？」[np]



#雪翔
≪‥‥‥‥≫[np]

泣いてると自覚した瞬間、一層涙が溢れそうになる。[np]
でも、今だけは…泣くより、美寿花と話がしたかった。[np]

[backlay layer="0"]
[image name="7" layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/5-3/katari.png"]
[trans layer="0" time="1500" method="fadeIn"]
[wt]
[voice2 vf2="mizuka/mizuka5-3_8.ogg"]
#美寿花
「…君はあの日、自分で作った歌を自分で歌ってみたいって…夢を、私に教えてくれた」[np]
;一枚絵 真剣な顔


[backlay layer="0"]
[image name="8" layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/5-3/teinen.png"]
[trans layer="0" time="1500" method="fadeIn"]
[wt]
[voice2 vf2="mizuka/mizuka5-3_9.ogg"]
#美寿花
「ちょっとだけ、欲を言っちゃうんだけど…」[np]
;一枚絵 真剣な顔


[backlay layer="0"]
[image name="9" layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/5-3/naki.png"]
[trans layer="0" time="1500" method="fadeIn"]
[wt]
[voice2 vf2="mizuka/mizuka5-3_10.ogg"]
#美寿花
「…一番最初に、君の隣でそれを…聴きたかった…な…」[np]
;差分 涙がにじんだ笑顔



#雪翔
≪‥‥‥≫[np]

…泣いていたのは、俺だけではなかった。[np]
別れを告げるはずの美寿花の声が…震えている。[np]

[backlay layer="0"]
[image name="10" layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/5-3/komari_n.png"]
[trans layer="0" time="1500" method="fadeIn"]
[wt]
[voice2 vf2="mizuka/mizuka5-3_11.ogg"]
#美寿花
「…あれ…おかしいな…」[np]
;差分 泣き顔



いつも笑っていた美寿花が見せた…初めての、涙。[np]
それでも、彼女は無理やり笑う。[np]

[backlay layer="0"]
[image name="11" layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/5-3/hohoemi_n.png"]
[trans layer="0" time="1500" method="fadeIn"]
[wt]
[voice2 vf2="mizuka/mizuka5-3_12.ogg"]
#美寿花
「…こんな別れになっちゃって…ごめんね」[np]
;差分 涙がにじんだ笑顔


[backlay layer="0"]
[image name="12" layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/5-3/nakiwarai.png"]
[trans layer="0" time="1500" method="fadeIn"]
[wt]
[voice2 vf2="mizuka/mizuka5-3_13.ogg"]
#美寿花
「…さよなら」[np]
;差分 泣き笑顔



背を向けて、永寿郎の元に戻っていく美寿花。[np]
;CG フェード
;背景 リビング

;[camera layer="base" x="0" y="0" zoom="1.00" time="3000" wait="false"]
[reset_camera layer="base" wait="3000" wait="false"]
[bg storage="living.png" time="0"]
[free name="1" layer="0" time="0" wait="false"]
[free name="2" layer="0" time="0" wait="false"]
[free name="3" layer="0" time="0" wait="false"]
[free name="4" layer="0" time="0" wait="false"]
[free name="5" layer="0" time="0" wait="false"]
[free name="6" layer="0" time="0" wait="false"]
[free name="7" layer="0" time="0" wait="false"]
[free name="8" layer="0" time="0" wait="false"]
[free name="9" layer="0" time="0" wait="false"]
[free name="10" layer="0" time="0" wait="false"]
[free name="11" layer="0" time="0" wait="false"]
[free name="12" layer="0" time="2000" wait="true"]

‥‥‥‥[np]
…何やってるんだよ。俺は。[np]
追いかけて、止めるべきだ。無駄だと分かっていても、それでも…[np]
…それでも、俺は立ち尽くしていた。[np]
完全に、あの時と同じだ。[np]
目の前の状況に、思考が停止し、[np]
理解を拒み…[np]
唯一違うとすれば…[np]
…ただ『言葉』を紡ぐことすら…できなかった。[np]

[voice2 vf2="eijurou/eijurou5-3_1.ogg"]
#永寿郎
「…もういいな？美寿花」[np]

[voice2 vf2="mizuka/mizuka5-3_14.ogg"]
#美寿花
「…はい」[np]
;表情


やめてくれ…[np]

[chara_show name="RozLaz" top="100" width="523" height="552.51" face="roz_komari" wait="true" pos_mode="true"]
[voice2 vf2="roz/roz5-3_1.ogg"]
#ロズ
「美寿花…」[np]

;表情表情 悲しい
;画面右（下？）に立ち絵表示

[chara_mod name="RozLaz" face="laz_zannen" cross="false"]
[voice2 vf2="laz/laz5-3_1.ogg"]
#ラズ
「…駄目、でしたか」[np]
;表情表情 悲しい
;画面右（下？）に立ち絵表示


[chara_hide_all time="1000"]
;[camera layer="0" x="0" y="0" zoom="1.00" time="0" wait="false"]
[reset_camera layer="0" wait="false" time="0"]

止めてくれ…[np]

[voice2 vf2="eijurou/eijurou5-3_2.ogg"]
#永寿郎
「それでは、改めて…」[np]

[fadeoutbgm time="1000" ]
[voice2 vf2="eijurou/eijurou5-3_3.ogg"]
#永寿郎
「私の娘が、お世話になりました」[np]



…誰か…ッ…！！[np]

@jump storage="5n3.ks"

[s]
