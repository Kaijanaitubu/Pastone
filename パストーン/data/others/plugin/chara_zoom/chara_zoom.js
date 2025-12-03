// キャラ立ち絵の拡大縮小プラグイン
TYRANO.kag.ftag.master_tag["chara_zoom"] = {
    kag: TYRANO.kag,
    vital: ["name", "scale"],
    pm: {
        name: "",
        scale: "1.0",
        time: "600",
        wait: "true",
        origin_x: "50%",
        origin_y: "50%"
    },
    start: function(pm) {
        // デバッグ: 全キャラの属性を表示
        console.log("=== chara_zoom デバッグ ===");
        console.log("指定されたキャラ名:", pm.name);
        $(".tyrano_chara").each(function(i) {
            var $el = $(this);
            console.log("キャラ" + i + ":", {
                "data-chara-name": $el.attr("data-chara-name"),
                "name": $el.attr("name"),
                "id": $el.attr("id"),
                "class": $el.attr("class")
            });
        });
        
        // キャラ名で要素取得（classの最初の部分がキャラ名）
        var $chara = $(".tyrano_chara").filter(function(){
            var $el = $(this);
            // classから最初のクラス名を取得（キャラ名）
            var classes = $el.attr("class");
            if (classes) {
                var firstClass = classes.split(" ")[0];
                return firstClass === pm.name;
            }
            // フォールバック: data-chara-name, name, id属性もチェック
            return $el.attr("data-chara-name") === pm.name || $el.attr("name") === pm.name || $el.attr("id") === pm.name;
        });
        
        console.log("マッチしたキャラ数:", $chara.length);
        
        // 取得できなければエラーメッセージを表示して終了
        if ($chara.length === 0) {
            console.error("エラー: キャラ名 '" + pm.name + "' に一致する要素が見つかりませんでした");
            TYRANO.kag.ftag.nextOrder();
            return;
        }
        var duration = parseInt(pm.time) || 600;
        var targetScale = parseFloat(pm.scale) || 1.0;
        
        // transform-originを設定
        var originX = pm.origin_x || "50%";
        var originY = pm.origin_y || "50%";
        $chara.css("transform-origin", originX + " " + originY);
        
        var completed = 0;
        var total = $chara.length;
        
        $chara.each(function(){
            var $el = $(this);
            var currentScale = $el.data("current-scale");
            if (typeof currentScale !== "number" || isNaN(currentScale)) {
                var tf = $el.css("transform");
                if (tf && tf !== "none") {
                    var m = tf.match(/matrix\(([^,]+),[^,]+,[^,]+,([^,]+),[^,]+,[^,]+\)/);
                    if (m) {
                        currentScale = parseFloat(m[1]);
                    } else {
                        currentScale = 1.0;
                    }
                } else {
                    currentScale = 1.0;
                }
            }
            
            // 現在の要素を複製
            var $clone = $el.clone();
            $clone.css({
                "position": "absolute",
                "top": $el.css("top"),
                "left": $el.css("left"),
                "width": $el.css("width"),
                "height": $el.css("height"),
                "z-index": $el.css("z-index"),
                "transform": "scale(" + targetScale + ")",
                "transform-origin": originX + " " + originY,
                "opacity": 0
            });
            
            // 複製を元の要素の親に追加
            $el.parent().append($clone);
            
            // クロスフェード
            $el.stop(true, false).animate({opacity: 0}, duration);
            $clone.stop(true, false).animate({opacity: 1}, duration, function() {
                // 元の要素のscaleを更新
                $el.css({
                    "transform": "scale(" + targetScale + ")",
                    "opacity": 1
                });
                $el.data("current-scale", targetScale);
                
                // 複製を削除
                $clone.remove();
                
                completed++;
                if (completed === total && pm.wait === "true") {
                    TYRANO.kag.ftag.nextOrder();
                }
            });
        });
        if (pm.wait !== "true") TYRANO.kag.ftag.nextOrder();
    }
};
