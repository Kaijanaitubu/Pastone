*start
;rタグ整理、？と！の後のスペース追加、名前表示残留修正済み（つぶ）
[startoption]

;背景 夕焼けの空
[bg storage="eveningsky.png"]

[afterjumpmaskNormal]

[wait time="800"]

[bg storage="road_evening.png"]

[playbgm storage="nc67412.mp3" volume="30" ]

[chara_show name="mizuka" face="shinpai" top="20"]
[chara_show name="ayana" face="akire" top="40"]

#美寿花
[voice2 vf2="mizuka/mizuka3-2_1.ogg"]
「最近、結構暗くなるの早くなってきたから気を付けてよ？」[np]
;shinpai


#文永
[voice2 vf2="ayana/ayana3-2_1.ogg"]
「はいはい、大丈夫だから」[np]
;呆れ

;修正前 BGMわからん ☆



カラオケで散々歌った後。心配する美寿花を軽くあしらい、文永は自転車に乗って帰っていく。[np]

[chara_hide name="ayana"]

#美寿花:kangae
[voice2 vf2="mizuka/mizuka3-2_2.ogg"]
「さて、今日のご飯は～…あれ、家に何残ってたっけ…」[np]
;考え



ぶつぶつ、と夕飯について考える美寿花[np]

#雪翔
≪‥‥‥≫[np]

一方、俺はまた別のことで頭を悩ませていた。[np]

[fadeoutbgm time="2000"]

[bgchangemask]

[chara_hide_all time="10"]

;背景 雪翔の自室
[bg storage="myroom_night.png" time="10" ]

[chara_show name="RozLaz" top="10" left="200" width="753.12" height="795.614" face="roz_kyoton" time="10"]

[bgchangemask_off]
;修正済み（担当辻） ロズラズの表示位置 ☆
[playbgm storage="RozLaz.mp3" volume="15" ]

#ロズ
[voice2 vf2="roz/roz3-2_1.ogg"]
「なるほどなぁ〜。美寿花の誕生日…」[np]
;腕組み ☆

[chara_mod name="RozLaz" face="laz_kyoton"]
#ラズ
[voice2 vf2="laz/laz3-2_1.ogg"]
「贈り物、ですか…ご主人様の口からそんな悩みを聞く日が来るとは…」[np]



#雪翔
≪いや別にいいだろ来ても。…って言いたいけど、今までが今までだから否定しきれないな…≫[np]

夜、自室で俺らは作戦会議を開いていた。[np]
…相談するような相手がAIしかいないというのも、悲しい話だが。[np]

[chara_mod name="RozLaz" face="roz_komari"]
#ロズ
[voice2 vf2="roz/roz3-2_2.ogg"]
「やっぱ美寿花の好きなものとかがええんやないの？ 何かないん？」[np]
;困り顔



#雪翔
≪好きなもの、か…好きなもの…≫[np]

‥‥‥[np]
…あれ…あいつの好きなものってなんだ…？[np]

[chara_mod name="RozLaz" face="laz_bishou"]
#ラズ
[voice2 vf2="laz/laz3-2_2.ogg"]
「それなら、こう…女性にあげて喜びそうなものとか…」[np]



#雪翔
≪‥‥‥≫[np]

;効果音 キーボードを打つ音
[playse_typing1]

#雪翔
≪女性、プレゼント…≫[np]
[stopse]

[chara_mod name="RozLaz" face="roz_akire"]
#ロズ
[voice2 vf2="roz/roz3-2_3.ogg"]
「ダメやこのマスター、検索しだした…」[np]
;akire



#雪翔
≪しょうがないだろ！　今まで一切こういうことなかったんだから！≫[np]

[chara_mod name="RozLaz" face="laz_kushou"]
#ラズ
[voice2 vf2="laz/laz3-2_3.ogg"]
「まぁ、それは分かりますけども…」[np]



#雪翔
≪あ〜…じゃあ逆に、お前らは何かもらって嬉しいものとかはないのか？≫[np]

AIとはいえ、一応性別は女性だ。[np]
もしかしたら参考になるかもしれない。と藁にも縋る思いで聞いてみる、が…[np]

[chara_mod name="RozLaz" face="laz_akire"]
#ラズ
[voice2 vf2="laz/laz3-2_4.ogg"]
「…と、言われましても…」[np]

