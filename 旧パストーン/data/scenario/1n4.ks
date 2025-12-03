*start
;rタグ整理、？と！の後のスペース追加、名前表示残留修正済み（つぶ）

[startoption]

[bg storage="myroom_night.png" time="0"]
[voconfig sebuf=2 name="mizuka" vostorage="mizuka/mizuka1-4_{number}.ogg" number=1 ]
[voconfig sebuf=2 name="roz" vostorage="roz/roz1-4_{number}.ogg" number=1 ]
[voconfig sebuf=2 name="laz" vostorage="laz/laz1-4_{number}.ogg" number=1 ]
[vostart]

[afterjumpmaskNormal]

[better_wait time="500"]

;背景 雪翔の部屋
#雪翔
≪ふぅ…≫[np]

夕食後、自室で一息つく。[np]
いつもならすぐパソコンに向かっているだろうが、今日ばかりは違った。[np]

#雪翔
（…美寿花の料理…めっちゃうまかった…）[np]


夕食に出された料理はどれも、自分で作ったものを遥かに超えていて、店で出しても全く違和感を感じないレベルだった。[np]
当の本人は、家で家事をしていたから慣れているだけ。と言っていたが…[np]

#雪翔
（…俺なんか自炊自体滅多にしないからな…）[np]

気まぐれで時々することもあるが、面倒なので弁当で済ましてしまうことがほとんど。[np]
なので、久しぶりに食べた人の手料理のおいしさに、衝撃を覚えるほどである。[np]
父さんの料理もどきを食べた後なので尚更だ。[np]

#雪翔
≪…さて、と≫[np]

くつろぐのも程ほどに、俺はパソコンの電源を入れる。[np]

#雪翔
≪昨日どこまでやったっけな…眠かったし、いまいち記憶が…≫[np]

ぼんやりと昨日の記憶を辿りながら、必要なソフトの起動。[np]

;ドアが開く音 （音を小さくするorもっとそーっと開く音声に変更）
[playse_dooropen_1]

昨日進めていたデータが残っていることを確認し、早速その続きに取り掛かろうとした。[np]
…すると、[np]

;[voice1 vf1="mizuka/mizuka1-4_1.ogg"]
#美寿花
「…これ…もしかして、音楽？」[np]
;表情


#雪翔
≪うおっ！？≫[np]

背後から声を掛けられ、反射的に振り向く。[np]

;BGM（美寿花のテーマ）
[playbgm storage="mizuka.ogg" volume="40" ]

;美寿花立ち絵表示 きょとん顔
[chara_show name="mizuka" top="20" width="868" height="1227" storage="chara/mizuka/r_egao.png" wait="true"]

;[voice2 vf2="mizuka/mizuka1-4_2.ogg"]
#美寿花
「あ、ごめん！　驚かせちゃった？」[np]
;表情 笑顔


#雪翔
≪…み、美寿花か…≫[np]


よく考えれば、この家にいるのは俺以外にこの人しかいないのだから、当然である。[np]
だが、問題はその恰好。[np]
風呂上りなのか、上は薄いＴシャツ一枚で中々目のやり場に困る。[np]

;[voice2 vf2="mizuka/mizuka1-4_3.ogg"]
#美寿花:r_kangae_2
「なんか、意外だね。少年君、あんまりこういう創作系のことする感じに思えなかったから」[np]
;表情 考え2


興味津々、といった様子でパソコンの画面を見ながら言う。[np]
#雪翔
（…少年、って…）[np]
話の流れ的に自分の事なのは分かるけど、そんなに年下に見えるだろうか、俺。[np]
いやまぁ、確かに童顔な自覚はあるが…[np]

;[voice2 vf2="mizuka/mizuka1-4_4.ogg"]
#美寿花:r_kyoton
「ねぇ、もう少し近くで見ていい？」[np]
;表情　きょとん


#雪翔
≪…まぁ、いいか≫[np]

あまり制作途中のものを見られたくはないが、ここで断るのもおかしいと思い、頷く。[np]

;[voice2 vf2="mizuka/mizuka1-4_5.ogg"]
#美寿花:r_egao
「やった！　じゃあ、ちょっと失礼しまーす」[np]
;表情　egao

[chara_config pos_mode="false" ]
;一枚絵 （美寿花が雪翔の肩に手を置いて、肩越しにPC画面を覗き込む構図）
;[layopt layer="0" visible="true"]
;[image layer="0" x="0" y="0" width="1280" height="720" storage="singlepic/1_4/bishou.png" time="1000"]
;[better_wait time="1000"]

[CG f="1_4_bishou"]
[chara_hide name="mizuka" time="10" ]

そう言って、俺のすぐ後ろまで美寿花が近づいてくる。[np]
それと同時に、俺の肩にそっと手が置かれた。[np]
;能力発動音
[playse_ability_on]
;修正済み 次の文字表示を音声が鳴りやむまで待ってほしい（つぶ）

#雪翔
≪ん…？≫[np]

なんだ、今の…？[np]
ほんの少しの違和感。[np]

