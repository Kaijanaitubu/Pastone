*start
;rタグ整理、？と！の後のスペース追加、名前表示残留修正済み（つぶ）

[startoption]

;↓暗転中に画像など準備
[bg storage="classroom.png" time="10"]

[chara_show name="mizuka" top="20" storage="chara/mizuka/kyoton.png" time="10" wait="true"]
;背景 空き教室

[afterjumpmaskNormal]

;[jump target="*debug"]

[voice1 vf1="mizuka/mizuka2-4_1.ogg"]
#美寿花
「さてさて、準備もできたことだし…あ、手洗ったよね？」[np]
;表情　きょとん

[playbgm storage="Bonyari_Hitsuji.mp3" volume="55" ]

#雪翔
≪ちゃんと洗ってるよ。子供じゃないんだ≫[np]


俺が不機嫌そうに頷くのとは対照的に、隣に座る美寿花は満足げに笑う。[np]
…4限が終わり、俺らは空き教室に移動して彼女が作ってくれた弁当を広げていた。[np]

[voice2 vf2="mizuka/mizuka2-4_2.ogg"]
#美寿花:yaruki_2
「それじゃ、雪翔君！」[np]
;表情 yaruki_2


#雪翔
≪…へ？何？≫[np]

[voice2 vf2="mizuka/mizuka2-4_3.ogg"]
#美寿花:akire
「いや、きょとんじゃなくて、あるでしょ？食べる前にする挨拶」[np]
;表情 不満


#雪翔
≪あ、ああ…≫[np]

遅れて気づき、手を合わせる。[np]

#雪翔
≪じゃあ…いただきます≫[np]

[voice2 vf2="mizuka/mizuka2-4_4.ogg"]
#美寿花:egao
「どうぞどうぞ！」[np]
;表情 egao


早速、弁当の蓋を開ける。[np]

#雪翔
≪…うわ、すご…≫[np]

中に入っていたのは、色とりどりの料理の数々。[np]
俺自身が小食なのも考慮しているのか、量はそこまで多くないが…
それでも、十分すぎるくらいの内容だった。[np]
#雪翔
（…弁当なんて、いつぶりだろう…）[np]
高校に行くことがほとんどなかったから…中学の遠足の時ぐらいだろうか？[np]
あの時は母さんが作ってくれ、て…[np]
#雪翔
（‥‥‥）[np]
…ああ、だめだな。俺。[np]
母さんのことを思い出すと、どうしても事故のことも一緒に出てきてしまう。[np]

[voice2 vf2="mizuka/mizuka2-4_5.ogg"]
#美寿花:kyoton
「…雪翔君？食べないの？」[np]
;表情 kyoton
;表情　辻　shinpai_2


#雪翔
≪え？≫[np]

気づけば、美寿花が俺の顔をじっと見ていた。[np]
…どうやら、不自然に固まっていたらしい。[np]

#雪翔
≪…ああいや、食べるよ≫[np]

そう言って、おかずを口にする。[np]

[voice2 vf2="mizuka/mizuka2-4_6.ogg"]
#美寿花:shinpai
「…どうかな。味見したから大丈夫なはずだけど…」[np]
;表情 shinpai


#雪翔
≪…うん。そんな心配しなくてもめっちゃうまい。逆にどのあたりが不安なのかわからんぐらい≫[np]

[voice2 vf2="mizuka/mizuka2-4_7.ogg"]
#美寿花:egao_2
「おお、めっちゃ頷いてる…よかったぁ…あ、私も食べるね！」[np]
;表情 egao_2


そう言いながら、自分の弁当を開ける。[np]
…今気づいたが…[np]
#雪翔
（…俺、今女子の手料理食ってるんだよな…）[np]
少し前の自分なら、考えられないような状況。[np]
でも、それになんの抵抗もなく…いや、むしろ安らぎすら感じている自分もいることに…少し、笑ってしまった。[np]

[fadeoutbgm time="2000"]
[mask time="1300" effect="slideInLeft"]
[bg storage="classroom_cloud.png" time="10"]
[chara_mod name="mizuka" face="onemu" time="10" ]
;[wait time="20" ]
[mask_off effect="slideOutRight" time="1300"]
;[wait time="100" ]

;修正後 暗転
;背景 空き教室
;問題　背景が曇っていない問題

;修正後 美寿花の表情を喋っていない間にも徐々に変えていきたい 151行でonemuにしてみた

[playbgm storage="rain.mp3" volume="90"]

[voice2 vf2="laz/laz2-4_1.ogg"]
#ラズ
「お食事中、申し訳ないのですが…」[np]
;立ち絵なし



少し時間が経過し、完食までのこりわずかとなった時。[np]
ふと、ラズの声が空き教室に響いた。[np]

#雪翔
≪どうした？≫[np]

そう文字を打つと、ラズは少し困った様子で話を続ける。[np]

