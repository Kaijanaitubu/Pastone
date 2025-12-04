// レイヤーブラープラグイン
// 指定したレイヤーに時間経過でブラーをかける

TYRANO.kag.ftag.master_tag["layer_blur"] = {
    kag: TYRANO.kag,
    vital: [],
    pm: {
        layer: "base",
        page: "fore",
        blur: "10",
        time: "1000",
        wait: "true"
    },
    start: function(pm) {
        var layerName = pm.layer || "base";
        var pageName = pm.page || "fore";
        var targetBlur = parseFloat(pm.blur) || 10;
        var duration = parseInt(pm.time) || 1000;
        
        // レイヤーIDの構築
        var layerId = layerName + "_" + pageName;
        
        // レイヤー要素を取得
        var $layer = $(".layer").filter(function() {
            var classes = $(this).attr("class");
            return classes && classes.indexOf(layerId) !== -1;
        });
        
        console.log("=== layer_blur デバッグ ===");
        console.log("レイヤーID:", layerId);
        console.log("見つかった要素数:", $layer.length);
        console.log("ブラー値:", targetBlur + "px");
        console.log("時間:", duration + "ms");
        
        if ($layer.length === 0) {
            console.error("エラー: レイヤー '" + layerId + "' に一致する要素が見つかりませんでした");
            TYRANO.kag.ftag.nextOrder();
            return;
        }
        
        // 現在のブラー値を取得
        var currentBlur = parseFloat($layer.data("current-blur")) || 0;
        
        console.log("現在のブラー:", currentBlur + "px → ターゲット:", targetBlur + "px");
        
        // アニメーション用の一時変数
        var startTime = Date.now();
        var animationFrame;
        
        function updateBlur() {
            var elapsed = Date.now() - startTime;
            var progress = Math.min(elapsed / duration, 1.0);
            
            // イージング（ease-out）
            var eased = 1 - Math.pow(1 - progress, 3);
            
            // ブラー値を計算
            var currentValue = currentBlur + (targetBlur - currentBlur) * eased;
            
            // filter: blur() を適用
            $layer.css("filter", "blur(" + currentValue + "px)");
            
            if (progress < 1.0) {
                animationFrame = requestAnimationFrame(updateBlur);
            } else {
                // アニメーション完了
                $layer.css("filter", "blur(" + targetBlur + "px)");
                $layer.data("current-blur", targetBlur);
                
                if (pm.wait === "true") {
                    TYRANO.kag.ftag.nextOrder();
                }
            }
        }
        
        // アニメーション開始
        updateBlur();
        
        if (pm.wait !== "true") {
            TYRANO.kag.ftag.nextOrder();
        }
    }
};

// ブラー解除タグ
TYRANO.kag.ftag.master_tag["layer_blur_clear"] = {
    kag: TYRANO.kag,
    vital: [],
    pm: {
        layer: "base",
        page: "fore",
        time: "1000",
        wait: "true"
    },
    start: function(pm) {
        var layerName = pm.layer || "base";
        var pageName = pm.page || "fore";
        var duration = parseInt(pm.time) || 1000;
        
        // レイヤーIDの構築
        var layerId = layerName + "_" + pageName;
        
        // レイヤー要素を取得
        var $layer = $(".layer").filter(function() {
            var classes = $(this).attr("class");
            return classes && classes.indexOf(layerId) !== -1;
        });
        
        if ($layer.length === 0) {
            console.error("エラー: レイヤー '" + layerId + "' に一致する要素が見つかりませんでした");
            TYRANO.kag.ftag.nextOrder();
            return;
        }
        
        // 現在のブラー値を取得
        var currentBlur = parseFloat($layer.data("current-blur")) || 0;
        var targetBlur = 0;
        
        console.log("=== layer_blur_clear ===");
        console.log("現在のブラー:", currentBlur + "px → 0px");
        
        // アニメーション用の一時変数
        var startTime = Date.now();
        var animationFrame;
        
        function updateBlur() {
            var elapsed = Date.now() - startTime;
            var progress = Math.min(elapsed / duration, 1.0);
            
            // イージング（ease-out）
            var eased = 1 - Math.pow(1 - progress, 3);
            
            // ブラー値を計算
            var currentValue = currentBlur + (targetBlur - currentBlur) * eased;
            
            // filter: blur() を適用
            if (currentValue < 0.01) {
                $layer.css("filter", "none");
            } else {
                $layer.css("filter", "blur(" + currentValue + "px)");
            }
            
            if (progress < 1.0) {
                animationFrame = requestAnimationFrame(updateBlur);
            } else {
                // アニメーション完了
                $layer.css("filter", "none");
                $layer.data("current-blur", 0);
                
                if (pm.wait === "true") {
                    TYRANO.kag.ftag.nextOrder();
                }
            }
        }
        
        // アニメーション開始
        updateBlur();
        
        if (pm.wait !== "true") {
            TYRANO.kag.ftag.nextOrder();
        }
    }
};