[CG f="1_4_kyoton"]
;[backlay layer="0"]
;[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/1_4/kyoton.png"]
;[trans layer="0" time="1000" method="fadeIn"]
;[better_wait time="1000"]
;[voice2 vf2="mizuka/mizuka1-4_6.ogg"]
#美寿花
「へぇ、こんな感じで作ってるんだ…」[np]
;表情　きょとん


目を見開く俺を気にすることなく、美寿花は画面を見つめ続けている。[np]
…気の、せいか？[np]
割とマジで疲れてるかもしれない、とちょっと自分が心配になる。[np]

;[voice2 vf2="mizuka/mizuka1-4_7.ogg"]
#美寿花
「…あれ、もしかしてこれ…歌詞付き？」[np]
;表情　きょとん


美寿花の視線の先は、ソフトと一緒に開いているメモ帳。[np]
そこには、冷静になってみると全身がむず痒くなるような文字の羅列が打ち込まれてある。[np]
#雪翔
（…し、しまった…）[np]
作曲画面を見られるのはまだいいが、流石に歌詞まで見られるのは恥ずかしすぎる…[np]

;[voice2 vf2="mizuka/mizuka1-4_8.ogg"]
#美寿花
「これも自分で書いたの？　すごい…」[np]
;表情　きょとん



#雪翔
≪……≫[np]

素直な誉め言葉に、思わず視線を逸らす。[np]

#雪翔
≪…すごくなんか、ない…
こんな歌詞、書いたって意味なんかないし…≫[np]
;修正済み 文字送りを一つ消しました

つい、心の言葉が漏れ出る。[np]
歌は、声があって初めて成立するものだ。[np]
…でも、俺には…[np]

;[backlay layer="0"]
;[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/1_4/bishou.png"]
;[trans layer="0" time="1000" method="fadeIn"]
;[better_wait time="1000"]
[CG f="1_4_bishou"]
;[voice2 vf2="mizuka/mizuka1-4_9.ogg"]
#美寿花
「意味ないことなんてないよ。この歌詞が、少年君の『声』なんでしょ？」[np]
;表情　微笑


‥‥‥[np]
…？[np]
彼女の、独り言だと思った。[np]
ただ、悔しいのが俺の表情に出てて、それに反応して言った言葉なんだと…[np]
…でも、今のは…[np]


;[backlay layer="0"]
;[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/1_4/egao.png"]
;[trans layer="0" time="1000" method="fadeIn"]
;[better_wait time="1000"]
[CG f="1_4_egao"]
;[voice2 vf2="mizuka/mizuka1-4_10.ogg"]
#美寿花
「やっと聞けたね。君の声」[np]
;差分 笑顔


#雪翔
≪…なん、で…？≫[np]

;[backlay layer="0"]
;[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/1_4/bishou.png"]
;[trans layer="0" time="1000" method="fadeIn"]
;[better_wait time="1000"]
[CG f="1_4_bishou"]
;[voice2 vf2="mizuka/mizuka1-4_11.ogg"]
#美寿花
「…ごめんね、雪翔君。私、薄谷教授から聞いてたんだ」[np]
;表情　悲しみ？　笑顔？

;[backlay layer="0"]
;[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/1_4/kanashi.png"]
;[trans layer="0" time="1000" method="fadeIn"]
;[better_wait time="1000"]
[CG f="1_4_kanashi"]
;[voice2 vf2="mizuka/mizuka1-4_12.ogg"]
#美寿花
「…君が、声を出せないこと」[np]
;差分 悲しみ


#雪翔
≪‥‥‥≫[np]

そう。俺の声は数年前に、死んでいる。[np]
あの事故で…母親を失ったショックなのか、俺は声を出すということができなくなっていたのだ。[np]
…だから、俺が喋ろうとしても、それが人に届くことはない。[np]
…そのはず、なのに。[np]

;[backlay layer="0"]
;[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/1_4/magao.png"]
;[trans layer="0" time="1000" method="fadeIn"]
;[better_wait time="1000"]
[CG f="1_4_magao"]
;[voice2 vf2="mizuka/mizuka1-4_13.ogg"]
#美寿花
「私はね、相手が何を伝えようとしているか、それが分かるんだ」[np]
;（差分 真顔）


#雪翔
≪…心が、読める…ってことか？≫[np]

俺の『言葉』に、美寿花は首を横に振って『反応』する。[np]

;[voice2 vf2="mizuka/mizuka1-4_14.ogg"]
#美寿花
「そんな大したものじゃないよ。その人が伝えようって意志を持った言葉しか聞くことはできない」[np]

;[backlay layer="0"]
;[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/1_4/bishou.png"]
;[trans layer="0" time="1000" method="fadeIn"]
;[better_wait time="1000"]
[CG f="1_4_bishou"]
;[voice2 vf2="mizuka/mizuka1-4_15.ogg"]
#美寿花
「それに、相手に触れてないと効果はないしね」[np]

;[backlay layer="0"]
;[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/1_4/kanashi.png"]
;[trans layer="0" time="1000" method="fadeIn"]
;[better_wait time="1000"]
[CG f="1_4_kanashi"]
;[voice2 vf2="mizuka/mizuka1-4_16.ogg"]
#美寿花
「…だから、大抵の人には使ってもあまり意味はないんだけど…」[np]
;差分 悲しみ

;[backlay layer="0"]
;[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/1_4/magao.png"]
;[trans layer="0" time="1000" method="fadeIn"]
;[better_wait time="1000"]
[CG f="1_4_magao"]
;[voice2 vf2="mizuka/mizuka1-4_17.ogg"]
#美寿花
「私なら、君が自分の声を取り戻すまで、『その代わり』ができる」[np]
;表情　自信


#雪翔
≪…俺、の…≫[np]

;[backlay layer="0"]
;[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/1_4/bishou.png"]
;[trans layer="0" time="1000" method="fadeIn"]
;[better_wait time="1000"]
[CG f="1_4_bishou"]
;[voice2 vf2="mizuka/mizuka1-4_18.ogg"]
#美寿花
「少年君はさ、夢とかある？」[np]
;表情　きょとん


夢。[np]
自分の声を、取り戻したい。[np]
人と、会話をしてみたい。[np]
…そして、[np]

#雪翔
≪…作るだけじゃなくて、自分で、歌ってみたい≫[np]

;[backlay layer="0"]
;[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/1_4/egao.png"]
;[trans layer="0" time="1000" method="fadeIn"]
;[better_wait time="1000"]
[CG f="1_4_egao"]
;[voice2 vf2="mizuka/mizuka1-4_19.ogg"]
#美寿花
「いいじゃん！」[np]
;表情　egao

;[voice2 vf2="mizuka/mizuka1-4_20.ogg"]
#美寿花
「あ、その時は私も一緒に歌ってもいい？　さっきの歌詞、すっごいよかったし」[np]
;表情　egao


#雪翔
≪別に、いいけど…≫[np]

言い出しておいてなんだが、やっぱり人に歌詞を見られるのは恥ずかしい。[np]

;[voice2 vf2="mizuka/mizuka1-4_21.ogg"]
#美寿花
「じゃ、少年君の目標も聞けたことだし…」[np]
;表情　


#雪翔
≪…あ、ちょっといいか？≫[np]

;[backlay layer="0"]
;[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/1_4/kyoton.png"]
;[trans layer="0" time="1000" method="fadeIn"]
;[better_wait time="1000"]
[CG f="1_4_kyoton"]
;[voice2 vf2="mizuka/mizuka1-4_22.ogg"]
#美寿花
「ん？」[np]
;表情　kyoton


#雪翔
≪その、『少年君』っていうの、ちょっとむず痒いっていうか…≫[np]

;[voice2 vf2="mizuka/mizuka1-4_23.ogg"]
#美寿花
「ああ、だって君、どうも同い年って感じがしなくて…」[np]


それはまぁ、分かる。俺も美寿花とは真逆の意味で同い年とは思えない。[np]

;[backlay layer="0"]
;[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/1_4/egao.png"]
;[trans layer="0" time="1000" method="fadeIn"]
;[better_wait time="1000"]
[CG f="1_4_egao"]
;[voice2 vf2="mizuka/mizuka1-4_24.ogg"]
#美寿花
「…じゃあ、これからしばらくの間『君の声』として…よろしく、雪翔君」[np]
;表情　笑顔


#雪翔
≪…よろしく≫[np]

まだ自分の言葉に相手が反応するということにはどうにも慣れないが…[np]
…それでも、悪い気はしなかった。[np]

;ここまで一枚絵
[fadeoutbgm time=2000]

[if exp="tf.is_skip !== true"]
    [bg storage="makkuro.jpg" time="10" ]
    [chara_hide_all time="1000" wait="true"]
    ;[backlay layer="0"]
    ;[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" folder="bgimage" storage="makkuro.jpg"]
    ;[trans layer="0" time="4000" method="fadeIn"]
    ;[wt]
[else]
    [bg storage="makkuro.jpg" time="10" ]
    [chara_hide_all time="10" wait="true"]
    ;[backlay layer="0"]
    ;[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" folder="bgimage" storage="makkuro.jpg"]
    ;[trans layer="0" time="10" method="fadeIn"]
    ;[wt]
[endif]

;修正後 ここに待ち時間を設定してほしい
;背景 黒
;[voice2 vf2="roz/roz1-4_1.ogg"]
#ロズ
「なぁ、ラズ」[np]

;[voice2 vf2="laz/laz1-4_1.ogg"]
#ラズ
「なんですの、ロズ」[np]

;[voice2 vf2="roz/roz1-4_2.ogg"]
#ロズ
「うちら、きょうずっっっっっっとミュート状態やったけど…」[np]

;[voice2 vf2="laz/laz1-4_2.ogg"]
#ラズ
「…完全に、忘れられてますわね…」[np]

;修正前 メッセージボックスがフェードアウトしてほしい（黒を上からフェードインすれば行ける？）
;@layopt layer="message0" visible="false"

[chara_config pos_mode="true" ]
[vostop]
[scenejumpNormal sc="2n1.ks"]

