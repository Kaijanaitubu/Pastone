// chara_part_blend プラグイン
// 背景が透けないクロスフェード実装

TYRANO.kag.ftag.master_tag["chara_part_blend"] = {
    
    kag: TYRANO.kag,
    
    vital: ["name"],
    
    pm: {
        name: "",
        allow_storage: "false",
        time: "600",
        wait: "true"
    },
    
    start: function(pm) {
        var that = this;
        var cpm = this.kag.stat.charas[pm.name];
        
        if (null == cpm) {
            this.kag.error("undefined_character", pm);
            return;
        }
        
        if (!cpm._layer) {
            this.kag.error("undefined_character_parts", pm);
            return;
        }
        
        var chara_part = cpm._layer;
        var map_part = {};
        var array_storage = [];
        
        // パラメータからパーツ情報を収集
        for (let key in pm) {
            if (chara_part[key]) {
                var part_id = pm[key];
                
                if (chara_part[key][part_id]) {
                    var part = chara_part[key][part_id];
                    part.id = part_id;
                    map_part[key] = part;
                    
                    if ("none" != part.storage) {
                        array_storage.push("./data/fgimage/" + part.storage);
                    }
                    
                    this.kag.stat.charas[pm.name]._layer[key].current_part_id = part_id;
                } else if ("true" == pm.allow_storage) {
                    map_part[key] = {
                        storage: part_id,
                        id: part_id
                    };
                    array_storage.push("./data/fgimage/" + part_id);
                    this.kag.stat.charas[pm.name]._layer[key].current_part_id = "allow_storage";
                    this.kag.stat.charas[pm.name]._layer[key].allow_storage = part_id;
                }
            }
        }
        
        var target_obj = this.kag.chara.getCharaContainer(pm.name);
        
        // 画像をプリロード
        this.kag.preloadAll(array_storage, function() {
            
            if ("" != pm.time) {
                // Canvas を使ったブレンド処理
                var n = 0;
                var cnt = 0;
                
                for (let key in map_part) {
                    (function() {
                        cnt++;
                        var part = map_part[key];
                        var j_img = target_obj.find(".part." + key);
                        
                        // Canvas要素を作成（表示サイズに合わせる：透明プレースホルダ対策）
                        var canvas = document.createElement('canvas');
                        var domImg = j_img.get(0);
                        var isTransparentPlaceholder = /transparent\.png$/.test(j_img.attr('src'));
                        var naturalW = domImg.naturalWidth || 0;
                        var naturalH = domImg.naturalHeight || 0;
                        // プレースホルダや未ロードの場合は、要素の表示サイズ（CSS適用後）を使う
                        var img_width = (!isTransparentPlaceholder && naturalW > 1) ? naturalW : (j_img.width() || j_img.get(0).clientWidth || 1);
                        var img_height = (!isTransparentPlaceholder && naturalH > 1) ? naturalH : (j_img.height() || j_img.get(0).clientHeight || 1);
                        canvas.width = img_width;
                        canvas.height = img_height;
                        var ctx = canvas.getContext('2d');
                        // 補間の差異を減らす
                        ctx.imageSmoothingEnabled = true;
                        
                        // 現在の画像と新しい画像をロード
                        var img_a = new Image();
                        var img_b = new Image();
                        
                        img_a.src = j_img.attr('src');
                        
                        if ("none" != part.storage) {
                            img_b.src = "./data/fgimage/" + part.storage;
                        } else {
                            img_b.src = "./tyrano/images/system/transparent.png";
                        }
                        
                        // 両方の画像が読み込まれたら処理開始
                        var loaded = 0;
                        var checkLoaded = function() {
                            loaded++;
                            if (loaded === 2) {
                                startBlend();
                            }
                        };
                        
                        img_a.onload = checkLoaded;
                        img_b.onload = checkLoaded;
                        
                        var startBlend = function() {
                            var startTime = Date.now();
                            var duration = parseInt(pm.time);
                            
                            // Canvas2枚用意（A用、B用）
                            var canvasA = document.createElement('canvas');
                            var canvasB = document.createElement('canvas');
                            canvasA.width = canvasB.width = canvas.width;
                            canvasA.height = canvasB.height = canvas.height;
                            var ctxA = canvasA.getContext('2d');
                            var ctxB = canvasB.getContext('2d');
                            
                            // 各画像を一度だけ描画（キャンバスサイズにスケール）
                            ctxA.imageSmoothingEnabled = true;
                            ctxB.imageSmoothingEnabled = true;
                            ctxA.clearRect(0,0,canvas.width,canvas.height);
                            ctxB.clearRect(0,0,canvas.width,canvas.height);
                            ctxA.drawImage(img_a, 0, 0, canvas.width, canvas.height);
                            ctxB.drawImage(img_b, 0, 0, canvas.width, canvas.height);
                            
                            // ピクセルデータを取得
                            var imageDataA = ctxA.getImageData(0, 0, canvas.width, canvas.height);
                            var imageDataB = ctxB.getImageData(0, 0, canvas.width, canvas.height);
                            var dataA = imageDataA.data;
                            var dataB = imageDataB.data;

                            // 領域限定ブレンド用：差分のバウンディングボックスを計算
                            var minX = canvas.width, minY = canvas.height, maxX = -1, maxY = -1;
                            for (var y = 0; y < canvas.height; y++) {
                                for (var x = 0; x < canvas.width; x++) {
                                    var i = (y * canvas.width + x) * 4;
                                    // 色またはアルファに変化があるピクセルのみ対象
                                    if (dataA[i] !== dataB[i] || dataA[i+1] !== dataB[i+1] || dataA[i+2] !== dataB[i+2] || dataA[i+3] !== dataB[i+3]) {
                                        if (x < minX) minX = x;
                                        if (y < minY) minY = y;
                                        if (x > maxX) maxX = x;
                                        if (y > maxY) maxY = y;
                                    }
                                }
                            }
                            // 差分がない場合は即座に切替
                            if (maxX < 0) {
                                if ("none" != part.storage) {
                                    j_img.attr("src", "./data/fgimage/" + part.storage);
                                } else {
                                    j_img.attr("src", "./tyrano/images/system/transparent.png");
                                }
                                if (pm[key + "_zindex"]) {
                                    j_img.css("z-index", pm[key + "_zindex"]);
                                } else {
                                    j_img.css("z-index", chara_part[key].zindex);
                                }
                                n++;
                                if ("true" == pm.wait && cnt == n) {
                                    TYRANO.kag.ftag.nextOrder();
                                }
                                return;
                            }
                            var boxW = Math.max(1, maxX - minX + 1);
                            var boxH = Math.max(1, maxY - minY + 1);
                            
                            // Canvasを<img>の代わりに直接表示
                            var $canvas = $(canvas);
                            $canvas.css({
                                position: "absolute",
                                left: 0,
                                top: 0,
                                width: "100%",
                                height: "100%",
                                "z-index": j_img.css("z-index")
                            });
                            $canvas.addClass("part");
                            $canvas.addClass(key);
                            
                            // imgを非表示にしてcanvasを挿入
                            j_img.css("visibility", "hidden");
                            j_img.after($canvas);
                            
                            var animate = function() {
                                var elapsed = Date.now() - startTime;
                                var t = Math.min(elapsed / duration, 1.0);
                                
                                // 出力用の画像データ（差分領域のみ）を作成
                                var outputData = ctx.createImageData(boxW, boxH);
                                var out = outputData.data;
                                
                                // 差分領域のみピクセル合成
                                for (var yy = 0; yy < boxH; yy++) {
                                    for (var xx = 0; xx < boxW; xx++) {
                                        var srcIndex = ((yy + minY) * canvas.width + (xx + minX)) * 4;
                                        var dstIndex = (yy * boxW + xx) * 4;
                                        var rA = dataA[srcIndex];
                                        var gA = dataA[srcIndex + 1];
                                        var bA = dataA[srcIndex + 2];
                                        var aA = dataA[srcIndex + 3] / 255.0;
                                        var rB = dataB[srcIndex];
                                        var gB = dataB[srcIndex + 1];
                                        var bB = dataB[srcIndex + 2];
                                        var aB = dataB[srcIndex + 3] / 255.0;
                                        var rA_pre = rA * aA;
                                        var gA_pre = gA * aA;
                                        var bA_pre = bA * aA;
                                        var rB_pre = rB * aB;
                                        var gB_pre = gB * aB;
                                        var bB_pre = bB * aB;
                                        var r_pre = (1 - t) * rA_pre + t * rB_pre;
                                        var g_pre = (1 - t) * gA_pre + t * gB_pre;
                                        var b_pre = (1 - t) * bA_pre + t * bB_pre;
                                        var a_out = (1 - t) * aA + t * aB;
                                        if (a_out > 0) {
                                            out[dstIndex] = r_pre / a_out;
                                            out[dstIndex + 1] = g_pre / a_out;
                                            out[dstIndex + 2] = b_pre / a_out;
                                        } else {
                                            out[dstIndex] = 0;
                                            out[dstIndex + 1] = 0;
                                            out[dstIndex + 2] = 0;
                                        }
                                        out[dstIndex + 3] = a_out * 255;
                                    }
                                }
                                
                                // 差分領域のみCanvasに描画
                                ctx.clearRect(minX, minY, boxW, boxH);
                                ctx.putImageData(outputData, minX, minY);
                                
                                if (t < 1.0) {
                                    requestAnimationFrame(animate);
                                } else {
                                    // アニメーション完了：Canvasを削除してimgに戻す
                                    $canvas.remove();
                                    j_img.css("visibility", "visible");
                                    
                                    // 最終的な画像を設定
                                    if ("none" != part.storage) {
                                        j_img.attr("src", "./data/fgimage/" + part.storage);
                                    } else {
                                        j_img.attr("src", "./tyrano/images/system/transparent.png");
                                    }
                                    
                                    // z-indexの設定
                                    if (pm[key + "_zindex"]) {
                                        j_img.css("z-index", pm[key + "_zindex"]);
                                    } else {
                                        j_img.css("z-index", chara_part[key].zindex);
                                    }
                                    
                                    n++;
                                    if ("true" == pm.wait && cnt == n) {
                                        TYRANO.kag.ftag.nextOrder();
                                    }
                                }
                            };
                            
                            animate();
                        };
                    })();
                }
                
                if ("false" == pm.wait) {
                    TYRANO.kag.ftag.nextOrder();
                }
            } else {
                // time パラメータなし：即座に切り替え
                for (let key in map_part) {
                    var part = map_part[key];
                    var j_img = target_obj.find(".part." + key);
                    
                    if ("none" != part.storage) {
                        j_img.attr("src", "./data/fgimage/" + part.storage);
                    } else {
                        j_img.attr("src", "./tyrano/images/system/transparent.png");
                    }
                    
                    if (pm[key + "_zindex"]) {
                        j_img.css("z-index", pm[key + "_zindex"]);
                    } else {
                        j_img.css("z-index", chara_part[key].zindex);
                    }
                }
                
                TYRANO.kag.ftag.nextOrder();
            }
        });
    }
};
