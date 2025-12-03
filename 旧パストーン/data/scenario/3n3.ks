*start
;rタグ整理、？と！の後のスペース追加、名前表示残留修正済み（つぶ）
[startoption]

[bg storage="classroom.png" time=0]
[camera layer="base" x="0" y="0" zoom="1.2" time="0"]

[afterjumpmaskNormal]

[playbgm storage="Ready_to_jump.mp3" volume="15" ]

;修正済み（担当辻） 背景ぼかし
翌朝、またいつものように大学で講義を受ける。[np]
…なんか、もう普通に大学に行くことが自分の中で当然のことになってきたな…[np]
最初の頃は二日に一回ぐらいは休みそう、とか思っていたが…今の所、特に問題なく継続できている。[np]
…問題があるとしたら…[np]
#雪翔
≪‥‥‥≫[np]

…暇だなぁ…[np]
登校のきつさと講義中の眠気はどうにもならないものである。[np]
…だが、今日ばかりは眠気よりも焦りが上回っていた。[np]

#雪翔
≪…残り三日を…切ってしまった…≫[np]

来週の木曜日にある美寿花の誕生日。[np]
…結局この数日、俺は彼女を水族館に誘うことができずにいた。[np]
いやだってさぁ…[np]
どう話切り出したらいいか分かんないんだよ…！！[np]
でも、そろそろ誘わないと流石にまずい。[np]

#雪翔
≪…どうすれば…≫[np]

#美寿花
[voice2 vf2="mizuka/mizuka3-3_1.ogg"]
「雪翔君ってば！！」[np]



#雪翔
≪痛ててててっ！！≫[np]

いきなり、俺の頬がつねられる。[np]
気づけば、美寿花は席から立ち上がって俺の正面に立っていた。[np]

#雪翔
≪毎回俺の頬をつねるなよ…≫[np]

[chara_show name="mizuka" top="20" face="fuman" time="500"]
#美寿花
[voice2 vf2="mizuka/mizuka3-3_2.ogg"]
「いやだって、何回声かけても全然反応ないし」[np]
;fuman

#美寿花:jitome
[voice2 vf2="mizuka/mizuka3-3_3.ogg"]
「もう講義終わっちゃったよ？」[np]
;jitome



#雪翔
≪あれ…？≫[np]

つねられていた手から離れて辺りを見回すと、先生はもう教壇から姿を消している。[np]

#雪翔
≪マジか…チャイムも聞こえなかった…ってうおっ！？≫[np]
;修正済み（担当辻） 画面演出 揺れ
[quake count="3" time="1000" hmax="20" wait="true"]

俺が呆気に取られていると、すごい力で肩を掴まれる。[np]

[playse_ability_on]
;能力発動音

#美寿花:shinpai
[voice2 vf2="mizuka/mizuka3-3_4.ogg"]
「最近、家でも上の空だったりするしさ…どうしたの？　なんか悩み事？」[np]
;shinpai



#雪翔
≪あ～…いや、悩み事ではないんだけど…≫[np]

…あ、いやこれチャンスでは？[np]
今なら俺の声も届くし、このまま…[np]

#美寿花:kyoton
[voice2 vf2="mizuka/mizuka3-3_5.ogg"]
「ないんだけど…何？」[np]
;kyoton



#雪翔
≪えーっと…何でもないです…≫[np]

#美寿花:jitome
[voice2 vf2="mizuka/mizuka3-3_6.ogg"]
「本当に？ それと何で敬語…？」[np]
;jitome



#雪翔
≪別に深い意味はないけど…うん。大丈夫…≫[np]

[fadeoutbgm time="2000"]
[bgchangemask]
[chara_hide_all time="0"]
[wait time="500"]
[chara_show name="RozLaz" face="roz_akire" top="10" left="200" width="753.12" height="795.614" time="500" zindex="20" ]
[bgchangemask_off]

;修正済み（担当辻） ロズラズ表示位置
;修正済み（担当辻） ロズラズボイス

[voice2 vf2="roz/roz3-3_1.ogg"]
#ロズ
「いや、全然『大丈夫』やないやろマスター…」[np]
;akire

[voice2 vf2="laz/laz3-3_1.ogg"]
[chara_mod name="RozLaz" face="laz_shinpai"]
#ラズ
「むしろどちらかというと『大ピンチ』のようですが…」[np]
;shinpai

