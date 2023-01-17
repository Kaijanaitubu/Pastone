*start
;rタグ整理、？と！の後のスペース追加、名前表示残留修正済み（つぶ）
[startoption]

;全体修正！！　ボイス再生中に次のテキストに進んだ場合再生中のボイスを停止させる
;全体修正！！　ゆきとのセリフのところは名前を表示させる
;51 データなし
;背景 青空
[bg storage="daysky.png" time="0"]

[keyframe name="chikazuku"]
[frame p=100% scale="1.5" y=150]

[endkeyframe]

[keyframe name="hanareru"]
[frame p=100% scale="1"]
[endkeyframe]
[afterjumpmaskNormal]

;[jump target="*debug"]

;病院の天井、病室　仮画像を入れておきました
;パス指定時に空白が入っているとファイルを特定できなかったので一部ファイル名を変更しました
;美寿花涙目笑顔なし

…[np]
……[np]
………[np]

;背景 白黒の青空
[bg storage="sky_mono.png" time="500"]
[playbgm storage="wop.mp3" volume="30"]

[voice1 vf1="mizuka/mizuka4-1_1.ogg"]
#美寿花
;（昔）
「ねぇねぇ」[np]


;背景 一枚絵
[backlay layer="0"]
[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/4-1_遊具に座る/4-1_n.png"]
[trans layer="0" time="500" method="fadeIn"]
[wt]

[voice2 vf2="mizuka/mizuka4-1_2.ogg"]
#美寿花
;（昔）
「少年君、随分難しそうな本読んでるね」[np]


;背景 一枚絵
[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/4-1_遊具に座る/4-1_kangaeru.png"]
[trans layer="0" time="500" method="fadeIn"]
[wt]
[voice2 vf2="mizuka/mizuka4-1_a1.ogg"]
#美寿花
;（昔）
「でも…う～ん…仲直りの方法かぁ…あ、じゃあ…」[np]

[voice2 vf2="mizuka/mizuka4-1_a2.ogg"]
#美寿花
「お母さんの行きたいところに連れていくとかどう？」[np]

[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/4-1_遊具に座る/4-1_omoituita!.png"]
[trans layer="0" time="500" method="fadeIn"]
[wt]

#美寿花
[voice2 vf2="mizuka/mizuka4-1_a3.ogg"]
「例えば…そう！　水族館とか！」[np]

;背景 一枚絵
[backlay layer="0"]
[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/4-1/penguin.png"]
[trans layer="0" time="500" method="fadeIn"]
[wt]
[voice2 vf2="mizuka/mizuka4-1_4.ogg"]
#美寿花
;（昔）
「あ、ほら見て見て！　ペンギン！　可愛いよねぇ…」[np]

;修正済み 美寿花の立ち絵を半透明の黒背景の上に表示する（添田）
[chara_hide name="mizuka" time="500"]
;背景 一枚絵or白黒夕空（まぁ青空の使いまわしでいい気もするけど）
;[chara_show name="mizuka" top=20  face="egao_2" time=500]
[backlay layer="0"]
[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/4-1/yakusoku.png"]
[trans layer="0" time="500" method="fadeIn"]
[wt]
[voice2 vf2="mizuka/mizuka4-1_5.ogg"]
#美寿花
;（昔）
「じゃ、約束ね！　またペンギンを一緒に見るって」[np]

;背景 黒
[backlay layer="0"]
[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" folder="bgimage" storage="makkuro.jpg"]
[freeimage layer="1" time=500]
[trans layer="0" time="500" method="fadeIn"]
[wt]
[voice2 vf2="mizuka/mizuka4-1_6.ogg"]
#美寿花
;（昔）
「後ろ！　危ない！！」[np]

;背景 一枚絵
[backlay layer="1"]
[image layer="1" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/4-1事故/4-1事故.png"]
[trans layer="1" time="1000" method="fadeIn"]
[wt]
[voice2 vf2="mizuka/mizuka4-1_7.ogg"]
#美寿花
;（昔）
「…約…束…守れなく…なっちゃった…」[np]

[voice2 vf2="mizuka/mizuka4-1_8.ogg"]
#美寿花
;（昔）
「ご…めん…ね…」[np]

;背景黒
[chara_hide_all time="0" wait="false"]
[bg storage="makkuro.jpg" time="0" wait="false"]
[fadeoutbgm time="2000" wait="false"]
[freeimage layer="0" time="0" wait="false"]
[freeimage layer="1" time="1000" wait="true"]
[freeimage layer="1" page="back" time="1000" wait="true"]

[voice2 vf2="mizuka/mizuka4-1_9.ogg"]

#美寿花
「雪翔…君…」[wse][np]


;背景 天井（病院の天井素材って…というか、病院の素材ってあったっけ…？）
[bg storage="roof_byoushitsu.png"]

#雪翔
≪―――っ！？≫[np]
俺を呼ぶ声で、現実へと叩き落された。[np]
#雪翔
≪はぁ……っ…はぁっ……≫[np]

何も運動していないのに、必死に肩で呼吸する。[np]

#雪翔
≪‥‥‥≫[np]

#雪翔
≪…ここは…≫[np]

そこでようやく目に入っているのが見慣れない天井だと気づき、俺は体を起こす。[np]

;背景 病院
[bg storage="byoushitsu.png" time="1000" wait="true"]

[playbgm storage="Long_Bygone.mp3" volume="40" ]

#雪翔
≪…病院の、ベッド…？≫[np]

…そうだ。水族館の帰り道、突然意識を失って…あの悪夢を…[np]
‥‥‥[np]
違う。いつも見る悪夢じゃない。[np]
あれは…記憶だ。[np]
原因が事故のショックなのかは分からないが…俺の奥深くで封印していた、5年前の記憶の断片。[np]
…なら、[np]
どうして、[np]

#雪翔
≪そこに…美寿花がいるんだ…≫[np]

当然、あの中の俺は大学生ではない。高校にすら入っていない中学2年生だった。[np]
…では、あの夢の女の子は？[np]
#雪翔
≪…今の美寿花と、変わらない…変わってない…≫[np]

あの時、年齢こそ聞いてはいなかったが…俺より背は随分高く、とてもじゃないが中学生には見えなかった。[np]

#雪翔
≪…でも…美寿花は、俺と同い年って…≫[np]

いや…初めて会った時彼女が言ったのは『大学一年生』ということだけ。[np]
『同い年』というのは…俺の勝手な推測だ。[np]
本当は俺より年上でも、何もおかしくはない…のか…？[np]

#雪翔
≪…だとしても…≫[np]

まだ、疑問は尽きない。[np]

#雪翔
≪…事故の怪我が…あんなに綺麗に治るものなのか…？≫[np]

医療に詳しいわけではないが…大きな事故だった。生きていたとしても、相当な大怪我を負ったはず…[np]
なのに、当の彼女は生活に何の支障もなく、元気に日常を過ごしている。[np]
…まるで、何事もなかったかのように。[np]
…なによりも…[np]

;効果音 引き戸
[playse_slidedoor_open]
#雪翔
≪っ！？≫[np]

静かだった部屋に響いた突然の大きな音に、俺は思わず振り返る。[np]

[chara_show name="mizuka" face="shinpai" top="20" time="1000"]
[voice2 vf2="mizuka/mizuka4-1_10.ogg"]
#美寿花
「…雪翔君…？」[np]
;表情 心配


[voice2 vf2="mizuka/mizuka4-1_11.ogg"]
#美寿花:aseri
「も、もう大丈夫なの！？　どこか痛いところない！？」[np]
;表情 焦り


#雪翔
≪……≫[np]

無言で、頷く。[np]

[voice2 vf2="mizuka/mizuka4-1_12.ogg"]
;データなし
#美寿花:namidaegao
「よ、良かった…このまま眠ったままなんじゃないかって心配で心配で…」[np]
;修正後 涙目笑顔



そう言って、涙目になりながら曇りない笑顔を向ける。[np]
…これだ。俺が引っかかってる理由。[np]
あの凄惨すぎる地獄の過去を背負い、生きる苦しみ。[np]
もし、美寿花が本当に『あの時の女の子』なら…心にそんな、深い闇を抱えているだろう。[np]
だが、彼女は笑えている。[np]
大きな闇を抱えながら、そんなことを感じさせないぐらいの笑顔を日々浮かべている。[np]
この笑顔が、闇の上に成り立っているものだとは…考えたくない。[np]
…なら…今、目の前で俺の無事を喜んでいるこの女の子は、何なんだ？[np]
分からない。[np]
分からないから、どうしても彼女に不信感を抱いてしまう。[np]

[voice2 vf2="mizuka/mizuka4-1_13.ogg"]
#美寿花:kyoton
「あ、そうだ。君が寝てる間に教授が来てて…」[np]
;表情 kyoton


#雪翔
≪…父さん…？≫[np]

[voice2 vf2="mizuka/mizuka4-1_14.ogg"]
#美寿花:shinpai
「やっぱり大学で忙しいみたいで、今はいないけど…これ」[np]
;表情 worry


…そう言って差し出したのは、いくつかのスナック菓子。[np]

[voice2 vf2="mizuka/mizuka4-1_15.ogg"]
#美寿花:shinpai
「雪翔君が起きたら渡しといてって言われたけど…」[np]
;表情 kyoton


正直食欲はそこまでないので、首を振って今はいらないことを伝える。[np]

[voice2 vf2="mizuka/mizuka4-1_16.ogg"]
#美寿花:bishou
「なら…一応、ここに置いとくね？　まだ万全じゃないだろうし、食べるのは元気になってから」[np]
;表情 微笑


そう言って、近くにあった棚に菓子を置く。[np]
いつも通りの、俺を気遣う優しい美寿花。[np]
でも…[np]

#雪翔
≪‥‥‥≫[np]
#雪翔
≪…お前は、誰だ？≫[np]

思わず……言葉が、漏れる。[np]
勿論、俺の声は美寿花には届かない[np]

#雪翔
≪…お前は本当に……常葉美寿花なのか…？≫[np]

これを、彼女に聞いていいのか分からない。[np]
美寿花にとって、触れてはいけないものかもしれないのに。[np]
…俺は、問わずにはいられなかった。[np]
…だが、[np]

[voice2 vf2="mizuka/mizuka4-1_17.ogg"]
#美寿花:kyoton
「…ん～？」[np]
;表情 kyoton


#雪翔
≪っ！？≫[np]


俺が何か言おうとしていることに気づいたのか、美寿花がきょとんとした目で俺を見る。[np]
しまった…！　今声を聞かれるのはまずい…！！[np]
;修正済み 美寿花の立ち絵を拡大 （添田）
[kanim name="mizuka" keyframe="chikazuku" time=1000]
[wa]
[fadeoutbgm time="2000"]
そう思った時には、美寿花の手はすぐそこまで迫って…[np]

[voice2 vf2="mizuka/mizuka4-1_18.ogg"]
#美寿花:aseri
「……あ…」[np]
;表情 aseri


…手が、止まる。[np]

;修正済み（？） レイプ目表情 （添田）これであっているかどうかわからないです
[voice2 vf2="mizuka/mizuka4-1_19.ogg"]
#美寿花:kushou
「…ご、ごめんね！　勝手に触ろうとして…」[np]
;表情 kushou_2(口に手あててるやつ）


#雪翔
≪‥‥‥≫[np]

[kanim name="mizuka" keyframe="hanareru" time=1000]
[wa]
そのまま、一歩俺から距離をとる。[np]
…その目には…強い戸惑いが、宿っていた。[np]

[voice2 vf2="mizuka/mizuka4-1_20.ogg"]
#美寿花:kimazui
「…じゃ、じゃあ…また、元気になったら学校、一緒に行こうね！」[np]
;表情 neutral


そう言い残して、逃げるように美寿花は病室から姿を消した。[np]
[chara_hide name="mizuka" time="300" ]
‥‥‥[np]
違う。[np]
逃げたのは…俺だ。[np]
自分が、どんな顔をしているか…想像したくなかった。[np]
…多分、怯えていたのだろう。[np]
聞かれたくなかった。知られたくなかった。[np]
俺が、目の前にいる美寿花という存在自体を…疑っていることを。[np]

[scenejumpNormal sc="4n2.ks"]