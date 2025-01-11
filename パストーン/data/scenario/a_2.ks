*start
[startoption]
[voconfig sebuf=2 name="美寿花" vostorage="voice/a_2/mizuka_{number}.mp3" number=2]
[voconfig sebuf=5 name="黄樹" vostorage="voice/a_2/kouki_{number}.mp3" number=2]
[voconfig sebuf=6 name="???" vostorage="voice/a_2/a_2_{number}.mp3" number=1]
[vostart]
[ambient_light_off]

[camera zoom="2" x="-300" y="0" time="10" wait="true"]
[bg2 storage="living.png" time=10]

[ECout]

#???
「───あと、食材はここにあるから、後で‥‥」[vp]

‥‥ん？[vp]
階下へ降りる途中、誰かの話す声が聞こえて足が止まる。[vp]

#雪翔
（‥‥父さん、だよな。さっきの）[vp]

そもそも、朝のこの時間にいること自体珍しいが‥‥[vp]
それよりも。[vp]

#雪翔
（誰かと話してる‥‥電話か？）[vp]

盗み聞きする気はなかったが、つい耳を傾けてしまう。[vp]

#黄樹
「まぁ、他は特に変わったものはないし、多分家と同じだと思うよ」[vp]

話してる内容はよくわからないが、何かを説明してるのか？[vp]

;ボイス更新予定
#???
「なるほど、では昼や夜は私が作るってことでいいんですよね？」[vp]

;ボイス更新予定
#黄樹
「うん、悪いけどお願いできるかな。材料費とかはまた後で払うから、心配しなくていいよ」[vp]

‥‥‥‥[vp]
‥‥待て、何かおかしい。[vp]
父さんの言葉に答えたのは、女性の声。[vp]
でも、それはあり得ないはずなのだ。[vp]
だって、うちにいるのは俺と父さんの二人で‥‥[vp]
いや、考えていても仕方ない。[vp]
心の中で結論にもなっていない結論を出し、俺はそうっと階段を下りる。[vp]
[reset_camera]

[kouki f="bishou"]
#黄樹
「お、やっと起きた」[vp]

[kouki f="egao"]
#黄樹
「中々降りてこなかったから体調でも悪いのかと思ったんだが‥‥」[vp]

#雪翔
≪‥‥‥‥≫[vp]

申し訳ないが、今は父さんの言葉に反応する余裕はなかった。[vp]
[chara_hide_all]

俺の意識は、キッチンに立つ父さんではなく‥‥‥‥[vp]

;UIを削除して動画再生
[bgmovie storage="mizuka_first_2.mp4" loop="false" skip="false"]
@layopt layer="message0" visible="false"
[layopt layer="fix" visible="false"]
[better_wait time="9000"]


;レイヤー1にぼかして拡大したリビング背景を表示
[camera layer="0" zoom="1.3" x="140" y="-70" time="10" wait="true"]
[filter layer="0" blur="5"]
[cg s="living.png" layer=0 name="a"]

;UI表示
@layopt layer="message0" visible="true"
[layopt layer="fix" visible="true"]

;動画をフェードアウト
[stop_bgmovie time="1000" wait="true"]

[bgm_mizuka]

[mizuka_big f="egao" layer=2 time=700]
;[manpu type="onpu" x="700" y="60"]
#美寿花
「雪翔君、だよね？　おはよう」[vp]

この異様な光景を作り出している女性に向いていた。[vp]
年は‥‥同じくらいだろうか？[vp]
でも、どことなく大人のような雰囲気がある。[vp]

#雪翔
（父さんの知り合いか‥‥？）[vp]

いや、そうでなければただの不審者なのだが、と自分の考えに自分で突っ込む。[vp]

[chara_hide_all time="500" layer=2]

[freecg layer=0 time="800"]
[reset_camera time="1000" wait="true" layer="0"]
[filter layer="0" blur="0" wait="true" time="1000"]

[kouki f="kyoton"]
;[manpu type="hatena" x="720" y="80"]
#黄樹
「ん？　どうした？　そんなぼーっと突っ立って」[vp]

俺の間抜けな姿に、父さんは不思議そうに席に着くよう促す。[vp]

#雪翔
≪どうしたもこうしたも‥‥≫[vp]

何だよこの状況、困惑の視線を父さんに送るが、ああ、と納得したように笑い受け流される。[vp]

[kouki f="egao"]
#黄樹
「そうか。そういえばまだ説明してなかったな。彼女は──」[vp]

[se s="se/phone.ogg" buf="0"]
タイミング悪く、どこからか聞こえてくる着信音。[vp]

[kouki f="komarimayu" ]
#黄樹
「んん？」[vp]

[kouki f="kushou" ]
#黄樹
「ああ、僕の携帯か。すまん。ちょっと出てくるから、二人でゆっくりしていてくれ」[vp]