[playbgm storage="RozLaz.mp3" volume="15" ]



#雪翔
≪…はい。返す言葉もないです…≫[np]


休み時間。[np]
見事に撃沈した俺は、ラズ達と空き教室で毎度の如く作戦会議を開く。[np]

[voice2 vf2="laz/laz3-3_2.ogg"]
[chara_mod name="RozLaz" face="laz_close"]
#ラズ
「まぁ確かに、このままだと誘うのは困難ですわね…」[np]
;表情 考え込む表情

[voice2 vf2="roz/roz3-3_2.ogg"]
[chara_mod name="RozLaz" face="roz_neutral"]
#ロズ
「もういっそのこと、当日に目隠ししてそのまま連れて行ったらいいんちゃう？」[np]
;neutral



#雪翔
≪いやそんな度胸あったら普通に誘うんだが…≫[np]

[voice2 vf2="roz/roz3-3_3.ogg"]
[chara_mod name="RozLaz" face="roz_kyoton"]
#ロズ
「せやなぁ…というか、例のチケットは結局どうなったん？」[np]
;kyoton



#雪翔
≪ちゃんと取ってもらってる。ほら≫[np]

そう言って、俺はポケットからチケットを2枚取り出す。[np]

[voice2 vf2="laz/laz3-3_3.ogg"]
[chara_mod name="RozLaz" face="laz_kyoton"]
#ラズ
「あら、学校まで持ってきてましたの？」[np]
;表情 きょとん、もしくはびっくり



#雪翔
≪まぁ…別に持ってくる必要はないんだけど、なんか家に置いていくのも落ち着かなくて≫[np]

[voice2 vf2="roz/roz3-3_4.ogg"]
[chara_mod name="RozLaz" face="roz_akire"]
#ロズ
「乙女やなマスター…」[np]
;jitome、（半笑い？）



#雪翔
≪うるせぇ、いやそんなことはどうでもよくてだな…≫[np]

[voice2 vf2="laz/laz3-3_4.ogg"]
[chara_mod name="RozLaz" face="laz_jitome"]
#ラズ
「どういたしましょうか？　私たちがさり気なく話を振る…は無理でしょうし…」[np]
;修正前 ジト目の横を見ている版 ☆

[voice2 vf2="roz/roz3-3_5.ogg"]
[chara_mod name="RozLaz" face="roz_fuman"]
#ロズ
「ん？何で今ウチを見て断念してん？」[np]
;表情

[voice2 vf2="laz/laz3-3_5.ogg"]
[chara_mod name="RozLaz" face="laz_kyoton"]
#ラズ
「私はとにかく、あなたにそんな話術ないでしょう？」[np]
;表情 

[voice2 vf2="roz/roz3-3_6.ogg"]
[chara_mod name="RozLaz" face="roz_okori"]
#ロズ
「はぁ〜？　ラズやってウチと変わらんやろ別に！」[np]
;表情



話術がないことは否定しないのか…[np]

[voice2 vf2="roz/roz3-3_7.ogg"]
[chara_mod name="RozLaz" face="roz_kyoton"]
#ロズ
「…あ、ほな文永は？　あの子なら自然に話に出せるんちゃう？」[np]
;表情



#雪翔
≪…う～ん…そうだろうけど…≫[np]

…流石に頼りすぎなのでは？[np]
そんな気もしてくるのが正直なところである。[np]
…まぁ、最終的にそうするのが一番確実なのだろうが…[np]

#雪翔
≪断られたら…きついなぁ…≫[np]

[voice2 vf2="roz/roz3-3_8.ogg"]
[chara_mod name="RozLaz" face="roz_komari"]
#ロズ
「…それを考えだしたら終わりやない？」[np]
;表情

[voice2 vf2="laz/laz3-3_6.ogg"]
[chara_mod name="RozLaz" face="laz_kyoton"]
#ラズ
「結論を言ってしまうと、結局はご主人様次第。ということになってしまいますね」[np]
;表情



[fadeoutbgm time=1000]

#雪翔
≪…だな。まだ時間がないわけではないし、何とか…≫[np]

#美寿花
[voice2 vf2="mizuka/mizuka3-3_7.ogg"]
「何が少年君次第なの？」[np]
;立ち絵表示なし



#雪翔
≪ッ！？≫[np]

