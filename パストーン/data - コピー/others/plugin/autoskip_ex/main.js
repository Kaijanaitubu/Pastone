(function(){


const auto_img = "__auto_img__"
const skip_img = "__skip_img__"
const progress = "__progress__"

let wait_id_l = null
let wait_id_p = null
let wait_id_b = null

//選択肢でオート・スキップ停止するか
const setClickStop = function(){
    let sf = TYRANO.kag.variable.sf
    TYRANO.kag.stat.skip_link = sf._autoskip.skip_select_stop.toString()
    TYRANO.kag.stat._auto_link = sf._autoskip.auto_select_stop.toString()
}


//プログレスバー表示
const showProgress = function(time){
    let sa = TYRANO.kag.variable.sf._autoskip
    if(sa.progress_color === "" && sa.progress_img === ""){
        return false
    }

    let fix = TYRANO.kag.layer.getLayer("fix")

    let min = 0
    let max = sa.progress_w
    if(sa.progress_rev){
        min = sa.progress_w
        max = 0
    }

    let bar = $("<div></div>")
    let bg = sa.progress_img == "" ? sa.progress_color : `url(data/image/${sa.progress_img})`
    bar.css({
        position: "absolute",
        width: `${max}px`,
        height: `${sa.progress_h}px`,
        left: `${sa.progress_x}px`,
        top: `${sa.progress_y}px`,
        "z-index": 9999,
        background: `${bg} 100% no-repeat`,
        "background-position": "top left",
    })
    bar.addClass("fixlayer")
    bar.addClass(progress)
    fix.append(bar)
    if(sa.progress_p === "fade"){
        bar.css({
            display: "none",
        })
        bar.fadeIn(200)
    }
    let voice = 0
    if(TYRANO.kag.tmp.is_vo_play){
        //ボイス
        let name = $(".chara_name_area").attr("data-autoskip")
        let buf = TYRANO.kag.stat.map_vo.vochara[name].buf
        voice = (TYRANO.kag.tmp.map_se[buf].duration() - TYRANO.kag.tmp.map_se[buf].seek()) * 1000
    }
    bar.animate({
        width: `${min}px`,
    }, Math.max(voice, time) - 200, "linear", function(){
        //消す
        bar.remove()
    })
}


/**
 * is_auto変数変更
 */
const autoskip_ex = function(){
    let sf = TYRANO.kag.variable.sf
    //オート
    let stat_is_auto = false
    delete TYRANO.kag.stat.is_auto
    Object.defineProperty(TYRANO.kag.stat, "is_auto", {
        get: function(){
            return stat_is_auto
        },
        set: function(value) {
            stat_is_auto = value
            if(value){
                //オート開始
                //固定画像
                if(sf._autoskip.auto_img !== ""){
                    let img = $("<img />")
                    img.attr("src", `data/image/${sf._autoskip.auto_img}`)
                    img.addClass(auto_img)
                    img.css({
                        position: "absolute",
                        top: `${sf._autoskip.auto_img_y}px`,
                        left: `${sf._autoskip.auto_img_x}px`,
                    })
                    $(".button_menu").after(img)
                }
                //ボタン画像
                if(sf._autoskip.auto_button_name !== ""){
                    $(`.${sf._autoskip.auto_button_name}`).attr("src", `data/image/${sf._autoskip.auto_button_active}`)
                }
            }else{
                //オート終了
                //固定画像
                if(sf._autoskip.auto_img !== ""){
                    $(`.${auto_img}`).remove()
                }
                //ボタン画像
                if(sf._autoskip.auto_button_name !== ""){
                    $(`.${sf._autoskip.auto_button_name}`).attr("src", `data/image/${sf._autoskip.auto_button_normal}`)
                }
            }
        },
        enumerable: true,
        configurable: true
    })
    //スキップ
    let stat_is_skip = false
    delete TYRANO.kag.stat.is_skip
    Object.defineProperty(TYRANO.kag.stat, "is_skip", {
        get: function(){
            return stat_is_skip
        },
        set: function(value) {
            stat_is_skip = value
            if(value){
                //スキップ開始
                //固定画像
                if(sf._autoskip.skip_img !== ""){
                    let img = $("<img />")
                    img.attr("src", `data/image/${sf._autoskip.skip_img}`)
                    img.addClass(skip_img)
                    img.css({
                        position: "absolute",
                        top: `${sf._autoskip.skip_img_y}px`,
                        left: `${sf._autoskip.skip_img_x}px`,
                    })
                    $(".button_menu").after(img)
                }
                //ボタン画像
                if(sf._autoskip.skip_button_name !== ""){
                    $(`.${sf._autoskip.skip_button_name}`).attr("src", `data/image/${sf._autoskip.skip_button_active}`)
                }
            }else{
                //スキップ終了
                //固定画像
                if(sf._autoskip.skip_img !== ""){
                    $(`.${skip_img}`).remove()
                }
                //ボタン画像
                if(sf._autoskip.skip_button_name !== ""){
                    $(`.${sf._autoskip.skip_button_name}`).attr("src", `data/image/${sf._autoskip.skip_button_normal}`)
                }
            }
        },
        enumerable: true,
        configurable: true
    })
}
//初期化処理
setClickStop()
autoskip_ex()


/**
 * スキップ／オートクリア
 */
TYRANO.kag.key_mouse.clearSkip = function(){
    var that = this;
    //スキップ中にクリックされたら元に戻す
    //if(that.kag.stat.is_skip == true && that.kag.stat.is_strong_stop == false){
    if(that.kag.stat.is_skip == true && that.kag.stat.is_strong_stop == false){
        that.kag.stat.is_skip = false; 
        return false;
    }
    //オート中でクリックされたらオート停止
    if(that.kag.stat.is_auto == true && that.kag.stat.is_strong_stop == false){
        if(that.kag.config.autoClickStop == "true"){
            that.kag.ftag.startTag("autostop", {next:"false"});
        }
    }
    //オート待ち状態なら、解除する
    //何が何でもオート解除しないフラグを追加
    if(that.kag.stat.is_wait_auto == true && TYRANO.kag.variable.tf.is_cancel_auto === undefined){
        that.kag.stat.is_wait_auto = false;
    }
}


/**
 * クリック待ち記号
 */
TYRANO.kag.ftag.showNextImg = function () {
    let sf = TYRANO.kag.variable.sf

    //オート中かつページ送り画像指定ない場合は何もしない
    //if(sf._autoskip.next_img_auto === "none" && TYRANO.kag.stat.is_auto){
    //    return false
    //}
    //スキップ中かつページ送り画像指定ない場合は何もしない
    //if(sf._autoskip.next_img_skip === "none" && TYRANO.kag.stat.is_skip)

    if(TYRANO.kag.stat.is_skip){
        return false
    }
    //ページ送り画像表示
    const normal = `data/image/${sf._autoskip.next_img_normal}`
    const auto = `data/image/${sf._autoskip.next_img_auto}`
    //const skip = `data/image/${sf._autoskip.next_img_skip}`
    if (this.kag.stat.flag_glyph == "false") {
        //テキスト末尾
        $(".img_next").remove();
        let next_img = $("<img class='img_next' />")
        if(TYRANO.kag.stat.is_auto && sf._autoskip.next_img_auto === "none"){
            //クリック待ち画像に「none」が明示的に指定されている場合
            //何もしない
        }else if(TYRANO.kag.stat.is_auto && sf._autoskip.next_img_auto !== ""){
            //オート時クリック待ち画像指定ある場合
            next_img.attr("src", auto)
//        }else if(TYRANO.kag.stat.is_skip){
//            next_img.attr("src", skip)
        }else{
            //それ以外は通常時と同じ画像
            next_img.attr("src", normal)
        }
        var jtext = this.kag.getMessageInnerLayer();
        if(TYRANO.kag.stat.is_auto && sf._autoskip.next_img_auto === "none"){
            //クリック待ち画像に「none」が明示的に指定されている場合
            //何もしない
            next_img = ""
        }else{
            jtext.find("p").append(next_img);
        }
    } else {   
        //固定位置
        let next_img = ""
        if(TYRANO.kag.stat.is_auto && sf._autoskip.next_img_auto !== ""){
            next_img = auto
        //}else if(TYRANO.kag.stat.is_skip){
        //    next_img = skip
        }else{
            next_img = normal
        }
        $(".glyph_image").attr("src", next_img)
        $(".glyph_image").show()
    } 
}


/**
 * オートモードからの復帰判定
 */
let is_auto = false
$(document).off("mousedown")
$(document).on("mousedown", function(e) {
    const that = TYRANO.kag.key_mouse
    let sf = TYRANO.kag.variable.sf
    is_auto = TYRANO.kag.stat.is_auto
    //画面クリックでスキップ・オート停止させる場合
    if((TYRANO.kag.stat.is_auto && sf._autoskip.auto_click_stop) || (TYRANO.kag.stat.is_skip && sf._autoskip.skip_click_stop)){
        that.clearSkip();          
    }
    var target = null;
    //中央クリック
    if (e.which == 2) {
        target = that.map_mouse["center"];
    }else if(e.which == 3){
        //右クリック
        target = that.map_mouse["right"];
    }
    if(typeof target=="function"){
        target();
    }else{
        if(that[target]){
            that[target]();
        }
    }
});
if ("pc" != $.userenv()) {
    const layer_obj_click = $(".layer_event_click");
    layer_obj_click.off("touchstart")
    layer_obj_click.on("touchstart", (function () {
        const that = TYRANO.kag.key_mouse
        is_auto = TYRANO.kag.stat.is_auto
        //画面クリックでスキップ・オート停止させる場合
        if((TYRANO.kag.stat.is_auto && sf._autoskip.auto_click_stop) || (TYRANO.kag.stat.is_skip && sf._autoskip.skip_click_stop)){
            that.clearSkip();
        }
        that.timeoutId = setTimeout((function () {
        if (that[that.map_ges.hold.action]) {
            that.is_swipe = !0;
            that[that.map_ges.hold.action]()
        }
        }), 2e3)
    }))
}

/**
 * オートモード対応
 * レイヤークリック時の動作
 */
let layer_obj_click = $(".layer_event_click");
layer_obj_click.off("click")
layer_obj_click.click(function(e){
    const that = TYRANO
    if(that.kag.tmp.ready_audio==false){
        if($.isNeedClickAudio()){
            that.kag.readyAudio();
            that.kag.tmp.ready_audio = true;
            if(that.kag.stat.is_adding_text == true){
                that.kag.stat.is_click_text = true;
                return false;
            }
            that.kag.ftag.nextOrder();
            return false;
        }
    }             
    if(that.is_swipe){
        that.is_swipe = false;
        return false;
    }
    if(that.kag.stat.is_hide_message == true){
        that.kag.layer.showMessageLayers();
        return false;
    }
    //テキスト再生中にクリックされた場合、文字列を進めて終了にする
    if(that.kag.stat.is_adding_text == true){
        that.kag.stat.is_click_text = true;
        return false;;
    }
    //テキストマッハ表示時もリターン。
    if(that.kag.stat.is_click_text == true){
        return false;
    }
    if(that.kag.stat.is_stop == true){
        return false;
    }
    //フキダシ対応しているか
    if(that.kag.stat.fuki !== undefined){
        //フキダシ表示の場合は一回非表示にする。
        if(that.kag.stat.fuki.active==true){
            that.kag.layer.hideMessageLayers();
        }    
    }
    if(!is_auto){
        //オートモードからの復帰じゃないとき（＝非オートモード）はそのまま進める
        that.kag.ftag.nextOrder();
    }else if(!that.kag.stat.is_adding_text && !that.kag.tmp.is_vo_play){
        is_auto = false
        //オートモードからの復帰のときはテキスト＆ボイス進行中じゃなければ進める
        if(TYRANO.kag.variable.sf._autoskip.page_ref){
            that.kag.ftag.nextOrder();
        }
    }
})


/**
 * オート・スキップ設定の変更
 */
TYRANO.kag.tag.config_autoskip_ex = {
    vital: [],
    pm: {
        auto_click_stop: "", 
        skip_click_stop: "",
        auto_select_stop: "",
        skip_select_stop: "",
    },
    start: function(pm){
        let sf = TYRANO.kag.variable.sf

        if(pm.auto_click_stop !== ""){
            sf._autoskip.auto_click_stop = (pm.auto_click_stop === "true" ? true : false)
        }
        if(pm.skip_click_stop !== ""){
            sf._autoskip.skip_click_stop = (pm.skip_click_stop === "true" ? true : false)
        }
        if(pm.auto_select_stop !== ""){
            sf._autoskip.auto_select_stop = (pm.auto_select_stop === "true" ? true : false)
        }
        if(pm.skip_select_stop !== ""){
            sf._autoskip.skip_select_stop = (pm.skip_select_stop === "true" ? true : false)
        }
        setClickStop()
        TYRANO.kag.ftag.nextOrder();
    }
}

/**
 * make.ks用
 */
TYRANO.kag.tag.autoskip_restore = {
    start: function(pm){        
        const sf = TYRANO.kag.variable.sf
        autoskip_ex()
        
        //ボタン画像戻す
        if(sf._autoskip.auto_button_name !== ""){
            $(`.${sf._autoskip.auto_button_name}`).attr("src", `data/image/${sf._autoskip.auto_button_normal}`)
        }
        if(sf._autoskip.skip_button_name !== ""){
            $(`.${sf._autoskip.skip_button_name}`).attr("src", `data/image/${sf._autoskip.skip_button_normal}`)
        }

        //ページ送り画像戻す
        const normal = `data/image/${sf._autoskip.next_img_normal}`
        $(".img_next").attr("src", normal)
        $(".glyph_image").attr("src", normal)

        //固定画像あったら消しておく
        $(`.${auto_img}`).remove()
        $(`.${skip_img}`).remove()
        
        TYRANO.kag.ftag.nextOrder();
    }
}
TYRANO.kag.ftag.master_tag.autoskip_restore = TYRANO.kag.tag.autoskip_restore
TYRANO.kag.ftag.master_tag.autoskip_restore.kag = TYRANO.kag


/**
 * 既存タグ拡張
 */

//クリック待ち拡張
tyrano.plugin.kag.tag.l = {
    cw: true,
    pm: {
        next: "true",
    },
    start: function(pm) {
        var that = this;
        this.kag.ftag.showNextImg();
        //クリックするまで、次へすすまないようにする
        if (this.kag.stat.is_skip == true) {
            //スキップ中の場合は、nextorder
            this.kag.ftag.nextOrder();
        } else if (this.kag.stat.is_auto == true) {
            this.kag.stat.is_wait_auto = true;
            var auto_speed = that.kag.config.autoSpeed;
            if (that.kag.config.autoSpeedWithText != "0") {
                var cnt_text = this.kag.stat.current_message_str.length;
                auto_speed = parseInt(auto_speed) + (parseInt(that.kag.config.autoSpeedWithText) * cnt_text);
            }
            showProgress(auto_speed)
            wait_id_l = setTimeout(function() {
                if (that.kag.stat.is_wait_auto == true) {
                    //ボイス再生中の場合は、オートで次に行かない。効果音再生終了後に進めるためのフラグを立てる
                    if (that.kag.tmp.is_vo_play == true) {
                        that.kag.tmp.is_vo_play_wait = true;
                    } else if(that.kag.stat.is_auto){
                        that.kag.ftag.nextOrder();
                    }
                }
            }, auto_speed);
        }
    }
}
TYRANO.kag.ftag.master_tag.l = TYRANO.kag.tag.l
TYRANO.kag.ftag.master_tag.l.kag = TYRANO.kag


tyrano.plugin.kag.tag.p = {
    cw: true,
    start: function() {
        var that = this;
        //改ページ
        this.kag.stat.flag_ref_page = true;
        this.kag.ftag.showNextImg();
        if (this.kag.stat.is_skip == true) {
            //スキップ中の場合は、nextorder
            this.kag.ftag.nextOrder();
        } else if (this.kag.stat.is_auto == true) {
            this.kag.stat.is_wait_auto = true;
            var auto_speed = that.kag.config.autoSpeed;
            if (that.kag.config.autoSpeedWithText != "0") {
                var cnt_text = this.kag.stat.current_message_str.length;
                auto_speed = parseInt(auto_speed) + (parseInt(that.kag.config.autoSpeedWithText) * cnt_text);
            }
            showProgress(auto_speed)
            wait_id_p = setTimeout(function() {
                if (that.kag.stat.is_wait_auto == true) {
                    //ボイス再生中の場合は、オートで次に行かない。効果音再生終了後に進めるためのフラグを立てる
                    if (that.kag.tmp.is_vo_play == true) {
                        that.kag.tmp.is_vo_play_wait = true;
                    } else {
                        if(that.kag.stat.is_auto){
                            that.kag.ftag.nextOrder();
                        }
                    }
                }
            }, auto_speed);
        }
    }
}
TYRANO.kag.ftag.master_tag.p = TYRANO.kag.tag.p
TYRANO.kag.ftag.master_tag.p.kag = TYRANO.kag


//オートモード拡張
tyrano.plugin.kag.tag.autostart = {
    pm : {
    },
    start : function(pm) {
        if (this.kag.stat.is_auto == true) {
            return false;
        }
        this.kag.readyAudio();             
        TYRANO.kag.ftag.hideNextImg()
        //[p][l] の処理に、オート判定が入ってます
        this.kag.stat.is_auto = true;
        if(this.kag.tmp.sleep_game === null){

            if(!this.kag.stat.is_adding_text && !this.kag.tmp.is_vo_play){
                //テキスト表示完了後かつボイス再生終了後
                if(TYRANO.kag.variable.sf._autoskip.page_ref){
                    this.kag.ftag.nextOrder();
                    //TYRANO.kag.stat.is_wait_auto = true
                }else{
                    this.kag.ftag.startTag("l")    
                }
            }else if(!this.kag.stat.is_adding_text && this.kag.tmp.is_vo_play){
                //テキスト表示完了後かつボイス再生中にオート開始したときは再度クリック待ちを挟んでおく
                this.kag.ftag.startTag("l", {
                    next: "false",
                })
            }
        }else{
            //sleepgame中はそのまま進める
            this.kag.ftag.nextOrder();
        }
    }
}
TYRANO.kag.ftag.master_tag.autostart = TYRANO.kag.tag.autostart
TYRANO.kag.ftag.master_tag.autostart.kag = TYRANO.kag


tyrano.plugin.kag.tag.autostop = {
    pm : {
        next:"true"
    },
    start : function(pm) {
        const _is_auto = this.kag.stat.is_auto
        this.kag.stat.is_auto = false;
        this.kag.stat.is_wait_auto = false;
        //確実にオート待ち時間をクリア
        clearTimeout(wait_id_p)
        clearTimeout(wait_id_l)
        clearTimeout(wait_id_b)

        $("." + progress).remove()
        TYRANO.kag.ftag.showNextImg()
        if(pm.next=="true"){
            //テキスト表示中orボイス再生中にオート停止したときは何もしない
            if(!this.kag.stat.is_adding_text && !this.kag.tmp.is_vo_play){
                this.kag.ftag.nextOrder();
            }else if(_is_auto){
                this.kag.ftag.nextOrder();
            }
        }else{
            if(TYRANO.kag.variable.sf._autoskip.page_ref){
                this.kag.ftag.nextOrder();
            }            
        }
    }
}
TYRANO.kag.ftag.master_tag.autostop = TYRANO.kag.tag.autostop
TYRANO.kag.ftag.master_tag.autostop.kag = TYRANO.kag


//スキップモード拡張
tyrano.plugin.kag.tag.skipstart = {
    start : function(pm) {
        //文字追加中は、スキップしない。
        //if (this.kag.stat.is_skip == true || this.kag.stat.is_adding_text) {
        if (this.kag.stat.is_skip == true) {
            return false;
        }
//        TYRANO.kag.ftag.hideNextImg()
        this.kag.readyAudio();
        this.kag.stat.is_skip = true;
        this.kag.ftag.nextOrder();
    }
};
TYRANO.kag.ftag.master_tag.skipstart = TYRANO.kag.tag.skipstart
TYRANO.kag.ftag.master_tag.skipstart.kag = TYRANO.kag


tyrano.plugin.kag.tag.skipstop = {
    start : function(pm) {
        this.kag.stat.is_skip = false;
//        TYRANO.kag.ftag.showNextImg()
        this.kag.ftag.nextOrder();
    }
};
TYRANO.kag.ftag.master_tag.skipstop = TYRANO.kag.tag.skipstop
TYRANO.kag.ftag.master_tag.skipstop.kag = TYRANO.kag


/**
 * 選択肢時の処理
 */
const _button = TYRANO.kag.tag.button
TYRANO.kag.tag.button = $.extend(true, {} , _button, {
    setEvent:function(j_button, pm){
        var that = TYRANO;
        (function() {
            var _target = pm.target;
            var _storage = pm.storage;
            var _pm = pm;
            var preexp = that.kag.embScript(pm.preexp);
            var button_clicked = false;

            j_button.hover(function() {
                //マウスが乗った時
                if (_pm.enterse != "") {
                    that.kag.ftag.startTag("playse", {
                        "storage" : _pm.enterse,
                        "stop" : true
                    });
                }
                if (_pm.enterimg != "") {
                    var enter_img_url = "";
                    if ($.isHTTP(_pm.enterimg)) {
                        enter_img_url = _pm.enterimg;
                    } else {
                        enter_img_url = "./data/" + _pm.folder + "/" + _pm.enterimg;
                    }

                    $(this).attr("src", enter_img_url);

                }
            }, function() {
                //マウスが外れた時
                if (_pm.leavese != "") {
                    that.kag.ftag.startTag("playse", {
                        "storage" : _pm.leavese,
                        "stop" : true
                    });
                }
                //元に戻す
                if (_pm.enterimg != "") {

                    var enter_img_url = "";
                    if ($.isHTTP(_pm.graphic)) {
                        enter_img_url = _pm.graphic;
                    } else {
                        enter_img_url = "./data/" + _pm.folder + "/" + _pm.graphic;
                    }
                    $(this).attr("src", enter_img_url);
                }
            });
            j_button.on("mousedown", function(e) {
                //オートとスキップの処理はclickイベントで行う
                if(_pm.role == "auto" || _pm.role == "skip"){
                    e.stopPropagation();
                }
            })
            j_button.click(function(e) {
                //fix指定のボタンは、繰り返し実行できるようにする
                if (button_clicked == true && _pm.fix == "false") {
                    return false;
                }
                //Sタグに到達していないとクリッカブルが有効にならない fixの時は実行される必要がある
                if (that.kag.stat.is_strong_stop != true && _pm.fix == "false") {
                    return false;
                }
                button_clicked = true;

                if (_pm.clickimg != "") {
                    var click_img_url = "";
                    if ($.isHTTP(_pm.clickimg)) {
                        click_img_url = _pm.clickimg;
                    } else {
                        click_img_url = "./data/" + _pm.folder + "/" + _pm.clickimg;
                    }
                    j_button.attr("src", click_img_url);
                }

                if (_pm.exp != "") {
                    //スクリプト実行
                    that.kag.embScript(_pm.exp, preexp);
                }
                if (_pm.savesnap == "true") {
                    //セーブスナップを取る場合、アニメーション中やトランジションはNG
                    if (that.kag.stat.is_stop == true) {
                        return false;
                    }
                    //ここは、現在のセーブ用のメッセージを取得しよう
                    that.kag.menu.snapSave(that.kag.stat.current_save_str);
                }
                //画面効果中は実行できないようにする
                if(that.kag.layer.layer_event.css("display") =="none" && that.kag.stat.is_strong_stop != true){
                    return false;
                }
                //roleが設定されている場合は対応する処理を実行
                //指定できる文字列はsave(セーブ画面を表示します)。load(ロード画面を表示します)。title(タイトル画面に戻ります)。menu(メニュー画面を表示します)。message(メッセージウィンドウを非表示にします)。skip(スキップの実行)
                if (_pm.role != "") {
                    //roleがクリックされたら、skip停止 
                    if(_pm.role != "skip"){
                        that.kag.stat.is_skip = false; 
                    }
                    //オートは停止
                    if(_pm.role != "auto"){
                        that.kag.ftag.startTag("autostop", {next:"false"});
                    }
                    //文字が流れているときは、セーブ出来ないようにする。
                    if(_pm.role =="save" || _pm.role =="menu" || _pm.role=="quicksave"|| _pm.role=="sleepgame"){
                        //テキストが流れているときとwait中は実行しない
                        if(that.kag.stat.is_adding_text == true || that.kag.stat.is_wait == true){
                            return false; 
                        }
                    }
                    switch(_pm.role) {
                        case "save":
                            that.kag.menu.displaySave();
                            break;
                        case "load":
                            that.kag.menu.displayLoad();
                            break;
                        case "window":
                            that.kag.layer.hideMessageLayers();
                            break;
                        case "title":
                            that.kag.backTitle();
                            break;
                        case "menu":
                            that.kag.menu.showMenu();
                            break;
                        case "skip":
                            //ここを変更
                            if(that.kag.stat.is_skip){
                                that.kag.ftag.startTag("skipstop", {next: "false"})
                            }else{
                                that.kag.ftag.startTag("skipstart", {});
                            }
                            break;
                        case "backlog":
                            that.kag.menu.displayLog();
                            break;
                        case "fullscreen":
                            that.kag.menu.screenFull();
                            break;
                        case "quicksave":
                            that.kag.menu.setQuickSave();
                            break;
                        case "quickload":
                            that.kag.menu.loadQuickSave();
                            break;
                        case "auto":
                            if(that.kag.stat.is_auto==true){
                                that.kag.ftag.startTag("autostop", {next:"false"});
                            }else{
                                that.kag.ftag.startTag("autostart", {});
                            }
                            break;
                        case "sleepgame":
                            //押されたオブジェクトのマウスオーバーをsleepgame前に解除
                            j_button.trigger("mouseout");
                            
                            if(that.kag.tmp.sleep_game != null){
                                return false;
                            }
                            //ready
                            that.kag.tmp.sleep_game = {};
                            _pm.next=false;
                            that.kag.ftag.startTag("sleepgame", _pm);
                            break;
                    }
                    //クリックされた時に音が指定されていたら
                    if (_pm.clickse != "") {
                        that.kag.ftag.startTag("playse", {
                            "storage" : _pm.clickse,
                            "stop" : true
                        });
                    }
                    //バグリングさせない
                    e.stopPropagation();
                    //ジャンプは行わない
                    return false;
                }
                //クリックされた時に音が指定されていたら
                if (_pm.clickse != "") {
                    that.kag.ftag.startTag("playse", {
                        "storage" : _pm.clickse,
                        "stop" : true
                    });
                }
                that.kag.layer.showEventLayer();
                //fixレイヤの場合はcallでスタックが積まれる
                if (_pm.role == "" && _pm.fix == "true") {
                    //コールスタックが帰ってきてない場合は、実行しないようにする必要がある
                    //fixの場合はコールスタックに残る。
                    var stack_pm = that.kag.getStack("call"); //最新のコールスタックを取得
                    if(stack_pm==null){
                       //callを実行する
                       //fixから遷移した場合はリターン時にnextorderしない
                       //strong_stopの場合は反応しない
                       //今がstrong_stopかどうかは時々刻々と変化するので、毎回新しくチェックする必要がある
                       //_pmはpmの参照コピーであるため、_pm.auto_nextを直接書き換えるわけにはいかない
                        var _auto_next = _pm.auto_next;
                        if(that.kag.stat.is_strong_stop == true){
                            _auto_next = "stop";
                        }else{
                           //パラメータ初期値が入るようになる
                           //_auto_next = "yes";
                        }
                        that.kag.ftag.startTag("call", {
                            storage: _storage,
                            target: _target,
                            auto_next: _auto_next
                        });
                    }else{
                        //スタックで残された
                        that.kag.log("callスタックが残っている場合、fixボタンは反応しません");
                        that.kag.log(stack_pm);
                        return false;
                    }
                } else {
                    //jumpを実行する
                    that.kag.ftag.startTag("jump", _pm);
                }
                //選択肢の後、スキップを継続するか否か
                if(that.kag.stat.skip_link=="true"){
                    e.stopPropagation();
                }else{
                    if(that.kag.stat.is_skip){
                        that.kag.ftag.startTag("skipstop", {
                            next: "false"
                        })    
                    }
                }
                //選択肢の後、オートを継続するか否か
                if(that.kag.stat._auto_link=="true"){
                    e.stopPropagation();
                }else{
                    if(that.kag.stat.is_auto){
                        that.kag.ftag.startTag("autostop", {
                        next: "false"
                        })
                    }
                }
            });
        })();
        
    }
})
TYRANO.kag.ftag.master_tag.button = TYRANO.kag.tag.button
TYRANO.kag.ftag.master_tag.button.kag = TYRANO.kag


const _link = TYRANO.kag.tag.link
TYRANO.kag.tag.link = $.extend(true, {} , _link, {
    setEvent:function(j_span,pm){
        var _target = pm.target;
        var _storage = pm.storage;
        var that = TYRANO;
        j_span.bind('click touchstart', function(e) {
            that.kag.stat.display_link = false;
            //ここから書き始める。イベントがあった場合の処理ですね　ジャンプで飛び出す
            TYRANO.kag.ftag.nextOrderWithLabel(_target, _storage);
            TYRANO.kag.layer.showEventLayer();

            //選択肢の後、スキップを継続するか否か
            if(that.kag.stat.skip_link=="true"){
                e.stopPropagation();
            }else{
                if(that.kag.stat.is_skip){
                    that.kag.ftag.startTag("skipstop", {
                        next: "false"
                    })    
                }
            }
            //選択肢の後、オートを継続するか否か
            if(that.kag.stat._auto_link=="true"){
                e.stopPropagation();
            }else{
                if(that.kag.stat.is_auto){
                    that.kag.ftag.startTag("autostop", {
                    next: "false"
                    })
                }
            }
        });
        j_span.css("cursor", "pointer");
    }
})
TYRANO.kag.ftag.master_tag.link = TYRANO.kag.tag.link
TYRANO.kag.ftag.master_tag.link.kag = TYRANO.kag


const _glink = TYRANO.kag.tag.glink
TYRANO.kag.tag.glink = $.extend(true, {} , _glink, {
    setEvent:function(j_button,pm){
        var that = TYRANO;
        (function() {
            var _target = pm.target;
            var _storage = pm.storage;
            var _pm = pm;
            var preexp = that.kag.embScript(pm.preexp);
            var button_clicked = false;

            j_button.click(function(e) {
                //連打対策
                if(button_clicked){
                    return false
                }

                //Sタグに到達していないとクリッカブルが有効にならない
                if (that.kag.stat.is_strong_stop != true) {
                    return false;
                }

                //クリックされた時に音が指定されていたら
                if (_pm.clickse != "") {
                    that.kag.ftag.startTag("playse", {
                        "storage" : _pm.clickse,
                        "stop" : true
                    });
                }

                button_clicked = true;
                if (_pm.exp != "") {
                    //スクリプト実行
                    that.kag.embScript(_pm.exp, preexp);
                }
                that.kag.layer.showEventLayer();
                if(pm.cm=="true"){
                    that.kag.ftag.startTag("cm", {});
                }

                //選択肢の後、スキップを継続するか否か
                if(that.kag.stat.skip_link=="true"){
                    e.stopPropagation();
                }else{
                    if(that.kag.stat.is_skip){
                        that.kag.ftag.startTag("skipstop", {
                            next: "false"
                        })    
                    }
                }
                //選択肢の後、オートを継続するか否か
                if(that.kag.stat._auto_link=="true"){
                    e.stopPropagation();
                }else{
                    if(that.kag.stat.is_auto){
                        that.kag.ftag.startTag("autostop", {
                        next: "false"
                        })
                    }
                }

                //コールを実行する
                that.kag.ftag.startTag("jump", _pm);

            });
            j_button.hover(function() {
                //マウスが乗った時
                if (_pm.enterimg != "") {
                    var enterimg_url = "./data/image/" + _pm.enterimg;
                    j_button.css("background-image", "url(" + enterimg_url + ")");
                }
                if (_pm.enterse != "") {
                    that.kag.ftag.startTag("playse", {
                        "storage" : _pm.enterse,
                        "stop" : true
                    });
                }
            }, function() {
                //マウスが乗った時
                if (_pm.enterimg != "") {
                    var img_url = "./data/image/" + _pm.graphic;
                    j_button.css("background-image", "url(" + img_url + ")");
                }
                if (_pm.leavese != "") {
                    that.kag.ftag.startTag("playse", {
                        "storage" : _pm.leavese,
                        "stop" : true
                    });
                }
            }); 
        })();
    }
})
TYRANO.kag.ftag.master_tag.glink = TYRANO.kag.tag.glink
TYRANO.kag.ftag.master_tag.glink.kag = TYRANO.kag


//chara_ptext拡張
var _chara_ptext = TYRANO.kag.tag.chara_ptext
TYRANO.kag.tag.chara_ptext = $.extend(true, {}, _chara_ptext, {
    start: function (pm) {
        var that = this;

        //chara_name_areaのdata-nameにキャラ名を入れる
        if(this.kag.stat.jcharas[pm.name] !== undefined){
            pm.name = this.kag.stat.jcharas[pm.name]
        }
        $(".chara_name_area").attr("data-autoskip", pm.name)
        //本来の処理
        _chara_ptext.start.apply(TYRANO, arguments)
    }.bind(TYRANO)
})
TYRANO.kag.ftag.master_tag.chara_ptext = TYRANO.kag.tag.chara_ptext
TYRANO.kag.ftag.master_tag.chara_ptext.kag = TYRANO.kag


const _playbgm = TYRANO.kag.tag.playbgm
TYRANO.kag.tag.playbgm = $.extend(true, {}, _playbgm, {
    play: function(pm){
        //本来の処理
        _playbgm.play.apply(TYRANO, [pm])

        const that = TYRANO
        let audio_obj = TYRANO.kag.tmp.map_se[pm.buf]

        //再生が完了した時、イベント定義しなおし
        if (pm.loop != "true") {
            audio_obj.off("end")
            audio_obj.on("end", function (e) {
                if (pm.target == "se") {
                    that.kag.tmp.is_se_play = false;
                    that.kag.tmp.is_vo_play = false;
                    if (that.kag.tmp.is_se_play_wait == true) {
                        that.kag.tmp.is_se_play_wait = false;
                        that.kag.ftag.nextOrder();
                    } else if (that.kag.tmp.is_vo_play_wait == true) {
                        //that.kag.tmp.is_vo_play_wait = false;
                        wait_id_b = setTimeout(function () {
                            if (that.kag.tmp.is_vo_play_wait && that.kag.stat.is_auto) {
                                that.kag.tmp.is_vo_play_wait = false;
                                that.kag.ftag.nextOrder();
                            }
                        }, 500);
                    }
                } else if (pm.target == "bgm") {
                    that.kag.tmp.is_bgm_play = false;
                    if (that.kag.tmp.is_bgm_play_wait == true) {
                        that.kag.tmp.is_bgm_play_wait = false;
                        that.kag.ftag.nextOrder();
                    }
                }
            });
        }
    }
})
TYRANO.kag.ftag.master_tag.playbgm = TYRANO.kag.tag.playbgm
TYRANO.kag.ftag.master_tag.playbgm.kag = TYRANO.kag

})()