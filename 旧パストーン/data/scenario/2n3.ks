*start
;rタグ整理、？と！の後のスペース追加、名前表示残留修正済み（つぶ）
[startoption]

;背景 講義室
[bg storage="classroom.png" time="0"]

[chara_show name="mizuka" top="50" storage="chara/mizuka/kushou.png" time="0" wait="true"]
[camera layer="base" zoom="1.5" x="0" y="0" time="10" wait="true"]
[camera layer="0" zoom="1.5" x="0" y="0" time="10" wait="true"]
[afterjumpmaskNormal]
#雪翔
≪…危なかった…≫[np]

机に突っ伏しながら、俺はため息をつく。[np]

[playbgm storage="Ready_to_jump.mp3" volume="15" ]

[voice1 vf1="mizuka/mizuka2-3_1.ogg"]
#美寿花:kushou
「ほんとに危なかったね…講義室入った時点で3分前だったし…」[np]
;表情 kushou


苦笑いを浮かべながら、美寿花は鞄の中から講義用のノートを取り出す。[np]

[voice2 vf2="mizuka/mizuka2-3_2.ogg"]
#美寿花:shinpai_2
「…というか、雪翔君当然のようにここにいるけど、1時限目ここなの？」[np]
;表情 shinpai_2


#雪翔
≪…ああ、そうっぽいな≫[np]

親父に頼んでもらっておいた時間割表を見る。[np]

#雪翔
≪…ってことは、美寿花と同じ学科か…≫[np]

その事に気づいて、少し安心した。[np]
知り合いが誰もいないよりは、やはり知っている人間が近くにいる方が正直助かる。[np]

[voice2 vf2="mizuka/mizuka2-3_3.ogg"]
#美寿花:kyoton
「あ、そうだ。私午後は5時限目しか講義ないんだけど雪翔君は？」[np]
;表情 きょとん？

[voice2 vf2="mizuka/mizuka2-3_4.ogg"]
#美寿花:uwame
「せっかくお弁当作ったんだし一緒に食べたいんだけど…」[np]
;表情 期待のまなざし


どこかワクワクした様子で、美寿花は尋ねる。[np]

#雪翔
≪…俺は…あ～…≫[np]

時間割表を一瞥し、そのまま彼女に見せる。[np]

[voice2 vf2="mizuka/mizuka2-3_5.ogg"]
#美寿花:egao
「…お、一緒だ！　よかった～」[np]
;表情 egao

[voice2 vf2="mizuka/mizuka2-3_6.ogg"]
#美寿花:egao_2
「ちょっと夢だったんだよねぇ〜。お昼に自分のお弁当食べてもらえるの」[np]
;表情 egao_2


そう言いながら、嬉しそうに笑う。[np]

;修正後 効果音変更
[playse_slidedoor_open]

;ドアが開く音（スライド）

;[chara_show name="kouki" face="straight"]


;[reset_camera layer="base" time="1500" wait="true"]
;[reset_camera layer="0" time="1500"]

[if exp="tf.is_skip != true"]
    [camera layer="base" zoom="1.05" x="0" y="0" time="1500" wait="false"]
    [camera layer="0" zoom="1.05" x="0" y="0" time="1500" wait="true"]
[else]
    [camera layer="base" zoom="1.05" x="0" y="0" time="10" wait="false"]
    [camera layer="0" zoom="1.05" x="0" y="0" time="10" wait="true"]
[endif]


ドアが開き、教授らしき人物が入ってきた。[np]

[chara_hide_all]
[fadeoutbgm time="2000"]

…そして、程なくして1時限目の講義が始まる。[np]
最初は、まだ見慣れない講義室、そこで講義を受けるたくさんの学生…
そんな空間に俺は新鮮味を感じていて、なんとなくソワソワしていた。[np]
…最初は。[np]

#雪翔
≪…やっべぇ…≫[np]

