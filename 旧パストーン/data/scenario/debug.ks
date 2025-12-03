*start
@layopt layer="message" visible="true"
[nowait]
[link storage="1-1.ks"]1-1　[endlink]
[link storage="1-2.ks"]1-2　[endlink]
[link storage="1-3.ks"]1-3　[endlink]
[link storage="1-4.ks"]1-4　[endlink][r]

[link storage="2-1.ks"]2-1　[endlink]
[link storage="2-2.ks"]2-2　[endlink]
[link storage="2-3.ks"]2-3　[endlink]
[link storage="2-4.ks"]2-4　[endlink]
[link storage="2-5.ks"]2-5　[endlink][r]

[link storage="3-1.ks"]3-1　[endlink]
[link storage="3-2.ks"]3-2　[endlink]
[link storage="3-3.ks"]3-3　[endlink]
[link storage="3-4.ks"]3-4　[endlink]
[link storage="3-5.ks"]3-5　[endlink][r]

[link storage="4-1.ks"]4-1　[endlink]
[link storage="4-2.ks"]4-2　[endlink]
[link storage="4-3.ks"]4-3　[endlink]
[link storage="4-4.ks"]4-4　[endlink][r]

[link storage="5-1.ks"]5-1　[endlink]
[link storage="5-2.ks"]5-2　[endlink]
[link target=*go]5-3　[endlink]
[link storage="5-4.ks"]5-4　[endlink][r]

[link storage="title.ks"]title　[endlink][r]
[endnowait]

[s]

*go
[startoption]

@jump storage=5-2.ks target=*5-3

