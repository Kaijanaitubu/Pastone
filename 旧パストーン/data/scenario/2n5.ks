*start
;rタグ整理、？と！の後のスペース追加、名前表示残留修正済み（つぶ）

[startoption]
;2-5のボイス音でかいです。
;背景 空 夕方
[bg storage="road_evening.png" time="10"]

[anim layer="message0" time="10" opacity="255"]
[layopt layer="fix" time="10" opacity="255" ]

[chara_show name="mizuka" top="20" storage="chara/mizuka/akire.png" wait="true"]
;修正済み　表情呆れに変更(添田)
[afterjumpmaskNormal]

[playbgm storage="nc67412.mp3" volume="30" ]

[voice1 vf1="mizuka/mizuka2-5_1.ogg"]
#美寿花
「ほんとうにごめん…」[np]
;表情 申し訳ない


#雪翔
≪いや、別に大丈夫だからさ…≫[np]
;背景 通学路 夕方

帰り道、何度目かの謝罪を美寿花は口にする。[np]

[voice2 vf2="mizuka/mizuka2-5_2.ogg"]
#美寿花:tereawate
「確かにあの時は強烈な睡魔に襲われてたのは事実だけど、まさか本当に寝ちゃうとは自分でも思わなかったというか…」[np]
;表情 照れ慌て
;修正済み　表情照れ照れに変更(添田)

[voice2 vf2="mizuka/mizuka2-5_3.ogg"]
#美寿花:tereakire
「しかもその…膝枕…とかしてもらっちゃって、なんかもう情けない限りで…」[np]
;表情 照れ呆れ


こんな感じで、さっきからテンパったり急に落ち込んだりと、大忙しである。[np]
…いや、うん。膝枕のことも覚えてるのはこっちとしても恥ずかしいんだが…[np]

#雪翔
（もうちょっと他にやりようあったんじゃないのか！？）[np]
#雪翔
（床に寝かせるのがダメだとしても、あそこまですることはなかっただろ…）[np]

自分以上に慌ててる美寿花を見て、俺も冷静になって昼の行動を振り返ってしまう。[np]

[voice2 vf2="mizuka/mizuka2-5_4.ogg"]
#美寿花:teremesorashi_2
「それに…」[np]
[voice2 vf2="mizuka/mizuka2-5_5.ogg"]
#美寿花:teremesorashi
「その、なにより…聞いちゃいけないことがもしかしたら聞こえちゃったりとかも…」[np]
;表情 照れ目逸らし


#雪翔
≪え？≫[np]

[voice2 vf2="mizuka/mizuka2-5_6.ogg"]
#美寿花:panic
「い、いや。何でもないです…」[np]
;表情 混乱

[chara_mod name="mizuka" face="tereakire" cross="false" ]

あまりにも申し訳なかったのか、小声だったのでよく聞き取れなかった。[np]
…なんか俺、気づかない内にやらかしたのだろうか…？[np]

[voice2 vf2="mizuka/mizuka2-5_7.ogg"]
#美寿花:shinpai_2
「あの…雪翔君、今日って時間ある？」[np]
;表情 shinpai_2


#雪翔
≪…？ま、まぁあるけど…≫[np]

唐突な質問に、俺は戸惑いながらも頷きを返す。[np]

[voice2 vf2="mizuka/mizuka2-5_8.ogg"]
#美寿花:mesorashi
「お詫び、っていうのもおかしいかもだけど…」[np]
;表情 lookaway

[voice2 vf2="mizuka/mizuka2-5_9.ogg"]
#美寿花:uwame
「雪翔君の行きたいとこ、一緒に行ってみたいなぁーって…」[np]
;表情 please


そう言って、俺の肩に触れる美寿花。[np]

#雪翔
≪一緒にって…もう体調は大丈夫なのか？≫[np]

[voice2 vf2="mizuka/mizuka2-5_10.ogg"]
#美寿花:egao_2
「うん。全然問題なし！ だから遠慮しなくてもいいよ？」[np]
;表情 egao_2


#雪翔
≪いや遠慮してるわけじゃないけど…別に行きたいところって言われてもなぁ…≫[np]

[voice2 vf2="mizuka/mizuka2-5_11.ogg"]
#美寿花:bishou
「ほら、なんていうか…一人じゃ行きにくいところってあるでしょ？　雪翔君の場合は声の事もあるだろうしさ」[np]
;表情 bishou

[voice2 vf2="mizuka/mizuka2-5_12.ogg"]
#美寿花:egao
「でも、今は私もいるし…せっかくなら…ね？」[np]
;表情 egao


…まぁ、美寿花の言ってる事も一理あるが…これといって思いつく場所はない。[np]

#雪翔
≪あー…じゃあ、美寿花はないのか？　行きたい場所≫[np]

参考がてら聞いてみると、美寿花は首を捻る。[np]

[voice2 vf2="mizuka/mizuka2-5_13.ogg"]
#美寿花:kangae
「私？　私は〜[r]
…確かに、すぐ思いつかないねこれ」[np]
;表情 kangae