#雪翔
≪…くっそ眠い…！！！≫[np]


…しまった…まさかここまで眠気がここまで強力だとは思わなかった。[np]
これも、普段のだらしない生活習慣が災いしたのだろうが…[np]

#雪翔
（…他の人は…）[np]

そう思って、さりげなく周りを見回す。[np]

#雪翔
≪……≫[np]

#雪翔
≪…皆…起きてるのか…！≫[np]

退屈そうにしている人も何人かいるが、それでも寝ているというわけではない。[np]
…朝のことといい、今までの自分の不摂生を呪う。[np]

#雪翔
（…あ…やばい…）[np]
そんなことを考えてるうちに、視界がどんどんぼやけていく。[np]
#雪翔
（…もう…無理…）[np]


;背景 黒
[bg storage="makkuro.jpg" time="3000"]

…[np]
……[np]
………[np]

;修正後（担当辻） 効果音 ツンッ

[playse_tsuntsun]
ツンッ[np]
…[np]

;修正後（担当辻） 効果音 ツンッ×２
[playse_tsuntsun]
[playse_tsuntsun]

ツンツンッ[np]
…んん…？[np]
誰かが、脇腹あたりをつついている感覚。[np]
…誰だ…？[np]

[voice2 vf2="mizuka/mizuka2-3_7.ogg"]

#美寿花:egao_2
「‥‥‥」[np]
;表情　egao_2
;効果音 頬をつねる音

[bg storage="classroom.png" time="1500"]

;背景 講義室


#雪翔
≪痛い痛い痛い痛い！！！！≫[np]

何！？　何事！？[np]
いきなり頬をつねられ、俺は飛び起きる。[np]
…ってここ…[np]

#雪翔
≪…あ、そうだ…俺講義中に寝て…≫[np]

;修正後 美寿花の出てくる位置がおかしい
[chara_show name="mizuka" top="50" face="mad_smile" time="1000"]

[voice2 vf2="mizuka/mizuka2-3_8.ogg"]
#美寿花
「気持ちいいお目覚めだね、少年君？」[np]
;表情 mad_smile（引きつった笑み）


#雪翔
≪うっ…≫[np]

小声で、だが皮肉めいた言い回しが耳にささる。[np]
見ると、すぐ横で美寿花が意地悪気に笑っていた。[np]
どうやら、彼女が俺を起こしたらしい。[np]

[voice2 vf2="mizuka/mizuka2-3_9.ogg"]
#美寿花:jitome
「…確かに退屈だけど、開始10分で寝るのは流石に関心しないなぁ…」[np]
;表情 jitome


#雪翔
≪…へ？10分？≫[np]

時計を見ると、まだ授業が始まって15分程度。[np]
‥‥‥[np]
…マジかよ。[np]
眠くなった時点で30分は経ってると思った…どうりで周りの人もまだ寝てなかったわけだ。[np]
すると、美寿花は俺にズイッと顔を寄せる。[np]

[voice2 vf2="mizuka/mizuka2-3_10.ogg"]
#美寿花:kushou
「…そりゃ、寝るなとは言わないけどさ…せめてもう少し我慢しよ？ね？」[np]
;表情 kushou


#雪翔
≪…わ、分かった分かった！≫[np]

ブンブンッ！と音が出そうなぐらいの勢いで首を縦に振る。[np]
顔が…顔が近い…[np]
…初日の薄着姿といい、この人妙に無防備というか…距離感がバグってるというか…[np]
…だが、美寿花のおかげですっかり眠気はなくなっていた。[np]
これなら乗り切れそうだ、と俺は真面目に講義に向き合うのだった。[np]

;修正後 背景 黒
[chara_hide_all]
[bg storage="makkuro.jpg" time="1000" wait="false"]

…[np]
…そして、次に意識が戻ったのは1時限目終了後だったのは言うまでもない。[np]

[scenejumpNormal sc="2n4.ks"]