[stopse]
#黄樹
[chara_hide_all time="500" wait="false"]
「なんだなんだ？　ちゃんとやることは事前に伝えていたはずだが‥‥」[vp]

[se s="se/door_open.mp3" loop="false"]

#雪翔
≪え、ちょっと待っ‥‥≫[vp]

[se s="se/doorclose_1.ogg" loop="false"]

それだけ言い残して、父さんの姿は書斎の奥へと消えていく。[vp]

;パストーンの開発超初期にすとらさんが作ってくれたアニメーションを使っているので、動作確認をお願いします。
[mizuka f="kushou"]
[manpu type="ase" x="460" y="60" sound="null.mp3"]
[kanim keyframe="un" time="2000"]
#美寿花
「あ～‥‥」[vp]

#雪翔
≪‥‥‥‥≫[vp]

女性は気まずそうに苦笑。俺もなんだか居心地悪くてその場でフリーズ。[vp]
だが、いつまでもそうしているわけにもいかず、諦めて席につく。[vp]

;演出 ぴょんと跳ねるアニメーション
[kanim layer="1" keyframe="pyon" time="1000"]
[mizuka f="odoroki"]
#美寿花
「‥‥あ、まず自己紹介から、だよね！」[vp]

このまま沈黙が続くとまずいと感じたのか、半ば無理やり自己紹介を始める女性。[vp]

[mizuka f="egao"]
#美寿花
「えーと、名前は[ruby text = "とき"]常[ruby text = "わ"]葉[ruby text = "み"]美[ruby text = "ず"]寿[ruby text = "か"]花。[ruby text = "のぞ"]希み[ruby text = "の"]野大学の1年生」[vp]

1年ってことは、やっぱり同い年なのか。[vp]
しかも同じ大学、でも‥‥[vp]

;[black_band_init]
;[black_band_show]
#雪翔
（‥‥みずか‥‥‥‥みず、か？）[vp]

何故か、彼女の名前で引っかかる。[vp]
どこかで会ったのかとも思ったが、俺の記憶にこんな美人はいない。[vp]
俺の思い違いか、と思っていると‥‥[vp]

;[black_band_hide]
[mizuka f="kyoton_3"]
#美寿花
「それと、訳あって今日からここで暮らすことになって──」[vp]

[fadeoutbgm time=1000]
‥‥‥[vp]
‥‥‥‥‥‥[vp]

#雪翔
;[se s="se/suprised.mp3" loop=false volume="40"]
≪‥‥‥‥は？≫[vp]

その発言が、爆弾の如く俺の思考を吹っ飛ばしていった。[vp]

[mask time="1200" effect="slideInLeft"]

;ここでサブタイトル表示でもいいかも（2024年12月17日つぶ）

[mizuka f="bishou" time="10"]
[kouki f="straight" time="10"]

[mask_off effect="slideOutRight" time="1200"]

[kouki f="straight"]
#黄樹
「と、いうわけで‥‥」[vp]

[playbgm storage="Ready_to_jump.mp3" volume="15" ]

[kouki f="egao"]
#黄樹
「今日からしばらく僕たちと暮らすことになった、常葉美寿花ちゃんだ」[vp]


‥‥‥‥聞き間違いじゃなかった。[vp]
電話から帰ってきた父さんの紹介で、微かにあった可能性が潰される。[vp]

#雪翔
≪‥‥マジで言ってるのか？≫[vp]

あまりにも荒唐無稽な話に、まだ夢の続きではないのか。とかそんな事を考える。[vp]

;漫符 oya
[manpu type="oya" x="600" y="80"]
[mizuka f="kyoton"]
#美寿花
「もしかして、聞かされてなかったの‥‥？　私てっきり‥‥」[vp]
;ボイス更新予定

#雪翔
≪聞いてない。絶対聞いてない≫[vp]

僕は首を横に振る。[vp]

;漫符 ase
[manpu type="ase" y="30"]

[kouki f="mesorashi"]
#黄樹
「いや‥‥伝えようとは思っていたんだが、僕が帰ってくる頃には大体雪翔は寝てるからね。説明する余裕がなかったというか‥‥」[vp]


‥‥‥‥[vp]
絶対嘘だろ‥‥明らかに説明するの避けてただろ‥‥[vp]
とは言っても、父さんが忙しいのは事実である。[vp]

[mizuka f="shinpai"]
#美寿花
「やっぱり大変なんですね、大学の教授って‥‥」[vp]
;ボイス更新予定

[kouki f="kushou"]
#黄樹
「本当なら自分の研究に集中したいんだけどね‥‥これがなかなか。」[vp]
#黄樹
「とはいえ、事前の説明がなかったのは申し訳ない」[vp]

女性‥‥美寿花の言葉にぼやきながらも、謝る父さん。[vp]