[voice2 vf2="mizuka/mizuka2-5_14.ogg"]
#美寿花:harikiri
「…強いて言うなら、近くにある水族館かな？　あれも一人じゃ中々ね…」[np]
;表情 （上がり眉、きらきら目、大きい口）　張り切り


#雪翔
≪…なるほど…でも放課後に行くような場所じゃないな≫[np]

[voice2 vf2="mizuka/mizuka2-5_15.ogg"]
#美寿花:bishou
「そうだねぇ…って、今は雪翔君だよ。まぁ何もないなら無理に言わなくてもいいけど…」[np]
;表情 uneasy
;修正済み 美寿花の表情をやわらかいものに変更(添田)

;修正済み 美寿花の表情をやわらかいものに変更


#雪翔
≪う～ん…≫[np]

‥‥‥[np]
…あっ[np]
あった。行きたい場所。[np]

#雪翔
≪…カラオケ…とか？≫[np]

[voice2 vf2="mizuka/mizuka2-5_16.ogg"]
#美寿花:kyoton
「カラオケ？」[np]
;表情 kyoton


#雪翔
≪まぁ、俺は歌えないんだけど…前から、ちょっと行ってみたいって思ってたんだ。美寿花の歌も聞いてみたいし…≫[np]

[voice2 vf2="mizuka/mizuka2-5_17.ogg"]
#美寿花:straight
「歌、かぁ…うん」[np]
;表情 straight

[voice2 vf2="mizuka/mizuka2-5_18.ogg"]
#美寿花:egao_2
「じゃあそうしよう！　ちょうどいいし！」[np]
;表情 egao_2

#雪翔
≪…ん？ちょうどいい？≫[np]

[voice2 vf2="mizuka/mizuka2-5_19.ogg"]
#美寿花:harikiri
「気にしない気にしない。あ、でも流石に私一人で歌うのもあれだし…そうだ！」[np]
;表情 harikiri


そこで、美寿花は俺の肩から手を離し携帯を取り出す。[np]

[voice2 vf2="mizuka/mizuka2-5_20.ogg"]
#美寿花:shinpai
「…出るかなぁ…」[np]
;表情 shinpai


そう言いながら、携帯を操作し耳に当てた。[np]

[fadeoutbgm time=2000]
;背景 黒
…数十分後。[np]

[bgchangemask]

;背景 カラオケ
[bg storage="karaoke.png" time="10"]

;[camera x="640" y="360"]

[chara_mod name="mizuka" face="egao"]

[bgchangemask_off]

[playbgm storage="mellow_bell.mp3" volume="35" ]

[voice2 vf2="mizuka/mizuka2-5_21.ogg"]
#美寿花
「何だかんだで私も初めてなんだよねぇ～カラオケ！」[np]
;表情　egao


;カラオケ店内
そう言って、美寿花はソファー席に座る。[np]
……[np]
…これが、カラオケ…[np]
いや、店内の写真も何回か見たことはあるし、そこまで驚きはしないんだが…[np]
…俺が人とこんなところに遊びに来ている。という状況に圧倒されていた。[np]
…あと、何より気になるのが…[np]
‥‥‥[np]

[voice2 vf2="mizuka/mizuka2-5_22.ogg"]
#美寿花:kyoton
「[ruby text="・"]二[ruby text="・"]人[ruby text="・"]と[ruby text="・"]も、なんでそこでボーっとしてるの？」[np]
;表情　kyoton


[chara_show top="40" name="ayana" face="akire"]

[voice2 vf2="ayana/ayana2-5_1.ogg"]
#文永
「…そりゃ呆気にもとられるよ」[np]
;表情　呆れ

[voice2 vf2="ayana/ayana2-5_2.ogg"]
#文永:tameiki
「家出したはずの姉に突然来いって言われて、何かと思えばカラオケに連れていかれたらさ」[np]
;表情　溜息


俺の隣…さっき美寿花が電話で呼んでいた相手が、恨めしそうに睨む。[np]

[voice2 vf2="mizuka/mizuka2-5_23.ogg"]
#美寿花:kushou
「ごめんごめん。文永もそういえば歌うの好きだったなーって思い出して…」[np]
;表情　kushou

[voice2 vf2="ayana/ayana2-5_3.ogg"]
#文永:jitome
「つまり数合わせで呼んだ、と…」[np]
;表情　ジト目


[voice2 vf2="mizuka/mizuka2-5_24.ogg"]
#美寿花:egao_2
「…って、この子の事、まだ紹介してなかったよね」[np]
;表情　egao_2

[voice2 vf2="mizuka/mizuka2-5_25.ogg"]
#美寿花:egao
「常葉[ruby text="あや"]文[ruby text="な"]永。私の妹だよ」[np]
;表情　egao


#雪翔
≪…はぁ、妹さん…≫[np]

話の流れで、何となく察しはついていたが…[np]

#雪翔
≪俺も自己紹介…≫[np]