[chara_mod name="RozLaz" face="roz_itome_2"]
#ロズ
[voice2 vf2="roz/roz3-2_4.ogg"]
「まずうちら、プレゼントもらっても受け取れへんからな…物理的に…」[np]
;itome2



#雪翔
≪…そりゃそうだな≫[np]

縋った藁は無惨にも粉々になり、振り出しに戻される。[np]

#雪翔
≪‥‥‥≫[np]

[chara_mod name="RozLaz" face="laz_shinpai"]
#ラズ
;[voice2 vf2="laz/laz3-2_5.ogg"]
「‥‥‥」[np]
;shinpai

;[chara_mod name="RozLaz" face="roz_shinpai_2"]
[chara_mod name="RozLaz" face="roz_kushou"]
#ロズ
;[voice2 vf2="roz/roz3-2_5.ogg"]
「‥‥‥」[np]
;修正前 表情苦笑に変更 ☆

[chara_mod name="RozLaz" face="laz_kushou"]
#ラズ
[voice2 vf2="laz/laz3-2_5.ogg"]
「…まぁ、それはそれとして、まず更新終わらせません？」[np]


#雪翔
≪…だな。そうするか≫[np]

結局いい案が浮かぶことはなく、ラズの言葉で一旦会議は中断。[np]
さっさと更新の準備を進めていく。[np]

#雪翔
≪じゃ、始めるぞ≫[np]

[chara_mod name="RozLaz" face="roz_egao"]
[voice2 vf2="roz/roz3-2_5.ogg"]
#ロズ
「了解～」[np]
;smile（itomeの目が通常）

;修正前 ここが重いらしい

[chara_mod name="RozLaz" face="laz_egao"]
[voice2 vf2="laz/laz3-2_6.ogg"]
#ラズ
「いつでもよろしいですわ」[np]



;効果音 クリック
[playse_click_1]

[fadeoutbgm time="2000"]

;AI更新中の表情
[wait time="100"]
[chara_mod name="RozLaz" face="laz_close"]

画面上の開始をクリックすると、『更新中』という文字と進行状態を示すバーが表示される。[np]

#雪翔
≪…さて、更新内容は…≫[np]

[chara_hide_all]

更新中はシステムが停止するので、ラズ達はその間眠ったような状態になる。[np]
なので、その間はどうしても手持無沙汰になってしまい、適当に更新内容のページを流し読みしていく。[np]

#雪翔
≪…特に大きなものは無さ…ん？≫[np]

ふと、読んでいた目がある語に止まる。[np]
違和感…いや、これは既視感だろうか？[np]
そのページの内容は…ラズやロズの元となったAIを作った会社…[np]
EL社の社長について[np]

#雪翔
≪『常葉…永寿郎』…？≫[np]
そこには、5、60代ぐらいの男性が写真付きで紹介されていた。[np]
見覚えはない。そもそもこんな大企業の社長と接点などあるわけがない。[np]
だが、何か…[np]

#雪翔
≪常葉永寿郎…常葉？≫[np]
[bg storage="living.png" time="500"]

[chara_show name="mizuka" face="egao" top="20" time="500"]
#美寿花
『えーと、名前は常葉美寿花。大学1年生だよ』[np]
[chara_hide_all time="500"]

;背景 雪翔の自室
[bg storage="myroom_night.png" time="500"]

#雪翔
≪…あっ！！≫[np]

そうだ！　確か美寿花の上の名前、『常葉』じゃなかったか！？[np]

#雪翔
（…偶然？）[np]

『常葉』という名前の人がそんなにいるとは思えないが…[np]

#雪翔
≪‥‥‥≫[np]

;効果音 通知音 ☆
;[playse storage=通知音]
[playse_phone]


#雪翔
≪うおびっくりした…≫[np]

突然スマホの通知音が鳴り、考え込んでいた頭が現実に戻される。[np]

[playbgm storage="OuchiDay.mp3" volume="20"]

#雪翔
≪…あれ、文永からだ…≫[np]

画面を見ると、そこにはTwineの新規メッセージが。[np]

;修正前 チャット用CG ☆
;修正済み（担当辻） チャット用CG ☆

[layopt layer="0" visible="true"]
[image layer="0" x="0" y="0" width="1280" height="720" storage="singlepic/3-2/チャット画面01.png" time="1000"]


#文永
『遅くにすいません。ちょっと夕方の話が気になってしまって』[np]