[voice2 vf2="laz/laz3-3_7.ogg"]
[chara_mod name="RozLaz" face="laz_normal"]
#ラズ
「あ」[np]
;あ ☆

[voice2 vf2="roz/roz3-3_9.ogg"]
[chara_mod name="RozLaz" face="roz_ge"]
#ロズ
「げ」[np]
;ge



背後から今一番聞こえてはいけない声がかけられる。[np]

#雪翔
≪美寿花…≫[np]

話に夢中になりすぎて、入ってくるのに全然気づかなかった…[np]
というか、この前もそうだったけど気配薄すぎだろこの人…[np]
しかし、まだ不運は止まらない。[np]

[playbgm storage="mizuka.ogg" volume="40" ]

[chara_mod name="RozLaz" face="inai" time="500" cross="false" ]
;修正済み（担当辻） 美寿花を左側に表示 ☆
[chara_show name="mizuka" face="kyoton"  top="20" time="500" zindex="0" ]
#美寿花
[voice2 vf2="mizuka/mizuka3-3_8.ogg"]
「あれ？　それ…水族館のチケット！？」[np]
;kyoton



#雪翔
≪…あ、やばっ！≫[np]

…しまった！手に持ったままだった…！！[np]
慌てて仕舞おうとするが、遅すぎた。[np]

#美寿花:harikiri
[voice2 vf2="mizuka/mizuka3-3_9.ogg"]
「ええ！？　なんで隠すの！？　というか、何で雪翔君がそれ持ってるの！？」[np]
;表情



#雪翔
≪……≫[np]

助けてくれ、とロズとラズに訴えようとしてスマホを見るが…[np]

#ロズ＆ラズ
「‥‥‥」[np]
;吹き出しだけ ☆

#雪翔
≪おまっ…あいつらいねぇ！！≫[np]

肝心な時になって逃げやがって…！！[np]

[chara_hide name="RozLaz"]

#美寿花:fuan
[voice2 vf2="mizuka/mizuka3-3_10.ogg"]
「…雪翔君？」[np]
;fuan



#雪翔
≪‥‥‥はぁ…≫[np]

ため息をつく。[np]
というか、ため息しか出なかった。[np]
‥‥‥[np]
…もう、どうにでもなれ！[np]


[playse_ability_on]
[voice2 vf2="mizuka/mizuka3-3_11.ogg"]
#美寿花:odoroki
「うわっ…え…ど、どうしたの…？」[np]
;表情



一歩踏み出し、美寿花の手を取る。[np]

#雪翔
≪その…あ～…≫[np]
#雪翔
≪木曜、一緒に水族館に行かない…？≫[np]

脈絡もくそもない、簡素な誘い。[np]
…色々考えたが、結局これが俺の限界なのであった。[np]

#美寿花:odoroki_3
[voice2 vf2="mizuka/mizuka3-3_12.ogg"]
「…え…？　木曜って…私の誕生日…？」[np]
;odoroki_3



#雪翔
≪……≫[np]
#雪翔
≪…さぁ、何の話かな…？≫[np]

;修正前 ちょっと起こり気味か呆れてる表情にしたい
#美寿花:kyoton
[voice2 vf2="mizuka/mizuka3-3_13.ogg"]
「いや絶対そうじゃん。間が全て語ってるじゃん」[np]
;表情

#雪翔
≪…はい。その通りです≫[np]

#美寿花:kyoton_2
[voice2 vf2="mizuka/mizuka3-3_14.ogg"]
「あ、もしかして最近ずっと悩んでたのって…」[np]
;表情



#雪翔
≪いや…誘い方が分からなかったから…≫[np]

一瞬、断られるんじゃないかと不安になる…が、それも杞憂だった。[np]

#美寿花:kushou
[voice2 vf2="mizuka/mizuka3-3_15.ogg"]
「別に、そんな悩まなくても全然いいのに…」[np]
;表情



#雪翔
≪え、いいの…？≫[np]

#美寿花:egao_2
[voice2 vf2="mizuka/mizuka3-3_16.ogg"]
「そりゃいいよ！ずっと行ってみたかったんだよね～」[np]
;egao_2



本当に嬉しそうに話す美寿花に、俺は内心ほっとする。[np]

[fadeoutbgm time=2000]

[scenejumpNormal sc="3n4.ks"]