[voice2 vf2="ayana/ayana2-5_4.ogg"]
#文永:mewofusetamuhyoujou
「初めまして、雪翔さん。いつも姉がお世話になっています」[np]
;表情　目を伏せた無表情（ラズのお辞儀てきな感じ...？）


#雪翔
≪いや、別に…
…ん？なんで俺の名前…≫[np]

[voice2 vf2="ayana/ayana2-5_5.ogg"]
#文永:kushou
「あ、すいません。いきなり名前で呼んでしまって…薄谷さんと区別がつかなくなるのでつい…」[np]
;表情　慌て


#雪翔
≪薄谷さん…親父の知り合いか…≫[np]

まぁ、美寿花の母親と知り合いだっていうし、おかしな話では…ない…のか？[np]

[voice2 vf2="mizuka/mizuka2-5_26.ogg"]
#美寿花:kyoton
「まぁまぁ、まず二人とも座ろうよ。時間なくなっちゃうよ？」[np]
;表情　kyoton


#雪翔
≪あ、ああ≫[np]

そういえば、時間制限があるんだっけ…[np]
若干の違和感を飲み込み、俺も美寿花の隣に座る。[np]

[voice2 vf2="ayana/ayana2-5_6.ogg"]
#文永:konwaku
「…って、普通に流しちゃったけど私も歌うの？」[np]
;表情　困惑（驚き？）

[voice2 vf2="mizuka/mizuka2-5_27.ogg"]
#美寿花:egao
「そうだよ？　というか、そのために呼んだんだから」[np]
;表情　egao

[voice2 vf2="ayana/ayana2-5_7.ogg"]
#文永:awate
「いや、初対面の人と歌うのは流石に抵抗あるんだけど…？」[np]
;表情　慌て

[voice2 vf2="mizuka/mizuka2-5_28.ogg"]
#美寿花:bishou
「まぁ、たまにでいいよ。私も歌うし」[np]
;表情　


そう言って、美寿花は俺に選曲用のタッチパネルを渡す。[np]

[voice2 vf2="mizuka/mizuka2-5_29.ogg"]
#美寿花:egao
「さて少年君、何から歌う？」[np]
;表情　


…ん？[np]
言葉の意味が一瞬よく分からなかった。[np]

#雪翔
≪…あの、美寿花？　俺は歌えないって…≫[np]

声が出ないやつが歌っても意味がないだろうし、と俺は首を横に振る。[np]
…しかし、美寿花は引かなかった。[np]

[voice2 vf2="mizuka/mizuka2-5_30.ogg"]
#美寿花:bishou
「練習だよ、君の…『自分の声で歌いたい』って目標のための」[np]

[voice2 vf2="mizuka/mizuka2-5_31.ogg"]
#美寿花:itazura
「…って言っても、流石に一人で歌うのは難しそうだから…」[np]
;表情　


そう言って、俺の肩に触れる美寿花。[np]

[voice2 vf2="mizuka/mizuka2-5_32.ogg"]
#美寿花:egao_2
「『一緒に』歌お？それなら、私に届くから」[np]
;表情　


#雪翔
≪……≫[np]
#雪翔
≪…分かったよ≫[np]

美寿花の言葉の意味を、ようやく理解する。[np]
…『ちょうどいい』ってこういうことか…[np]

[voice2 vf2="ayana/ayana2-5_8.ogg"]
#文永:jitome
「…お姉ちゃんが男とイチャイチャしてる…」[np]
;修正済み 表情をジト目に変更
;表情　きょとん


[voice2 vf2="mizuka/mizuka2-5_33.ogg"]
#美寿花:odoroki_正面
「してないよ！？　どこをどう見たらそうなるのさ！？」[np]
;修正済み 表情を驚いてる感じの物に変更(添田)

[voice2 vf2="ayana/ayana2-5_9.ogg"]
#文永:konwaku
「やっぱり私、来なかった方がよかったんじゃ…」[np]
;表情　困り顔 

[voice2 vf2="mizuka/mizuka2-5_34.ogg"]
#美寿花:kushou
「待って帰ろうとしないで！　文永とも一緒に歌うから～！！」[np]
;表情　落ち込み？苦笑？

;背景 空 夕方（夜でもいいかも？） ゆっくりと上にスライド（これはやめる）
;上にフェード


[stopbgm]

[layopt layer="0" visible="true"]
[image layer="0" x="0" y="0" width="1280" height="720" storage="singlepic/2-5/nightsky.png" time="1000"]

…[np]
…俺の軽い言葉で決まったカラオケだったが…[np]
結論から言うと、楽しかった。[np]
常葉姉妹の歌の上手さに驚いたり、途中からロズラズが乱入して、二人を知らない文永が困惑しっぱなしだったり…[np]
なにより、久しぶりに歌を歌えた。[np]
声は出なかったが…それでも、楽しかった。[np]
カラオケだけじゃない。[np]
美寿花と大学にいくのも、一緒にお昼を食べるのも…悪くない。と。[np]
そう思った、一日だった。[np]

[mask effect="fadeInLeftBig"]

[chara_hide_all time="10"]

[scenejumpNormal sc="3n1.ks"]