[chara_show name="RozLaz" top="200" width="523" height="552.51" face="laz_shinpai" wait="true"]

[voice2 vf2="laz/laz2-4_2.ogg"]
#ラズ
「その、雨が降り出してまして…」[np]
;表情 shinpai
;修正済み　テキスト変わってるから、あとでやる



#雪翔
≪…あ、本当だ≫[np]

;[chara_mod name="mizuka" face="onemu"]

窓を見ると、空は雲に覆われており、確かに雨が降ってきているのが分かる。[np]

[chara_mod name="RozLaz" face="roz_komari"]
[voice2 vf2="roz/roz2-4_1.ogg"]
#ロズ
「天気予報では今日は晴れやって言っとったんやけどな…」[np]
;表情　困り

[chara_mod name="RozLaz" face="roz_shinpai"]
[voice2 vf2="roz/roz2-4_2.ogg"]
#ロズ
「マスター、傘とか持ってきたりは…」[np]
;表情　shinpai


#雪翔
≪…してない…≫[np]

もし、帰る時までに止まなかったらちょっと大変だな…[np]

[chara_mod name="RozLaz" face="laz_shinpai_2"]
[voice2 vf2="laz/laz2-4_3.ogg"]
#ラズ
「いかがなさいますか？黄樹様に連絡いたしましょうか？」[np]
;表情　shinpai_2


#雪翔
≪父さんかぁ…あんまり期待できないなぁ…≫[np]

研究やらなんやらで忙しいだろうし、電話してもそもそも出ないだろう。[np]

#雪翔
≪…分かった。傘は何とかするから≫[np]

…あ、そうだ。[np]
そこで一つ、思いつく。[np]

#雪翔
≪…美寿花って、傘持ってたりするのか？≫[np]

そう聞こうと思って、彼女の方を見る。[np]

[voice2 vf2="mizuka/mizuka2-4_8.ogg"]
#美寿花:onemu
「‥‥‥」[np]
;表情 おねむ

;*debug

[fadeoutbgm time="2000"]

#雪翔
≪…美寿花？≫[np]

[playbgm storage="mizuka.ogg" volume="40" ]

;修正後（担当辻）ロズラズの立ち絵を消して、美寿花だけをアップにする（背景も拡大）
[is_skip]
[if exp="tf.is_skip !== true"]
    [chara_hide name="RozLaz" time="500" wait="true"]
    [camera layer="base" x="0" y="0" zoom="1.25" time="3000" wait="false"]
    [camera layer="0" x="0" y="0" zoom="1.25" time="3000" wait="true"]
[else]
    [chara_hide name="RozLaz" time="10" wait="true"]
    [camera layer="base" x="0" y="0" zoom="1.25" time="10" wait="true"]
    [camera layer="0" x="0" y="0" zoom="1.25" time="10" wait="true"]
[endif]

[voice2 vf2="mizuka/mizuka2-4_9.ogg"]
#美寿花:aseganizindaegao
「…ん？あ、傘の話…だよね？」[np]
;表情 （汗が滲んだ笑顔）


俺が見ていることに気づいたのか、慌てて返事を返すが…どこか、美寿花の顔色が悪いように見える。[np]
弁当を食べる前までは、普通だったはずだが…[np]

[voice2 vf2="mizuka/mizuka2-4_10.ogg"]
#美寿花:kushou
「いつも折り畳みの傘を持ち歩いてるから…二人ぐらいなら、入ると思う」[np]
;表情　kushou?


声もいつもと比べて気だるげな気もするが…気のせいか？[np]

#雪翔
≪…そうか、なら安心…≫[np]

;[chara_mod name="mizuka" face="tsukare"]

トンッ[np]

;[camera layer="0" x="0" y="50" zoom="1.5" time="3000"]

;修正前 美寿花の顔を更に拡大する
ふと、肩に重みがかかる。[np]
一瞬、また美寿花が手を置いたのかと思ったが…
それにしては、なんだか大きいし丸みがあるような…[np]

#雪翔
≪‥‥‥≫[np]

#雪翔
≪！？！？！？！？！？≫[np]

隣を見ようとして、すぐやめた。[np]
…普段の生活ならありえない距離に、美寿花の顔があったから。[np]

#雪翔
≪…あの…何で寄りかかって…≫[np]

[voice2 vf2="mizuka/mizuka2-4_11.ogg"]
#美寿花:tsukare
「ごめん…しばらく、こうさせて…ちょっと体がだるくて…」[np]
;表情 疲れた顔


いや、そう言われましても…さっきからすごい柑橘系のいい匂いが…じゃなくて！[np]
弁当を食べる前まで元気だったのに、どうしていきなり…[np]
そこまで考えて、ふと思い当たることがあった。[np]

#雪翔
≪…もしかして、雨…ダメなのか？≫[np]

今美寿花が俺に触れているのは手じゃなくて頭だが…多分通じるだろうと思い、聞いてみる。[np]

