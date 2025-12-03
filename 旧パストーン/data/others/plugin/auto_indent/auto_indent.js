(function(){
    var T = TYRANO.kag.ftag.master_tag.text;
    var showMessage_old = T.showMessage;
    T.showMessage = function (message_str, pm) {
        showMessage_old.call(T, message_str, pm);
        if ($(".chara_name_area").html() !== "") {
            var indent = parseInt(this.kag.stat.font.size);
            $(".current_span").parent().css({
                "text-indent" : (- indent) + "px",
                "padding-left": (  indent) + "px"
            });
        }
    };
})();