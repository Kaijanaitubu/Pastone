/*
#[capimg]
:group
システム操作
:title
画面キャプチャ
:exp
ゲーム画面をキャプチャして画像を生成することができます。
キャプチャ画像はダイアログを表示して保存場所を選択することもできますし、自動で保存することもできます。
キャラ差分機能と組み合わせると、キャラメイクゲームなどにも使えますし
ゲーム画面をSNSに投稿する機能もつくることができるでしょう。
ブラウザゲームの場合は画像ファイルをダウンロードします。
:sample

;
[capimg ui=true filename="akane_image_1.jpg" saveas="true"]

;ゲーム画面全体をキャプチャ。メッセージウィンドウなどを含まない
[capimg ui=false filename="akane_image_2.png" saveas="true"]

;レイヤーを指定して特定箇所のみキャプチャ
[capimg layer=0 filename="akane_image_3.png" saveas="true"]


:param
name=キャプチャ対象のオブジェクトを指定できます。,
layer=キャプチャ対象のレイヤを指定できます。nameとlayerを指定しない場合はゲーム画面全体がキャプチャされます。,
ui=trueかfalseを指定します。デフォルトはfalse trueを指定するとメッセージウィンドウやボタンもキャプチャに含まれます,
type=png か jpg を指定します。デフォルトはpng。出力されるファイル形式が設定できます,
quality=typeでjpgを指定している場合のみ設定可能。画像のクオリティを指定できます。 0 〜 1 の間で設定します。数字が小さいほど容量は少なくできますが品質が落ちます。0.7程度がおすすめ。,
saveas=trueかfalseを指定します。trueの場合、キャプチャ時に保存場所をプレイヤーが選択することができます。
falseを指定するとゲームの実行フォルダと同じ階層にファイルが保存されます。ブラウザで動作中は選択不可。,
filename=必須です。保存するファイル名を記述してください。png jpgといった拡張子も忘れずにつけます。,
savepath=保存ダイアログを表示したときに表示されるパスを設定できます。ブラウザ形式では不可,
path=trueかfalseを設定します。trueを指定すると、saveasがfalseの場合に、保存場所をダイアログで知らせてくれます。

#[end]
*/

//画面をキャプチャします。
TYRANO.kag.ftag.master_tag.capimg = {

    kag: TYRANO.kag,
    vital: ["filename"],

    pm: {

        name: "",
        layer: "",

        ui: "false", //システム系のUIをキャプチャに含めるかどうか。

        type: "png", // jpg or png canvas.toDataURL("image/jpeg",0.3);
        quality: "1",

        saveas: "false", //trueにすると、保存するときにダイアログを表示して保存場所を選べる。

        filename: "", //保存ファイル名
        savepath: "", //保存する場所を指定 dialogを指定すると選択できる。 ブラウザゲームの場合は不可。 ティラノスクリプトの場合は user_image 実行ファイル以下がデフォルトだが、フォルダは作っておく必要がある。

        path: "true" //trueにしておくと、saveasがfalseのときに、どこに保存されたかを表示することができる。

    },

    start: function(pm) {

        var j_obj = {};

        var tmp_base = $("#tyrano_base");

        var tmp_left = tmp_base.css("left");
        var tmp_top = tmp_base.css("top");
        var tmp_trans = tmp_base.css("transform");

        tmp_base.css("left", 0);
        tmp_base.css("top", 0);
        tmp_base.css("transform", "");


        if (pm.layer != "") {

            j_obj = this.kag.layer.getLayer(pm.layer, pm.page);

            if (pm.name != "") {
                j_obj = j_obj.find("." + pm.name);
                flag_base = false;
            }

        } else {

            //layerが指定されていない場合は
            if (pm.name != "") {
                j_obj = ("#tyrano_base").find("." + pm.name);
            } else {

                if (pm.ui == "false") {
                    TYRANO.kag.layer.hideMessageLayers();
                }

                j_obj = $("#tyrano_base");

            }

        }

        var opt = {
            height: TYRANO.kag.config.scHeight,
            width: TYRANO.kag.config.scWidth
        };

        html2canvas(j_obj.get(0), opt).then(function(canvas) {

            var base64Data = "";
            var src = "";

            if (pm.type == "png") {

                src = canvas.toDataURL('image/png');
                base64Data = src.replace(/^data:image\/png;base64,/, "");

            } else {

                src = canvas.toDataURL("image/jpeg", parseFloat(pm.quality));
                base64Data = src.replace(/^data:image\/(jpg|jpeg);base64,/, "");

            }

            if ($.isNWJS()) {

                var fs = require('fs');
                var out_path = "";

                if (pm.saveas == "true") {
                    $.alert("saveas=true")
                        //ダイアログを表示して保存。
                    var j_file = $('<input type="file" nwsaveas="' + pm.filename + '">');

                    j_file.on("change", function(evt) {

                        var files = evt.target.files;
                        var file = files[0];
                        var file_path = file.path;
                        var file_name = file.name;

                        out_path = file_path;

                        fs.writeFileSync(out_path, base64Data, 'base64');

                    });


                    j_file.trigger("click");

                    TYRANO.kag.ftag.nextOrder();


                } else {
                    $.alert("saveas=false")
                        //mac os Sierra 対応
                    if (process.execPath.indexOf("var/folders") != -1) {
                        out_path = process.env.HOME + "/_TyranoGameData";
                        if (!fs.existsSync(out_path)) {
                            fs.mkdirSync(out_path);
                        }
                    } else {
                        out_path = $.getProcessPath();
                    }

                    out_path = out_path + "/" + pm.filename;

                    fs.writeFileSync(out_path, base64Data, 'base64');

                    if (pm.path == "true") {

                        $.alert(out_path + "に保存しました。", function() {
                            TYRANO.kag.ftag.nextOrder();
                        });

                    } else {

                        TYRANO.kag.ftag.nextOrder();

                    }

                }

            } else {

                var bin = atob(src.split(',')[1]);
                var buffer = new Uint8Array(bin.length);

                for (var i = 0; i < bin.length; i++) {
                    buffer[i] = bin.charCodeAt(i);
                }

                // 画像データをblob使ってurl化する(?)
                var blob = new Blob([buffer.buffer], { type: pm.type });
                var url = window.URL.createObjectURL(blob);

                // blobでurl化した画像データをaタグのクリックによりDLできるようにする
                var a = document.createElement("a");
                a.download = pm.filename;
                a.href = url;
                a.click();

                TYRANO.kag.ftag.nextOrder();

            }

            //pathを復元
            if (pm.ui == "false") {
                TYRANO.kag.layer.showMessageLayers();
            }

        });

        tmp_base.hide();
        tmp_base.css("left", tmp_left);
        tmp_base.css("top", tmp_top);
        tmp_base.css("transform", tmp_trans);
        tmp_base.show();


    }

};