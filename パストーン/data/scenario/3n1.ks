*start
;rタグ整理、？と！の後のスペース追加、名前表示残留修正済み（つぶ）

[startoption]

[bg storage="daysky.png" time=0]

[afterjumpmaskNormal]

;修正済み（担当辻） vostopが全体についてない
2週間が経過した。[np]
最初はドタバタしていた美寿花との同居生活も、今ではすっかり慣れ平穏な日々が過ぎていく。[np]
大学も、まだまだ慣れないことも多いが、それでも問題なく通えていた。[np]

;背景 講義室

[bg storage="classroom.png" time=1000]

;効果音 チャイム
[playse_schoolchaimu]


#雪翔
≪…終わった…≫[np]
[playbgm storage="Bonyari_Hitsuji.mp3" volume="55" ]


授業終了のチャイムが鳴り、重い瞼をこする。[np]
…最近は授業の終わりまで起きられるようになったけど、それでも眠いものは眠い。[np]
せめて内容が少しでも分かればマシになるんだろうが…[np]
#yukito
（…勉強、ちょっとやってみるか…）[np]
せっかく朝から苦労して来ているんだ。ただボーッとしているより断然いい。[np]
そんなことを考え、立ち上がろうとすると…[np]

#ロズ
[voice2 vf2="roz/roz3-1_1.ogg"]
「マスター、ちょい待った」[np]
;立ち絵なし



#雪翔
≪…ん？≫[np]
小さめの声で呼び止められ、その声の主をポケットから出す。[np]



#雪翔
≪…なんだ、ロズか…どうした？≫[np]

;修正済み（担当辻） ロズラズの表示位置の修正
[chara_show name="RozLaz" top="10" left="200" width="753.12" height="795.614" face="roz_shinpai"]
#ロズ
[voice2 vf2="roz/roz3-1_2.ogg"]
「いや、全然気づいてへんみたいやから…」[np]
;表情 shinpai

[chara_mod name="RozLaz" face="roz_neutral"]
#ロズ
[voice2 vf2="roz/roz3-1_3.ogg"]
「美寿花からメッセージが来とるで。講義終わったら大学前集合って」[np]
;表情 neutral



#雪翔
≪あれ…？≫[np]

言われてスマホを見ると、確かにメッセージの通知が一つ。[np]

[chara_mod name="RozLaz" face="roz_okori_2"]
#ロズ
[voice2 vf2="roz/roz3-1_4.ogg"]
「マスター、言われんかったらそのまま帰るつもりやったやろ？」[np]
;表情 okori_2



#雪翔
≪…危なかった…≫[np]

美寿花とは基本的に受ける講義は同じなのだが、選択科目では違う講義になることもしばしば。[np]
[chara_hide name="RozLaz" time="500" wait="false"]


;修正済み（担当辻） 背景変更（彩度低めのリビング？）
[layopt layer="0" visible="true"]
[image name="img" layer="0" x="0" y="0" width="1280" height="720" storage="singlepic/3-1/3-1living.png" time="1000"]
#美寿花
[voice2 vf2="mizuka/mizuka3-1_1.ogg"]
『一人で大丈夫？　しらない人について行かないでよ？』[np]
;表情 worry_3



[free name="img" layer="0" time="500" wait="true"]


…と、美寿花に何だか子供みたいな心配をされたが…[np]

#雪翔
（…まぁ、そもそも声を掛けられる知り合いすらいないからな…）[np]
#雪翔
≪助かったよ。ありがとう≫[np]

;[chara_show name="RozLaz" top="-70" face="roz_akire"]
#ロズ
[voice2 vf2="roz/roz3-1_5.ogg"]
「どういたしまして。はよ行かなどやされるで？」[np]
;表情 akire



ロズは引っ込み、俺は言われた通り校門前に向かう。[np]

[bgchangemask]

;修正済み（担当辻） 背景差し替え
;素材ができたら書き換え
;背景 廊下
[bg storage="rouka.png" time=1000]
;☆


[bgchangemask_off]


[chara_show name="RozLaz" top="10" left="200" width="753.12" height="795.614" face="laz_bow"]
#ラズ
[voice2 vf2="laz/laz3-1_1.ogg"]
「あの…　一つ、よろしいでしょうか？」[np]
;表情 bow

[chara_mod name="RozLaz" face="roz_ge"]
#ロズ
[voice2 vf2="roz/roz3-1_6.ogg"]
「げ」[np]
;表情 ge



;ロズラズのテーマ
;[playbgm storage="" roop=true]☆

次に聞こえたのはラズの声[np]

#雪翔
≪あ、そういえばいなかったなお前…≫[np]

[chara_mod name="RozLaz" face="laz_kyoton"]
#ラズ
[voice2 vf2="laz/laz3-1_2.ogg"]
「ええ。そこのエセ関西AIが黙ってご主人様と話していたので」[np]
;表情 kyoton

[chara_mod name="RozLaz" face="roz_okori"]
#ロズ
[voice2 vf2="roz/roz3-1_7.ogg"]
「誰がエセ関西人や誰が」[np]
;表情 okori



