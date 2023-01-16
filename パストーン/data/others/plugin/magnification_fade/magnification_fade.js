console.log("拡大時のフェードプラグインロード");

// グローバル領域にPASTONEオブジェクトを確保
if (typeof window.PASTONE === "undefined") {
    window.PASTONE = {};
    PASTONE.kag = TYRANO.kag;
    PASTONE.tag = {};
}

// 被セーブ領域にpastoneオブジェクトを確保
if (typeof TYRANO.kag.stat.pastone === "undefined") {
    TYRANO.kag.stat.pastone = {};
}

(function() {

    if (typeof PASTONE.tag.pastone !== "undefined") {
        console.log("拡大フェードプラグインはすでに読み込まれています。");
        return;
    }

    // 参照を確保
    var TG = TYRANO.kag;
    var sf = TG.variable.sf;
    var f = TG.stat.f;
    var tf = TG.variable.tf;

    // タグを定義
    //#[magnification_fade]
    PASTONE.tag["magnification_fade"] = {
        start: function() {

            console.log("タグ使用されました")
            this.kag.ftag.nextOrder();
        }
    };

    var master_tag = TG.ftag.master_tag;
    for (var tag_name in PASTONE.tag) {
        if (typeof master_tag[tag_name] === "undefined") {
            master_tag[tag_name] = object(PASTONE.tag[tag_name]);
            master_tag[tag_name].kag = TG;
        }
    }
}());