; ここ二人の表情同時に変えようとしてるけど挙動怪しいかもしれないので確認お願いします
[kouki f="bishou"]
[mizuka f="kushou"]
#美寿花
「あはは‥‥通りで何か反応がおかしいと思った。じゃあ、ちゃんと説明しないとだね」[vp]
;ボイス更新予定

[chara_hide_all time="1000" wait="true"]

;ここから美寿花拡大演出
[camera layer="base" zoom="1.2" x="0" y="0" time="500" wait=false]
[mizuka_big f="kimazui"]
#美寿花
「私がここにお邪魔させてもらった理由なんだけど‥‥」[vp]

[mizuka_big f="kushou"]
#美寿花
「ちょっと、親と喧嘩しちゃって」[vp]

#雪翔
≪はぁ、喧嘩‥‥≫[vp]

まさか、それが原因で家出とか‥‥？[vp]
いや、そんなわけないか。この年でまさか家出なんて‥‥[vp]

[mizuka_big f="egao_2"]
#美寿花
「私、カッとなって家から飛び出しちゃったんだ～！」[vp]
;ボイス更新予定

当たってるのかよ。行動力どうなってんだこの人。[vp]

;ここから黄樹拡大演出
[chara_hide_all layer="1" time="1000" wait="true" ]
[kouki_big f="bishou"]
#黄樹
「美寿花ちゃんの母親は僕の友達でね。流石に一人だと色々と危険だし、落ち着くまで面倒を見てくれないか頼まれたわけだ」[vp]

#雪翔
≪よく頼んだな、その母親‥‥≫[vp]

いくら友人とはいえ、男二人の家に自分の娘を預ける方が危険ではないか？　と少し思ってしまう。[vp]

[kouki_big f="straight"]
#黄樹
「それに、ちょうどいいと思ったんだ」[vp]

#雪翔
≪‥‥？≫[vp]

[kouki_big f="komarimayu"]
#黄樹
「お前、生活リズムめちゃくちゃだろう？」[vp]

‥‥‥[vp]
それは、否定できない。[vp]
ロズやラズが呼びかけてくれるおかげで昼夜逆転、とまではいかないが、健康的かと言われれば首を傾げるばかりである。[vp]

[kouki_big f="bishou"]
#黄樹
「普段料理することもないみたいだし、ちょっと色々と心配でな‥‥」[vp]

#黄樹
「僕としては、美寿花ちゃんがいてくれる方が安心できる」[vp]

[kouki_big f="komarimayu"]
#黄樹
「まぁ、その分迷惑をかけてしまうことにもなるんだが‥‥」[vp]

[chara_hide_all layer="1" time="1000" wait="true" ]
[reset_camera time="50" layer="base" ]
[mizuka f="yaruki"]

#美寿花
「いえ、迷惑なんてそんな！　家事は得意ですので任せてください！」[vp]

当の本人は嫌がる様子もなく、むしろやる気に満ち溢れているように見える。[vp]

[kouki f="egao_2"]
#黄樹
「というわけだ。しばらくの間、仲良くやってくれ！」[vp]

#黄樹
「じゃ、私は大学に行ってくる」[vp]


;ボイス更新予定
[mizuka f="kangae"]
#美寿花
「あれ？　確か昼からだと聞いていましたけど」[vp]

[kouki f="kushou"]
#黄樹
「さっきの電話で早めに来てほしい、って言われてね。何をしでかしたんだか‥‥」[vp]

[kouki f="egao"]
#黄樹
「早速で悪いんだが今日の夕飯の用意、頼めるかい？」[vp]

[mizuka f="bishou"]
#美寿花
「はい、分かりました！」[vp]

[kouki f="egao"]
[manpu type="ase2" x="140" y="90"]
#黄樹
「おっと、もうこんな時間か！　じゃ、頼んだよ！」[vp]

;画面退場演出凝りたい
[mizuka f="kyoton_3"]
[chara_hide_all time="1000" wait="true"]
その直後、よほど余裕がないのか、父さんはドタバタと家を出て行ってしまった。[vp]

#雪翔
≪‥‥‥‥≫[vp]

[mizuka f="kushou"]
#美寿花
「‥‥忙しい人だね」[vp]
[mizuka f="odoroki"]

ぽつりと。[vp]
父さんの姿が消えた後に呟いたその言葉に、俺は頷いて同意しておく。[vp]
‥‥にしても、ものすごい状況である。[vp]
この家に女の子、しかも同じ年の子がいるのだ。[vp]
父さんも夜遅くまで帰ってこないので、ほぼ一日中二人っきり‥‥[vp]

#雪翔
（あれ‥‥これ、半分同棲なのでは‥‥？）[vp]

[mizuka f="kimazui"]
美寿花が居心地悪そうにキョロキョロしている一方で、[r]
俺は一人悶々とするのであった‥‥。[vp]

[fadeoutbgm time="2000"]
[EC sc="a_4.ks"]