#雪翔
≪はいはいストップ。急がないとだから用件を言ってからじゃれあって≫[np]

;ラズ＆ロズ同時 [ある程度解決]

[chara_config  talk_focus="none"]

[chara_mod name="RozLaz" face="rozlaz"]
#ロズ＆ラズ
[voice2 vf2="laz/laz3-1_3.ogg"]
_　「じゃれあったりなんかしてません！」[r]
「じゃれあったりなんかしてへん！」[np]
;表情 ラズ＆ロズ okori ☆



;[chara_config  talk_focus="brightness"]

…毎回思うが、仲いいよなこいつら。[np]

[chara_mod name="RozLaz" face="laz_akire"]
#ラズ
[voice2 vf2="laz/laz3-1_4.ogg"]
「はぁ…ついさっきなんですが、私たちの更新が来ているそうなので、また夜にでも確認してくださいませ」[np]
;表情 bow



#雪翔
≪ああ、もうそんな時期か。分かった、確認しとく≫[np]

ラズ達はAI。といっても元はプログラムなので当然バグなどがあったら修正される。[np]
しかし、それとは別に年に数回、機能追加のための更新があるのだ。[np]
…といっても『この機能誰が使うんだ？』的なものが多く時間がかかるのも相まって、めんどくさいのが正直なところである。[np]

[bgchangemask]

[chara_hide_all time="10"]
;修正済み 背景変更、校門前（素材待ち）☆
[bg storage="学校外観（加工後）の加工後.png" time="10"]

[bgchangemask_off]

…と、[np]

#雪翔
≪…あれ？≫[np]

そうこうしてる間に校門前についたが…何やら見覚えのある顔が。[np]

[chara_show name="ayana" top="40" face="normal"]
#文永
[voice2 vf2="ayana/ayana3-1_1.ogg"]
「あ…こんにちは」[np]
;表情 smile



#雪翔
≪…美寿花の妹…ええっと…文永、だっけ？≫[np]

…でも、彼女は高校生のはず…何で大学に？[np]

#文永:shinpai
[voice2 vf2="ayana/ayana3-1_2.ogg"]
「あの…お姉ちゃん、いないんですか？　てっきり一緒だと思ってたんですけど…」[np]
;表情 worry



#雪翔
≪…ああー、うん…大体わかった≫[np]

…多分、ここにいるのは俺と一緒の理由だろう。[np]

#文永:tameiki
[voice2 vf2="ayana/ayana3-1_3.ogg"]
「…本当、すいません…うちの姉がいい加減で…」[np]
;表情 ぺこり?☆



俺が首を横に振ると、半ばうんざりした様子で謝る文永。[np]

#文永:kyoton
[voice2 vf2="ayana/ayana3-1_4.ogg"]
「多分、またカラオケに行くつもりで呼んだんだと思うんですが…何も聞いてないですか？」[np]
;表情 kyoton



#雪翔
≪…ああ、そっか。一緒に帰るだけだと思ってたけど…≫[np]

なら、わざわざ文永を呼ぶ必要もないだろうし…[np]

#文永:kanashimi
[voice2 vf2="ayana/ayana3-1_5.ogg"]
「です、よね…」[np]
;表情 悲しみ



#雪翔
≪‥‥‥≫[np]

話すことがなくなったのか、しばし沈黙が場を支配する。[np]

#文永:kushou
[voice2 vf2="ayana/ayana3-1_6.ogg"]
「…その…えっと…Twine、交換しませんか！？」[np]
;表情 kushou



俺は話せないし、別に無理に会話する必要ないかと思っていたが、どうやらそっちが耐えられなくなったらしい。[np]

#文永
[voice2 vf2="ayana/ayana3-1_7.ogg"]
「今は…その、お姉ちゃんもいないので会話も難しいし…！」[np]
;表情 kushou



こういうのに慣れていないのか、若干焦り気味に言葉をまくしたてる。[np]

#雪翔
≪…ハハッ≫[np]

#文永:odoroki
[voice2 vf2="ayana/ayana3-1_8.ogg"]
「…な、何で笑うんですか…？」[np]
;表情 odoroki



#雪翔
≪いや、別に…≫[np]

でも、交換するのは全然…というか、むしろ話せる相手が増えるのは嬉しい。[np]
頷き、さっそくアプリを起動させて、教えてもらったIDを打ち込む。[np]

#文永:normal
[voice2 vf2="ayana/ayana3-1_9.ogg"]
「ありがとうございます…！」[np]
;表情 smile ☆



お礼を言ってから、う〜ん…と数秒の思考の末…[np]

#文永:mojimoji
[voice2 vf2="ayana/ayana3-1_10.ogg"]
「…えっ…と…」[np]
;表情 もじもじ



…再び、沈黙。[np]

#雪翔
≪…典型的な喋り下手だな、この子…≫[np]

このままだと本末転倒なので、こっちから話題を出す。[np]

