// chara_part_blend プラグイン
// 背景が透けないクロスフェード実装

TYRANO.kag.ftag.master_tag["chara_part_blend"] = {
    
    kag: TYRANO.kag,
    
    vital: ["name"],
    
    pm: {
        name: "",
        allow_storage: "false",
        time: "",
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
                        
                        // Canvas要素を作成
                        var canvas = document.createElement('canvas');
                        var img_width = j_img.width();
                        var img_height = j_img.height();
                        canvas.width = img_width;
                        canvas.height = img_height;
                        var ctx = canvas.getContext('2d');
                        
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
                            
                            // 各画像を一度だけ描画
                            ctxA.drawImage(img_a, 0, 0, canvas.width, canvas.height);
                            ctxB.drawImage(img_b, 0, 0, canvas.width, canvas.height);
                            
                            // ピクセルデータを取得
                            var imageDataA = ctxA.getImageData(0, 0, canvas.width, canvas.height);
                            var imageDataB = ctxB.getImageData(0, 0, canvas.width, canvas.height);
                            var dataA = imageDataA.data;
                            var dataB = imageDataB.data;
                            
                            var animate = function() {
                                var elapsed = Date.now() - startTime;
                                var t = Math.min(elapsed / duration, 1.0);
                                
                                // 出力用の画像データを作成
                                var outputData = ctx.createImageData(canvas.width, canvas.height);
                                var data = outputData.data;
                                
                                // ピクセルごとに正しいアルファ合成
                                for (var i = 0; i < data.length; i += 4) {
                                    var rA = dataA[i];
                                    var gA = dataA[i + 1];
                                    var bA = dataA[i + 2];
                                    var aA = dataA[i + 3] / 255.0;
                                    
                                    var rB = dataB[i];
                                    var gB = dataB[i + 1];
                                    var bB = dataB[i + 2];
                                    var aB = dataB[i + 3] / 255.0;
                                    
                                    // プリマルチプライドアルファに変換
                                    var rA_pre = rA * aA;
                                    var gA_pre = gA * aA;
                                    var bA_pre = bA * aA;
                                    
                                    var rB_pre = rB * aB;
                                    var gB_pre = gB * aB;
                                    var bB_pre = bB * aB;
                                    
                                    // クロスフェード係数でブレンド
                                    var r_pre = (1 - t) * rA_pre + t * rB_pre;
                                    var g_pre = (1 - t) * gA_pre + t * gB_pre;
                                    var b_pre = (1 - t) * bA_pre + t * bB_pre;
                                    var a_out = (1 - t) * aA + t * aB;
                                    
                                    // アンプリマルチプライ（アルファで割る）
                                    if (a_out > 0) {
                                        data[i] = r_pre / a_out;
                                        data[i + 1] = g_pre / a_out;
                                        data[i + 2] = b_pre / a_out;
                                    } else {
                                        data[i] = 0;
                                        data[i + 1] = 0;
                                        data[i + 2] = 0;
                                    }
                                    data[i + 3] = a_out * 255;
                                }
                                
                                // Canvasに描画
                                ctx.clearRect(0, 0, canvas.width, canvas.height);
                                ctx.putImageData(outputData, 0, 0);
                                
                                // Canvas の内容を img に適用
                                j_img.attr('src', canvas.toDataURL('image/png'));
                                
                                if (t < 1.0) {
                                    requestAnimationFrame(animate);
                                } else {
                                    // アニメーション完了
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
