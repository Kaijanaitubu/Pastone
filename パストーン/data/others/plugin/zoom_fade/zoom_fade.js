// 拡大縮小プラグイン（キャラ・背景共通）
// 共通処理関数
function zoomElement($target, pm) {
    var duration = parseInt(pm.time) || 600;
    var targetScale = parseFloat(pm.scale) || 1.0;
    var originX = pm.origin_x || "50%";
    var originY = pm.origin_y || "50%";
    
    if ($target.length === 0) {
        return false;
    }
    
    $target.css("transform-origin", originX + " " + originY);
    
    // 現在のスケールを取得
    var currentScale = $target.data("current-scale");
    if (typeof currentScale !== "number" || isNaN(currentScale)) {
        var tf = $target.css("transform");
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
    
    // 複製を作成
    var $clone = $target.clone();
    $clone.css({
        "position": "absolute",
        "top": $target.css("top"),
        "left": $target.css("left"),
        "width": $target.css("width"),
        "height": $target.css("height"),
        "z-index": parseInt($target.css("z-index")) - 1,
        "transform": "scale(" + targetScale + ")",
        "transform-origin": originX + " " + originY,
        "opacity": 0
    });
    
    $target.parent().append($clone);
    
    // クロスフェード
    $target.stop(true, false).animate({opacity: 0}, duration);
    
    return new Promise(function(resolve) {
        $clone.stop(true, false).animate({opacity: 1}, duration, function() {
            $target.css({
                "transform": "scale(" + targetScale + ")",
                "opacity": 1
            });
            $target.data("current-scale", targetScale);
            $clone.remove();
            resolve();
        });
    });
}

// キャラ立ち絵の拡大縮小
TYRANO.kag.ftag.master_tag["chara_zoom"] = {
    kag: TYRANO.kag,
    vital: ["name"],
    pm: {
        name: "",
        scale: "1.0",
        time: "600",
        wait: "true",
        origin_x: "50%",
        origin_y: "50%"
    },
    start: function(pm) {
        // キャラ名で要素取得
        var $chara = $(".tyrano_chara").filter(function(){
            var $el = $(this);
            var classes = $el.attr("class");
            if (classes) {
                var firstClass = classes.split(" ")[0];
                return firstClass === pm.name;
            }
            return $el.attr("data-chara-name") === pm.name || $el.attr("name") === pm.name || $el.attr("id") === pm.name;
        });
        
        if ($chara.length === 0) {
            console.error("エラー: キャラ名 '" + pm.name + "' に一致する要素が見つかりませんでした");
            TYRANO.kag.ftag.nextOrder();
            return;
        }
        
        var completed = 0;
        var total = $chara.length;
        
        $chara.each(function(){
            zoomElement($(this), pm).then(function() {
                completed++;
                if (completed === total && pm.wait === "true") {
                    TYRANO.kag.ftag.nextOrder();
                }
            });
        });
        
        if (pm.wait !== "true") {
            TYRANO.kag.ftag.nextOrder();
        }
    }
};

// 背景レイヤーの拡大縮小
TYRANO.kag.ftag.master_tag["bg_zoom"] = {
    kag: TYRANO.kag,
    vital: [],
    pm: {
        layer: "0",
        page: "fore",
        scale: "1.0",
        time: "1000",
        wait: "true",
        origin_x: "50%",
        origin_y: "50%"
    },
    start: function(pm) {
        var pageName = pm.page || "fore";
        var layerId = "base_" + pageName;  // base_fore または base_back
        
        // クラス名で直接検索（背景は base_fore, base_back）
        var $layer = $(".layer").filter(function() {
            var classes = $(this).attr("class");
            return classes && classes.indexOf(layerId) !== -1;
        });
        
        
        if ($layer.length === 0) {
            console.error("エラー: レイヤー '" + layerId + "' に一致する要素が見つかりませんでした");
            TYRANO.kag.ftag.nextOrder();
            return;
        }
        
        zoomElement($layer, pm).then(function() {
            if (pm.wait === "true") {
                TYRANO.kag.ftag.nextOrder();
            }
        });
        
        if (pm.wait !== "true") {
            TYRANO.kag.ftag.nextOrder();
        }
    }
};
