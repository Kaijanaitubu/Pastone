*start
[startoption]
<<<<<<< Updated upstream
[voconfig sebuf=2 name="美寿花" vostorage="mizuka/mizuka1-2_{number}.ogg" number=2]
[voconfig sebuf=5 name="黄樹" vostorage="kouki/kouki1-2_{number}.ogg" number=4]
[voconfig sebuf=6 name="???" vostorage="other/1-2_{number}.ogg" number=1]
=======
[voconfig sebuf="2" name="美寿花" vostorage="mizuka/mizuka1-2_{number}.ogg" number="2"]
[voconfig sebuf="5" name="黄樹" vostorage="kouki/kouki1-2_{number}.ogg" number="4"]
[voconfig sebuf="6" name="???" vostorage="other/1-2_{number}.ogg" number="1"]
>>>>>>> Stashed changes
[vostart]

;[camera zoom="2" x="-300" y="0" time="10" wait="true"]
[bg storage="living_big.png"]


#???
「───あと、食材はここにあるから、後で…」[vp]

…ん？[vp]
階下へ降りる途中、誰かの話す声が聞こえて足が止まる。[vp]

#雪翔
（…父さん、だよな。さっきの）[vp]

そもそも、朝のこの時間にいること自体珍しいが…[vp]
それよりも。[vp]

#雪翔
（誰かと話してる…電話か？）[vp]

盗み聞きする気はなかったが、つい耳を傾けてしまう。[vp]

#???
「まぁ、他は特に変わったものはないし、多分家と同じだと思うよ」[vp]

話してる内容はよくわからないが、何かを説明してるのか？[vp]

;ボイス更新予定
#???
「なるほど、では昼や夜は私が作るってことでいいんですよね？」[vp]

;ボイス更新予定
#???
「うん、そうしてもらえると助かるかな。材料費とかはまた後で払うから、心配しなくていいよ」[vp]

……[vp]
…待て、何かおかしい。[vp]
父さんの言葉に答えたのは、女性の声。[vp]
でも、それはあり得ないはずなのだ。[vp]
だって、うちにいるのは俺と父さんの二人で…[vp]
いや、考えていても仕方ない。[vp]
心の中で結論にもなっていない結論を出し、俺はそうっと階段を下りる。[vp]

[bg storage="living.png"]
<<<<<<< Updated upstream

=======
>>>>>>> Stashed changes
[kouki f="bishou"]
#黄樹
「お、やっと起きた」[vp]

[kouki f="egao"]
#黄樹
「中々降りてこなかったから体調でも悪いのかと思ったんだが…」[vp]

#雪翔
≪‥‥‥≫[vp]

申し訳ないが、今は父さんの言葉に反応する余裕はなかった。[vp]
[chara_hide_all]

俺の意識は、キッチンに立つ父さんではなく……[vp]

;UIを削除して動画再生
[bgmovie storage="mizuka_first_2.mp4" loop="false" skip="false"]
@layopt layer="message0" visible="false"
[layopt layer="fix" visible="false"]
[better_wait time="9000"]


;レイヤー1にぼかして拡大したリビング背景を表示
[camera layer="base" zoom="1.3" x="140" y="-70" time="10" wait="true"]
[filter layer="base" blur="5"]
[cg s="living.png"]

;UI表示
@layopt layer="message0" visible="true"
[layopt layer="fix" visible="true"]

;動画をフェードアウト
[stop_bgmovie time="1000" wait="true"]

[bgm_mizuka]

[mizuka_big f="egao" layer=2]
#美寿花
「雪翔君、だよね？　おはよう」[vp]

この異様な光景を作り出している女性に向いていた。[vp]
年は……同じくらいだろうか？[vp]
でも、どことなく大人のような雰囲気がある。[vp]

#雪翔
（父さんの知り合いか…？）[vp]

いや、そうでなければただの不審者なのだが、と自分の考えに自分で突っ込む。[vp]

[chara_hide_all time="500" layer=2]

[mizuka f="egao" m_wait="false"]
[kouki f="kyoton"]

[freecg]
[reset_camera time="1000" wait="true" layer="base"]
[filter layer="base" blur="0" wait="true" time="1000"]

#黄樹
「ん？　何をそこでボーっとしてるんだ？」[vp]

俺の間抜けな姿に、父さんは不思議そうに席に着くよう促す。[vp]
そりゃするだろ。なんだよこの状況。[vp]
困惑の視線を父さんに送るが、ああ、と納得したように笑い受け流される。[vp]

[kouki f="egao"]
#黄樹
「そうか。そういえばまだ説明してなかったな。彼女は──」[vp]

[se s="se/phone.ogg"]
[kouki f="komarimayu" ]
#黄樹
「んん？」[vp]

タイミング悪く、どこからか聞こえてくる着信音。[vp]

[kouki f="kushou" ]
#黄樹
「ああ、僕の携帯か。すまん。ちょっと出てくるから、二人でゆっくりしていてくれ」[vp]

#黄樹
[chara_hide_all time="500" wait="false"]
「なんだなんだ？　ちゃんとやることは事前に伝えていたはずだが…」[vp]

[se s="se/door_open.mp3" loop="false"]
#雪翔
≪え、ちょっと待っ…≫[vp]

それだけ言い残して、父さんの姿は書斎の奥へと消えていく。[vp]

[manpu type="ase"]
;☆パストーンの開発超初期にすとらさんが作ってくれたアニメーションを使っているので、動作確認をお願いします。
[kanim layer=1 keyframe="un" time="5000"]
[mizuka f="kushou" layer=1]
#美寿花
「あ～…」[vp]

#雪翔
≪‥‥‥≫[vp]

女性は気まずそうに苦笑。俺もなんだか居心地悪くてその場でフリーズ。[vp]
だが、いつまでもそうしているわけにもいかず、諦めて席につく。[vp]

;演出 ぴょんと跳ねるアニメーション
[kanim layer="1" keyframe="pyon" time="1000"]
[mizuka f="egao" layer=1]
#美寿花
「……あ、まず自己紹介から、だよね！」[vp]

このまま沈黙が続くとまずいと感じたのか、半ば無理やり自己紹介を始める女性。[vp]

[mizuka f="egao" layer=1]
#美寿花
「えーと、名前は[ruby text = "とき"]常[ruby text = "わ"]葉[ruby text = "み"]美[ruby text = "ず"]寿[ruby text = "か"]花。[ruby text = "のぞ"]希み[ruby text = "の"]野大学の1年生」[vp]

1年ってことは、やっぱり同い年なのか。[vp]
しかも同じ大学、でも…[vp]

[black_band_init]
[black_band_show]
#雪翔
（…みずか……みず、か？）[vp]

何故か、彼女の名前で引っかかる。[vp]
どこかで会ったのかとも思ったが、俺の記憶にこんな美人はいない。[vp]
俺の思い違いか、と思っていると…[vp]

[black_band_hide]
[mizuka f="kyoton_3" layer=1]
#美寿花
「それと、訳あって今日からここで暮らすことになって──」[vp]

‥‥‥[vp]
‥‥‥‥‥‥[vp]

#雪翔
≪……は？≫[vp]

その発言が、爆弾の如く俺の思考を吹っ飛ばしていった。[vp]

[chara_hide_all time="10" layer=1]
;☆演出 暗転 シーンチェンジ
@jump storage="title.ks"
;[scenejumpNormal sc="title.ks"]