夕方の話…？[np]
不思議に思っている間に、もう一個届く。[np]

[backlay layer="0"]
[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/3-2/チャット画面02.png"]
[trans layer="0" time="500" method="fadeIn"]
[wt]
#文永
『お姉ちゃんの誕生日プレゼント、どうするんですか？』[np]

あ、ああそのことか…[np]
正直な話、社長の件で頭からすっ飛んでいた。[np]

#雪翔
≪今ここで聞くのは…流石に空気読めてなさすぎるな≫[np]

少し考えて、俺はメッセージを送る。[np]

[backlay layer="0"]
[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/3-2/チャット画面03.png"]
[trans layer="0" time="500" method="fadeIn"]
[wt]
#雪翔
『まだ全然決まってない…というか、めっちゃ悩んでる』[np]

…文、おかしくないよな…？　変な感じになってないよな…？[np]

家族以外の人と初めてのTwineでの会話に緊張し、余計な心配が出てくる。[np]

[backlay layer="0"]
[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/3-2/チャット画面04.png"]
[trans layer="0" time="500" method="fadeIn"]
[wt]
#雪翔
『文永は、なにか知ってるか？　美寿花の好きなもの』[np]

続けてそう送る。[np]

[backlay layer="0"]
[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/3-2/チャット画面05.png"]
[trans layer="0" time="500" method="fadeIn"]
[wt]
#文永
『好きなもの、ですか？』[np]

[backlay layer="0"]
[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/3-2/チャット画面06.png"]
[trans layer="0" time="500" method="fadeIn"]
[wt]
#文永
『そうですね…動物とか結構好きだったと思いますよ』[np]

#雪翔
≪動物…動物か…≫[np]

…確かに好きそうだが…プレゼントには向いてないな…[np]

[backlay layer="0"]
[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/3-2/チャット画面07.png"]
[trans layer="0" time="500" method="fadeIn"]
[wt]
#文永
『あ、じゃあ水族館とかどうです？　ほら、前に言ってたじゃないですか』[np]

[backlay layer="0"]
[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/3-2/チャット画面08.png"]
[trans layer="0" time="500" method="fadeIn"]
[wt]
#雪翔
『…なるほど。その手があったか』[np]

そういえばカラオケの時、確かに水族館に行ってみたいと言っていた。[np]
…そっか。プレゼントと言っても何か物を送るだけじゃないのか。[np]

[backlay layer="0"]
[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/3-2/チャット画面09.png"]
[trans layer="0" time="500" method="fadeIn"]
[wt]
#文永
『チケット、こっちで取っておいた方がいいですか？』[np]

[backlay layer="0"]
[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/3-2/チャット画面10.png"]
[trans layer="0" time="500" method="fadeIn"]
[wt]
#雪翔
『そうしてくれると助かる。あ、お金は次会った時に払うから』[np]

何から何まで気を回してくれて、本当に感謝でしかない。[np]
…お礼に何か…あ、そうだ。[np]

[backlay layer="0"]
[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/3-2/チャット画面11.png"]
[trans layer="0" time="500" method="fadeIn"]
[wt]
#雪翔
『文永は木曜空いてる？』[np]

せっかく行くなら3人で、と思ったのだが…[np]

[backlay layer="0"]
[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/3-2/チャット画面12.png"]
[trans layer="0" time="500" method="fadeIn"]
[wt]
#文永
『いや、私行く必要ないでしょ…』[np]

[backlay layer="0"]
[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/3-2/チャット画面14.png"]
[trans layer="0" time="500" method="fadeIn"]
[wt]
#文永
『今日も言いましたけど、二人で行って来たらいいじゃないですか。雪翔さんが、お姉ちゃんにあげるプレゼントなんですから』[np]

#雪翔
≪…それもそうか≫[np]

[backlay layer="0"]
[image layer="0" x="0" y="0" width="1280" height="720" page="back" visible="true" storage="singlepic/3-2/チャット画面15.png"]
[trans layer="0" time="500" method="fadeIn"]
[wt]
文永に『そうする』と送り、ベッドに倒れる。[np]
水族館かぁ…俺も行ったことないし、楽しみだ。[np]
…それはそれとして…[np]
‥‥‥[np]

#雪翔
≪…どう誘えばいいんだ？　これ…≫[np]

[scenejumpNormal sc="3n3.ks"]