[voice2 vf2="mizuka/mizuka2-4_12.ogg"]
#美寿花:fushime
「…うん。雨が…というか、曇りの時も…だね、小さい頃からすぐこうなっちゃうんだ…」[np]
;表情 目を伏せた顔


#雪翔
≪そ、そうなのか…≫[np]

必死に平静を装いながら、俺は答える。[np]
所謂気象病というやつなのだろうが…こんなにも急に来るものなのか…[np]

#雪翔
≪…やっぱり、雨が止むまでずっとこのままなのか？≫[np]

[voice2 vf2="mizuka/mizuka2-4_13.ogg"]
#美寿花:neru
「‥‥‥すぅ…」[np]
;表情 寝てる顔


ん？[np]

#雪翔
≪…あの…美寿花？≫[np]

[voice2 vf2="mizuka/mizuka2-4_14.ogg"]
#美寿花:neru
「…すぅ…すぅ…」[np]
;表情 寝てる顔


#雪翔
≪…寝て…るのか…？≫[np]

え、どうするのが正解なんだこれ…[np]
とりあえず、このままじゃ寝苦しいだろうし…横にさせるべきか？[np]
いや、でもこんな硬い床で横になるのも何かあれだし…[np]
;背景 黒

#雪翔
≪‥‥‥≫[np]

…そして、様々な葛藤の末…[np]

;一枚絵 膝枕
;一枚絵

[chara_hide_all]
[chara_config pos_mode="false" ]

;[layopt layer="0" visible="true"]
;[image layer="0" x="0" y="0" width="1280" height="720" storage="singlepic/2_4/n.png" time="1000"]
[CG f="2_4_n"]

#雪翔
≪…どういう状況だよこれ…≫[np]


俺の膝の上で、すやすやと眠っている美寿花。[np]
…いや完全に膝枕だなこれ。[np]
さっきまでの異常な距離感に比べればまだマシだが…[np]

;[backlay layer="0"]
;[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/2_4/shikame.png"]
;[trans layer="0" time="500" method="fadeIn"]
;[wt]
[CG f="2_4_shikame"]

[voice2 vf2="mizuka/mizuka2-4_15.ogg"]
#美寿花
「…ん…」[np]
;一枚絵 差分 顔をしかめる


#雪翔
≪おっと…≫[np]

少し動いた美寿花を落とさないように、体勢を調整する。[np]

;[backlay layer="0"]
;[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/2_4/n.png"]
;[trans layer="0" time="1000" method="fadeIn"]
;[wt]
[CG f="2_4_n"]

[voice2 vf2="mizuka/mizuka2-4_16.ogg"]
#美寿花
「…すぅ…すぅ…」[np]
;表情 寝てる顔


;一枚絵

#雪翔
≪…よっぽど、疲れてたんだろうな…≫[np]

気持ちよさそうに寝ている彼女を見て、ふとそんなことを思う。[np]
突然こうなってしまったのは、勿論気象病のせいでもあるんだろうが…[np]
考えてみれば、突然生活する場所も、ともに過ごす人も、全てが変わったんだ。[np]
普段元気そうに振舞っていても、もしかしたら精神的に参ってしまっていたのかもしれない。[np]

#雪翔
≪‥‥‥≫[np]

…変わった…か。[np]
それは、俺も同じだ。[np]
美寿花が家に来て、本当に色々なことが変わった。[np]
作曲作業の時、ひとりじゃなくなった。[np]
大学に行くのを、手伝ってくれた。[np]
…そして、[np]
…俺と、会話してくれた。[np]

#雪翔
≪…ありがとな、美寿花≫[np]

;[backlay layer="0"]
;[trans layer="0" time="500" method="fadeIn"]
;[wt]

そんな、短い一言。[np]
まだ面と向かっては言えない一言。[np]

;[backlay layer="0"]
;[trans layer="0" time="1000" method="fadeIn"]
;[wt]

意味はないかもしれないが、それでも…今はこれでいい。[np]
そう思いながら、彼女が起きるまでしばらくそのままでいたのだった。[np]

;一枚絵 美寿花アップ
;一枚絵 美寿花アップ（顔赤らめる）

;[CG d="singlepic/2_4/2-4てれ.png" t="1000"]
;[is_skip]
;[if exp="tf.is_skip != true"]
    ;[backlay layer="0"]
    ;[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/2_4/tere.png"]
    ;[trans layer="0" time="1000" method="fadeIn"] 
;[else]
    ;[backlay layer="0"]
    ;[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/2_4/2-4てれ.png"]
    ;[trans layer="0" time="10" method="fadeIn"] 
;[endif]

[layopt layer="fix" time="1000" opacity="0" ]
[anim layer="message0" time="1000" opacity="0"]

[CG f="2_4_tere" t="1000"]
[better_wait time="2000"]

[chara_config pos_mode="true" ]

[scenejumpNormal sc="2n5.ks"]