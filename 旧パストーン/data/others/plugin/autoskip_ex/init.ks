[iscript]
sf._autoskip = {
    auto_img: mp.auto_img || "",
    auto_img_x: mp.auto_img_x != null ? parseInt(mp.auto_img_x) : 0,
    auto_img_y: mp.auto_img_y != null ? parseInt(mp.auto_img_y) : 0,
    skip_img: mp.skip_img || "",
    skip_img_x: mp.skip_img_x != null ? parseInt(mp.skip_img_x) : 0,
    skip_img_y: mp.skip_img_y != null ? parseInt(mp.skip_img_y) : 0,
    auto_button_name: mp.auto_button_name || "",
    auto_button_normal: mp.auto_button_normal || "",
    auto_button_active: mp.auto_button_active || "",
    skip_button_name: mp.skip_button_name || "",
    skip_button_normal: mp.skip_button_normal || "",
    skip_button_active: mp.skip_button_active || "",
    next_img_normal: mp.next_img_normal || "../../tyrano/images/system/nextpage.gif",
    next_img_auto: mp.next_img_auto || "",
    next_img_skip: mp.next_img_skip || "",
    auto_click_stop: mp.auto_click_stop === "false" ? false : true,
    skip_click_stop: mp.skip_click_stop === "false" ? false : true,
    auto_select_stop: mp.auto_select_stop === "true" ? true : false,
    skip_select_stop: mp.skip_select_stop === "true" ? true : false,
    progress_p: mp.progress_p || "none",
    progress_x: mp.progress_x != null ? parseInt(mp.progress_x) : 0,
    progress_y: mp.progress_y != null ? parseInt(mp.progress_y) : 0,
    progress_w: mp.progress_w != null ? parseInt(mp.progress_w) : 0,
    progress_h: mp.progress_h != null ? parseInt(mp.progress_h) : 0,
    progress_color: mp.progress_color || "",
    progress_img: mp.progress_img || "",
    progress_rev: mp.progress_rev === "true" ? true : false,
    page_ref: mp.page_ref === "true" ? true : false,
}
if(mp.autoskip !== undefined){
    sf._autoskip = $.extend(true, sf._autoskip, mp.autoskip)
}
[endscript]

[loadjs storage="plugin/autoskip_ex/main.js"]
[return]