#雪翔
≪さっき笑った理由だけど≫[np]

#雪翔
≪少しだけ、美寿花に似てるなって思ってさ≫[np]

#文永:kyoton
[voice2 vf2="ayana/ayana3-1_11.ogg"]
「…お姉ちゃんに？」[np]
;表情 kyoton



#雪翔
≪美寿花と初めて会った時にも、同じような空気になって…
さっきみたいに無理やり喋ったり≫[np]

#文永:ushirokurai
[voice2 vf2="ayana/ayana3-1_12.ogg"]
「…ああ…そう…なんですね」[np]
;表情 後ろ暗い



#雪翔
≪あと、焦るとちょっとだけ早口になるところも≫[np]

#文永:kushou
[voice2 vf2="ayana/ayana3-1_13.ogg"]
「うぐっ…それは、自分でも心当たりが…」[np]
;表情 kushou



#文永:ushirokurai
[voice2 vf2="ayana/ayana3-1_14.ogg"]
「…でも、そっか…私、似てるんだ…あの人と…」[np]
;修正済み（担当辻） ここの表情別なのにしたい
;表情 ？ みずかのことをどう思っているかによってかわる？☆



#雪翔
≪…文永？≫[np]

#文永:awate
[voice2 vf2="ayana/ayana3-1_15.ogg"]
「…あ、その……そう！」[np]
;表情 思い付き

#文永:kyoton
[voice2 vf2="ayana/ayana3-1_16.ogg"]
「来週の木曜日ってどうするんですか？」[np]
;表情 kyoton



#雪翔
≪木曜…？　…ああ、そういえば祝日だっけか≫[np]

少しだけ考えてから俺は答える。[np]

#雪翔
≪休みって言っても、特にすることはないな…
もしかしたら美寿花に連れ出されるかもしれないけど…≫[np]

俺の送った文を見ると、何故か文永の顔に？が浮かぶ。[np]

#文永:kushou
[voice2 vf2="ayana/ayana3-1_17.ogg"]
「…いや、えーと…」[np]
;表情 kushou



…あれ？　俺なんか変なこと言っただろうか？[np]

#文永:mojimoji
[voice2 vf2="ayana/ayana3-1_18.ogg"]
「…実は、来週の木曜日、お姉ちゃんの誕生日で…」[np]
;表情 もじもじ



#雪翔
≪…ん？…あ、ああ！そういうことか！！≫[np]

やっと文永の質問の意味を理解する。[np]

#雪翔
≪ご、ごめん…全然知らなくて…≫[np]

#文永:awate
[voice2 vf2="ayana/ayana3-1_19.ogg"]
「い、いえ！　そうですよね！　普通は知りませんよね！　こっちこそすいません！」[np]
;表情 慌て



…あ〜…でも誕生日か…どうしたものか…[np]
お世話になっているから、何かしら贈りたいが…
人へのプレゼントを贈った経験が親しかない…イメージが湧かない…[np]

#雪翔
≪…文永は…≫[np]

[voice2 vf2="mizuka/mizuka3-1_2.ogg"]
「ごめ〜ん！！　遅れたぁぁ！！」[np]



#雪翔＆文永
≪「っ！？」≫[np]

遠くから聞こえる大声に、俺ら二人は揃ってビクッとする。[np]

[chara_show name="mizuka" top="20" face="tsukare"]
#美寿花
[voice2 vf2="mizuka/mizuka3-1_3.ogg"]
「はぁ…はぁ…ごめん。お待たせ…先生に捕まっちゃって…」[np]
;表情 疲労

#文永:kushou
[voice2 vf2="ayana/ayana3-1_20.ogg"]
「ま、まぁそんな待ってないけど…またカラオケ？」[np]
;表情 kushou

#美寿花:kitai
[voice2 vf2="mizuka/mizuka3-1_4.ogg"]
「そうだね。もう一回歌いたいなぁ～って思って…」[np]
;表情 期待のまなざし？

#文永:akire
[voice2 vf2="ayana/ayana3-1_21.ogg"]
「もうそれなら二人で行けばいいじゃん…
ほら、行くなら早く行こ。門限に間に合わないし」[np]
;表情 呆れ



#雪翔
≪へぇ。門限とかあるんだ≫[np]

#美寿花:kushou
[voice2 vf2="mizuka/mizuka3-1_5.ogg"]
「相変わらず厳しいね…」[np]
;表情 kushou

#文永:kyoton
[voice2 vf2="ayana/ayana3-1_22.ogg"]
「本当はお姉ちゃんも門限あるんだけど…？」[np]
;表情 kyoton

#美寿花:egao_2
[voice2 vf2="mizuka/mizuka3-1_6.ogg"]
「私はいいの。家出中だもん」[np]
;表情 egao_2



#雪翔
≪胸を張って言うことじゃないだろそれ…≫[np]

そんなこと言い合いながら、俺たち3人はカラオケへと向かった。[np]

[fadeoutbgm time=2000]

[scenejumpNormal sc="3n2.ks"]
