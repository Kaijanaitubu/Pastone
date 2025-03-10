tyrano.plugin.kag.tag.eval = {
    vital: ["exp"],
    pm: {
      exp: "",
      next: "true"
    },
    start: function (pm) {
      this.kag.evalScript(pm.exp);
      "true" == pm.next && this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.clearvar = {
    pm: {
      exp: ""
    },
    start: function (pm) {
      "" == pm.exp ? this.kag.clearVariable() : this.kag.evalScript("delete " + pm.exp);
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.clearsysvar = {
    start: function () {
      this.kag.variable.sf = {};
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.clearstack = {
    pm: {
      stack: ""
    },
    start: function (pm) {
      "" == pm.stack ? this.kag.stat.stack = {
        if: [],
        call: [],
        macro: []
      } : "anim" === pm.stack ? this.kag.tmp.num_anim = 0 : this.kag.stat.stack[pm.stack] = [];
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.close = {
    pm: {
      ask: "true"
    },
    start: function (pm) {
      var that = this;
      "true" == pm.ask ? $.confirm($.lang("exit_game"), (function () {
        that.close()
      }), (function () {
        that.kag.ftag.nextOrder()
      })) : this.close()
    },
    close: function () {
      window.close();
      void 0 !== navigator.app && navigator.app.exitApp();
      "undefined" != typeof require && void 0 !== require("nw.gui") && require("nw.gui").Window.get().close()
    }
  };
  tyrano.plugin.kag.tag.trace = {
    pm: {
      exp: ""
    },
    start: function (pm) {
      var val = this.kag.embScript(pm.exp);
      this.kag.log("trace出力：" + val);
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.body = {
    vital: [],
    pm: {
      bgimage: "",
      bgrepeat: "",
      bgcolor: "",
      bgcover: "false",
      scWidth: "",
      scHeight: ""
    },
    start: function (pm) {
      "" != pm.bgcolor && $("body").css("background-color", $.convertColor(pm.bgcolor));
      if ("" != pm.bgimage)
        if ("transparent" == pm.bgimage) {
          this.kag.layer.getLayer("base", "fore").hide();
          $("body").css("background-color", "transparent");
          $(".tyrano_base").css("background-color", "transparent")
        } else {
          var img_url = "";
          img_url = $.isHTTP(pm.bgimage) ? pm.bgimage : "./data/bgimage/" + pm.bgimage;
          $("body").css("background-image", 'url("' + img_url + '")')
        }
      "" != pm.bgrepeat && $("body").css("background-repeat", pm.bgrepeat);
      "true" == pm.bgcover && $("body").css("background-size", "cover");
      let flag_resize = !1;
      if ("" != pm.scWidth && parseInt(pm.scWidth) != parseInt(this.kag.config.scWidth)) {
        flag_resize = !0;
        this.kag.config.scWidth = parseInt(pm.scWidth);
        $(".tyrano_base").css("width", parseInt(pm.scWidth));
        $(".layer").css("width", parseInt(pm.scWidth))
      }
      if ("" != pm.scHeight && parseInt(pm.scHeight) != parseInt(this.kag.config.scHeight)) {
        flag_resize = !0;
        this.kag.config.scHeight = parseInt(pm.scHeight);
        $(".tyrano_base").css("height", parseInt(pm.scHeight));
        $(".layer").css("height", parseInt(pm.scHeight))
      }
      flag_resize && $(window).trigger("resize");
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.title = {
    vital: ["name"],
    pm: {
      name: ""
    },
    start: function (pm) {
      if ("" != pm.name) {
        this.kag.setTitle(pm.name);
        this.kag.ftag.nextOrder()
      }
    }
  };
  tyrano.plugin.kag.tag.iscript = {
    start: function (pm) {
      this.kag.stat.is_script = !0;
      this.kag.stat.buff_script = "";
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.endscript = {
    pm: {
      stop: "false"
    },
    start: function (pm) {
      this.kag.stat.is_script = !1;
      try {
        this.kag.evalScript(this.kag.stat.buff_script)
      } catch (err) {
        this.kag.error("error_in_iscript");
        console.error(err)
      }
      this.kag.stat.buff_script = "";
      "false" == pm.stop && this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.html = {
    pm: {
      layer: "",
      top: 0,
      left: 0
    },
    start: function (pm) {
      this.kag.stat.is_html = !0;
      this.kag.stat.map_html = {};
      this.kag.stat.map_html.buff_html = "";
      this.kag.stat.map_html.buff_pm = pm;
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.endhtml = {
    start: function (pm) {
      var tpm = this.kag.stat.map_html.buff_pm,
        html = this.kag.stat.map_html.buff_html,
        html_obj = $("<div></div>");
      html_obj.css("position", "absolute");
      html_obj.css("top", tpm.top + "px");
      html_obj.css("left", tpm.left + "px");
      $.setName(html_obj, tpm.name);
      html_obj.append($(html));
      var layer_free = this.kag.layer.getFreeLayer();
      layer_free.css("z-index", 9999999);
      layer_free.append(html_obj);
      layer_free.show();
      this.kag.stat.is_html = !1;
      this.kag.stat.map_html = {};
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.emb = {
    vital: ["exp"],
    pm: {
      exp: ""
    },
    log_join: "true",
    start: function (pm) {
      var val = "" + this.kag.embScript(pm.exp);
      this.kag.ftag.startTag("text", {
        val: val,
        backlog: "join"
      })
    }
  };
  tyrano.plugin.kag.tag.if = {
    vital: ["exp"],
    pm: {
      exp: ""
    },
    log_join: "true",
    start: function (pm) {
      if (this.kag.embScript(pm.exp)) {
        this.kag.pushStack("if", {
          bool: !0,
          deep: pm.deep_if
        });
        this.kag.ftag.nextOrder()
      } else {
        this.kag.pushStack("if", {
          bool: !1,
          deep: pm.deep_if
        });
        this.kag.ftag.nextOrderWithTagSearch({
          else: "",
          elsif: "",
          endif: ""
        }) || this.kag.error("missing_endif")
      }
    }
  };
  tyrano.plugin.kag.tag.elsif = {
    vital: ["exp"],
    pm: {
      exp: ""
    },
    log_join: "true",
    start: function (pm) {
      if (0 == this.kag.getStack("if").bool && this.kag.embScript(pm.exp)) {
        this.kag.setStack("if", {
          bool: !0,
          deep: pm.deep_if
        });
        this.kag.ftag.nextOrder()
      } else {
        this.kag.ftag.nextOrderWithTagSearch({
          else: "",
          elsif: "",
          endif: ""
        }) || this.kag.error("missing_endif")
      }
    }
  };
  tyrano.plugin.kag.tag.else = {
    pm: {
      exp: ""
    },
    log_join: "true",
    start: function (pm) {
      if (0 == this.kag.getStack("if").bool) {
        this.kag.setStack("if", {
          bool: !0,
          deep: pm.deep_if
        });
        this.kag.ftag.nextOrder()
      } else {
        this.kag.ftag.nextOrderWithTagSearch({
          endif: ""
        }) || this.kag.error("missing_endif")
      }
    }
  };
  tyrano.plugin.kag.tag.endif = {
    log_join: "true",
    start: function () {
      this.kag.popStack("if");
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.call = {
    pm: {
      storage: null,
      target: null,
      countpage: !0,
      auto_next: "yes"
    },
    start: function (pm) {
      var back_pm = {};
      back_pm.index = this.kag.ftag.current_order_index;
      back_pm.storage = this.kag.stat.current_scenario;
      back_pm.auto_next = pm.auto_next;
      back_pm.caller = pm;
      this.kag.pushStack("call", back_pm);
      null == pm.target && null != pm.storage ? this.kag.ftag.nextOrderWithIndex(-1, pm.storage) : this.kag.ftag.nextOrderWithLabel(pm.target, pm.storage)
    }
  };
  tyrano.plugin.kag.tag.return = {
    start: function () {
      var pm = this.kag.getStack("call");
      if (pm.caller && pm.caller.storage && ("make.ks" == pm.caller.storage || pm.caller.storage == this.kag.stat.resizecall.storage) && 1 == this.kag.tmp.loading_make_ref) {
        this.kag.stat.flag_ref_page = !0;
        this.kag.tmp.loading_make_ref = !1;
        this.kag.trigger("load-complete")
      }
      var auto_next = pm.auto_next;
      this.kag.popStack("call");
      this.kag.ftag.nextOrderWithIndex(pm.index, pm.storage, void 0, void 0, auto_next)
    }
  };
  tyrano.plugin.kag.tag.macro = {
    vital: ["name"],
    pm: {
      name: ""
    },
    log_join: "true",
    start: function (pm) {
      var index = this.kag.ftag.current_order_index,
        storage = this.kag.stat.current_scenario;
      this.kag.stat.map_macro[pm.name] = {
        storage: storage,
        index: index
      };
      this.kag.tmp.checking_macro = !0;
      this.kag.ftag.nextOrderWithTagSearch({
        endmacro: ""
      }) || this.kag.error("missing_endmacro")
    }
  };
  tyrano.plugin.kag.tag.endmacro = {
    log_join: "true",
    start: function (pm) {
      if (1 != this.kag.tmp.checking_macro) {
        var map_obj = this.kag.getStack("macro");
        if (map_obj) {
          this.kag.popStack("macro");
          var macro_stack = this.kag.getStack("macro") || {
            pm: {}
          };
          this.kag.stat.mp = $.extend({}, macro_stack.pm);
          this.kag.ftag.nextOrderWithIndex(map_obj.index, map_obj.storage, !0)
        }
      } else {
        this.kag.tmp.checking_macro = !1;
        this.kag.ftag.nextOrder()
      }
    }
  };
  tyrano.plugin.kag.tag.erasemacro = {
    vital: ["name"],
    pm: {
      name: ""
    },
    start: function (pm) {
      delete this.kag.stat.map_macro[pm.name];
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.savesnap = {
    vital: ["title"],
    pm: {
      title: ""
    },
    start: function (pm) {
      var that = this;
      this.kag.menu.snapSave(pm.title, (function () {
        that.kag.ftag.nextOrder()
      }))
    }
  };
  tyrano.plugin.kag.tag.autosave = {
    vital: [],
    pm: {
      title: ""
    },
    start: function (pm) {
      var that = this;
      "" == pm.title && (pm.title = this.kag.stat.current_save_str);
      this.kag.menu.snapSave(pm.title, (function () {
        that.kag.menu.doSetAutoSave();
        that.kag.ftag.nextOrder()
      }))
    }
  };
  tyrano.plugin.kag.tag.autoload = {
    vital: [],
    pm: {
      title: ""
    },
    start: function (pm) {
      $.getStorage(this.kag.config.projectID + "_tyrano_auto_save", this.kag.config.configSave);
      this.kag.menu.loadAutoSave()
    }
  };
  tyrano.plugin.kag.tag.ignore = {
    vital: ["exp"],
    pm: {
      exp: ""
    },
    start: function (pm) {
      if (this.kag.embScript(pm.exp)) {
        this.kag.ftag.nextOrderWithTagSearch({
          endignore: ""
        }) || this.kag.error("missing_endignore")
      } else this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.endignore = {
    start: function () {
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.edit = {
    vital: ["name"],
    pm: {
      name: "",
      length: "",
      initial: "",
      placeholder: "",
      color: "black",
      left: "0",
      top: "0",
      size: "20",
      face: "",
      width: "200",
      autocomplete: "false",
      height: "40",
      maxchars: "1000"
    },
    start: function (pm) {
      var j_text = $("<input class='text_box form' name='" + pm.name + "' type='text' value='' />");
      "" == pm.face && (pm.face = this.kag.stat.default_font.face);
      pm = $.minifyObject(pm);
      var new_style = {
        color: $.convertColor(pm.color),
        left: parseInt(pm.left),
        top: parseInt(pm.top),
        placeholder: pm.placeholder,
        width: pm.width,
        height: pm.height,
        "font-size": parseInt(pm.size),
        "font-family": pm.face
      };
      this.kag.event.addEventElement({
        tag: "edit",
        j_target: j_text,
        pm: pm
      });
      this.setEvent(j_text, pm);
      j_text.css(new_style);
      j_text.css("position", "absolute");
      j_text.attr("maxlength", pm.maxchars);
      "true" == pm.autocomplete ? j_text.attr("autocomplete", "on") : j_text.attr("autocomplete", "off");
      this.kag.layer.getFreeLayer().append(j_text);
      this.kag.layer.getFreeLayer().show();
      this.kag.ftag.nextOrder()
    },
    setEvent: function (j_text, pm) {
      TYRANO;
      var _pm = pm;
      ! function () {
        j_text.val(_pm.initial);
        j_text.click((function () {
          j_text.focus()
        }));
        j_text.on("keydown", (function (e) {
          e.stopPropagation()
        }))
      }()
    }
  };
  tyrano.plugin.kag.tag.preload = {
    vital: ["storage"],
    pm: {
      storage: "",
      wait: "false",
      single_use: "true",
      name: ""
    },
    start: function (pm) {
      var that = this;
      "true" == pm.wait && this.kag.weaklyStop();
      var storage = pm.storage;
      const preload_option = {
        single_use: "true" === pm.single_use,
        name: pm.name || ""
      };
      if ("object" == typeof storage && storage.length > 0) {
        for (var sum = 0, i = 0; i < storage.length; i++) that.kag.preload(storage[i], (function () {
          sum++;
          if (storage.length == sum && "true" == pm.wait) {
            that.kag.cancelWeakStop();
            that.kag.ftag.nextOrder()
          }
        }), preload_option);
        if ("false" == pm.wait) {
          that.kag.cancelWeakStop();
          that.kag.ftag.nextOrder()
        }
      } else {
        this.kag.preload(pm.storage, (function () {
          if ("true" == pm.wait) {
            that.kag.cancelWeakStop();
            that.kag.ftag.nextOrder()
          }
        }), preload_option);
        if ("false" == pm.wait) {
          that.kag.cancelWeakStop();
          that.kag.ftag.nextOrder()
        }
      }
    }
  };
  tyrano.plugin.kag.tag.unload = {
    pm: {
      storage: "",
      name: "",
      all_sound: "false"
    },
    start: function (pm) {
      if ("true" === pm.all_sound)
        for (const key in this.kag.tmp.preload_audio_map) {
          const audio_obj = this.kag.tmp.preload_audio_map[key];
          if (audio_obj) {
            audio_obj.unload();
            delete this.kag.tmp.preload_audio_map[key]
          }
        } else if (pm.name)
          for (const key in this.kag.tmp.preload_audio_map) {
            const audio_obj = this.kag.tmp.preload_audio_map[key];
            if (audio_obj && audio_obj.__names.includes(pm.name)) {
              audio_obj.unload();
              delete this.kag.tmp.preload_audio_map[key]
            }
          } else if (pm.storage) {
            const key = $.parseStorage(pm.storage),
              audio_obj = this.kag.tmp.preload_audio_map[key];
            if (audio_obj) {
              audio_obj.unload();
              delete this.kag.tmp.preload_audio_map[key]
            }
          }
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.clearfix = {
    pm: {
      name: ""
    },
    start: function (pm) {
      "" != pm.name ? $(".fixlayer." + pm.name).remove() : $(".fixlayer").remove();
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.commit = {
    start: function () {
      var that = this;
      this.kag.layer.getFreeLayer().find(".form").each((function () {
        var str = $(this).attr("name") + " = '" + $(this).val() + "'";
        that.kag.evalScript(str)
      }));
      that.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.cursor = {
    pm: {
      storage: "",
      x: "0",
      y: "0",
      type: "default",
      click_effect: "",
      mousedown_effect: "",
      touch_effect: "",
      next: "true"
    },
    start: function (pm) {
      if (pm.storage)
        if ("default" === pm.type) this.kag.setCursor(pm);
        else {
          this.kag.stat.current_cursor_map || (this.kag.stat.current_cursor_map = {});
          let image_url, css_str;
          if ("default" === pm.storage) css_str = pm.type;
          else {
            image_url = `./data/image/${pm.storage}`;
            css_str = `url(${image_url}) ${pm.x} ${pm.y}, ${pm.type}`
          }
          this.kag.key_mouse.vmouse.addImage(pm.type, image_url, pm.x, pm.y);
          this.kag.stat.current_cursor_map[pm.type] = css_str;
          this.overwriteCSS()
        }
      if ("false" === pm.auto_hide) {
        this.kag.stat.cursor_auto_hide = !1;
        $("body").off("mousemove.cursor_auto_hide");
        this.kag.setCursor(this.kag.stat.current_cursor)
      } else if (pm.auto_hide) {
        this.kag.stat.cursor_auto_hide = pm.auto_hide;
        const j_body = $("body").off("mousemove.cursor_auto_hide");
        this.kag.tmp.cursor_hide_timer = null;
        const timeout = parseInt(pm.auto_hide) || 3e3;
        this.kag.tmp.is_cursor_visible = !0;
        j_body.on("mousemove.cursor_auto_hide", (() => {
          if (!this.kag.tmp.is_cursor_visible) {
            this.kag.setCursor(this.kag.stat.current_cursor);
            this.kag.tmp.is_cursor_visible = !0
          }
          clearTimeout(this.kag.tmp.cursor_hide_timer);
          this.kag.tmp.cursor_hide_timer = setTimeout((() => {
            j_body.setStyle("cursor", "none");
            this.kag.tmp.is_cursor_visible = !1
          }), timeout)
        }));
        j_body.trigger("mousemove.cursor_auto_hide")
      }
      this.kag.stat.click_effect || (this.kag.stat.click_effect = {});
      if (pm.click_effect) {
        const event_type = "pc" === $.userenv() ? "click" : "pointerdown";
        "function" == typeof this.kag.tmp.show_effect_callback && document.body.removeEventListener(event_type, this.kag.tmp.show_effect_callback, {
          capture: !0
        });
        this.kag.stat.click_effect.is_enabled = "true" === pm.click_effect;
        if (this.kag.stat.click_effect.is_enabled) {
          "function" != typeof this.kag.tmp.show_effect_callback && (this.kag.tmp.show_effect_callback = e => {
            this.showEffect(e)
          });
          document.body.addEventListener(event_type, this.kag.tmp.show_effect_callback, {
            capture: !0
          })
        }
        this.overwriteCSS()
      }
      for (const key in pm)
        if (key.includes("e_")) {
          const _key = key.substring(2);
          this.kag.stat.click_effect[_key] = pm[key]
        }
      this.kag.key_mouse.vmouse.refreshImage();
      "false" !== pm.next && this.kag.ftag.nextOrder()
    },
    restore: function () {
      this.kag.setCursor(this.kag.stat.current_cursor);
      this.overwriteCSS();
      this.kag.ftag.startTag("cursor", {
        auto_hide: String(this.kag.stat.cursor_auto_hide || !1),
        next: "false"
      });
      this.kag.ftag.startTag("cursor", {
        click_effect: String(this.kag.stat.click_effect && this.kag.stat.click_effect.is_enabled),
        next: "false"
      })
    },
    showEffect: function (e) {
      if (void 0 === e.pageX || void 0 === e.pageY) return;
      let x = e.pageX,
        y = e.pageY;
      if (this.kag.key_mouse.vmouse.is_visible) {
        x = this.kag.key_mouse.vmouse.x;
        y = this.kag.key_mouse.vmouse.y
      }
      this.kag.stat.click_effect || (this.kag.stat.click_effect = {});
      const base_width = parseInt(this.kag.stat.click_effect.width) || 100,
        width = parseInt(base_width * this.kag.tmp.screen_info.scale_x),
        color = $.convertColor(this.kag.stat.click_effect.color || "white"),
        blend = this.kag.stat.click_effect.blend || "overlay",
        duration = parseInt(this.kag.stat.click_effect.time) || 300,
        opacity = $.convertOpacity(this.kag.stat.click_effect.opacity) || .8,
        j_effect = $('<div class="tyrano_click_effect">').appendTo("body");
      j_effect.setStyleMap({
        top: `${y}px`,
        left: `${x}px`,
        width: `${width}px`,
        height: `${width}px`,
        opacity: opacity,
        "mix-blend-mode": blend,
        "background-color": color,
        "animation-duration": `${duration}ms`
      }).show();
      setTimeout((() => {
        j_effect.remove()
      }), duration)
    },
    overwriteCSS: function () {
      if (!this.kag.stat.current_cursor_map) return;
      if (!this.kag.stat.current_cursor_map.pointer) return;
      if (!this.kag.tmp.j_cursor_css) {
        this.kag.tmp.j_cursor_css = $("<style />");
        this.kag.tmp.j_cursor_css.appendTo("head")
      }
      let css_text = `\n            #remodal-cancel,\n            #remodal-confirm,\n            .button_menu,\n            .menu_item img,\n            .save_list_item {\n                cursor: ${this.kag.stat.current_cursor_map.pointer||"pointer"};\n            }\n        `;
      if (this.kag.stat.click_effect) {
        css_text += `\n                @keyframes tyrano_click_effect {\n                    from {\n                        transform: translate(-50%, -50%) scale(1);\n                    }\n                    100% {\n                        transform: translate(-50%, -50%) scale(${(this.kag.stat.click_effect.scale||120)/100});\n                        opacity: 0;\n                    }\n                }\n            `
      }
      this.kag.tmp.j_cursor_css.text(css_text)
    }
  };
  tyrano.plugin.kag.tag.screen_full = {
    vital: [],
    pm: {},
    start: function (pm) {
      this.kag.menu.screenFull();
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.sleepgame = {
    vital: [],
    pm: {
      storage: "",
      target: "",
      next: !0
    },
    start: function (pm) {
      var that = this,
        title = this.kag.stat.current_save_str;
      this.kag.menu.snapSave(title, (function () {
        that.kag.menu.setGameSleep(pm.next);
        that.kag.ftag.startTag("jump", pm)
      }), "false")
    }
  };
  tyrano.plugin.kag.tag.awakegame = {
    vital: [],
    pm: {
      variable_over: "true",
      sound_opt_over: "true",
      bgm_over: "true"
    },
    start: function (pm) {
      if (null == this.kag.tmp.sleep_game) this.kag.ftag.nextOrder();
      else {
        var sleep_data = this.kag.tmp.sleep_game;
        "true" == pm.variable_over && (sleep_data.stat.f = this.kag.stat.f);
        if ("true" === pm.sound_opt_over) {
          sleep_data.stat.map_se_volume = this.kag.stat.map_se_volume;
          sleep_data.stat.map_bgm_volume = this.kag.stat.map_bgm_volume
        }
        var options = {
          bgm_over: pm.bgm_over
        };
        1 == this.kag.tmp.sleep_game_next && (options.auto_next = "yes");
        this.kag.menu.loadGameData($.extend(!0, {}, sleep_data), options);
        this.kag.tmp.sleep_game = null
      }
    }
  };
  tyrano.plugin.kag.tag.breakgame = {
    vital: [],
    pm: {},
    start: function (pm) {
      this.kag.tmp.sleep_game = null;
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.dialog = {
    vital: [],
    pm: {
      name: "tf.dialog_value",
      type: "alert",
      text: "",
      storage: "",
      target: "",
      storage_cancel: "",
      target_cancel: "",
      label_ok: "OK",
      label_cancel: "Cancel"
    },
    start: function (pm) {
      var that = this;
      $(".remodal").find("#remodal-confirm").html(pm.label_ok);
      $(".remodal").find("#remodal-cancel").html(pm.label_cancel);
      if ("confirm" == pm.type) $.confirm(pm.text, (function () {
        that.finish(pm)
      }), (function () {
        pm.storage = pm.storage_cancel;
        pm.target = pm.target_cancel;
        that.finish(pm)
      }));
      else if ("input" == pm.type) {
        alertify.set({
          buttonFocus: "none",
          labels: {
            ok: pm.label_ok,
            cancel: pm.label_cancel
          }
        });
        alertify.prompt(pm.text, (function (flag, text) {
          if (flag) {
            var str = pm.name + " = '" + text + "'";
            that.kag.evalScript(str)
          } else {
            pm.storage = pm.storage_cancel;
            pm.target = pm.target_cancel
          }
          that.finish(pm)
        }));
        $(".alertify-text").on("keydown", (function (e) {
          e.stopPropagation()
        }))
      } else $.alert(pm.text, (function () {
        that.finish(pm)
      }))
    },
    finish: function (pm) {
      "" != pm.storage || "" != pm.target ? this.kag.ftag.startTag("jump", pm) : this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.plugin = {
    vital: ["name"],
    pm: {
      name: "",
      storage: "init.ks"
    },
    start: function (pm) {
      var name = pm.name;
      pm.storage = "../others/plugin/" + name + "/" + pm.storage;
      this.kag.stat.mp = pm;
      this.kag.ftag.startTag("call", pm)
    }
  };
  tyrano.plugin.kag.tag.sysview = {
    vital: ["type", "storage"],
    pm: {
      type: "",
      storage: ""
    },
    start: function (pm) {
      var type = pm.type,
        storage = pm.storage;
      this.kag.cache_html[type] && delete this.kag.cache_html[type];
      this.kag.stat.sysview[type] = storage;
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.loadcss = {
    vital: ["file"],
    pm: {
      file: ""
    },
    start: function (pm) {
      var file = pm.file,
        style = '<link class="_tyrano_cssload_tag" rel="stylesheet" href="' + file + "?" + Math.floor(1e7 * Math.random()) + '">';
      const j_style = $(style);
      $("head link:last").after(j_style);
      "true" === this.kag.config.keyFocusWithHoverStyle && j_style.on("load", (() => {
        $.copyHoverCSSToFocusCSS(j_style)
      }));
      this.kag.stat.cssload[file] = !0;
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.save_img = {
    vital: [],
    pm: {
      storage: "",
      folder: ""
    },
    start: function (pm) {
      pm.storage;
      var folder = "",
        storage_url = "";
      "" == pm.storage && (pm.storage = "default");
      folder = "" != pm.folder ? pm.folder : "bgimage";
      storage_url = $.isHTTP(pm.storage) ? pm.storage : "./data/" + folder + "/" + pm.storage;
      "default" == pm.storage && (storage_url = "");
      this.kag.stat.save_img = storage_url;
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.nolog = {
    vital: [],
    pm: {},
    start: function (pm) {
      this.kag.stat.log_write = !1;
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.endnolog = {
    vital: [],
    pm: {},
    start: function (pm) {
      this.kag.stat.log_write = !0;
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.pushlog = {
    vital: ["text"],
    pm: {
      text: "",
      join: "false"
    },
    start: function (pm) {
      "true" == pm.join ? this.kag.pushBackLog(pm.text, "join") : this.kag.pushBackLog(pm.text, "add");
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.start_keyconfig = {
    pm: {},
    start: function (pm) {
      this.kag.stat.enable_keyconfig = !0;
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.stop_keyconfig = {
    pm: {},
    start: function (pm) {
      this.kag.stat.enable_keyconfig = !1;
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.apply_local_patch = {
    vital: ["file"],
    pm: {
      file: "",
      reload: "false"
    },
    start: function (pm) {
      var that = this;
      if ($.isNWJS() || $.isElectron()) {
        var patch_path = $.localFilePath() + "/" + pm.file;
        that.kag.applyPatch(patch_path, pm.reload, (function () {
          that.kag.ftag.nextOrder()
        }))
      } else that.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.check_web_patch = {
    vital: ["url"],
    pm: {
      url: "",
      reload: "false"
    },
    start: function (pm) {
      var that = this;
      $.isNWJS() || $.isElectron() ? $.ajax({
        url: pm.url + "?" + Math.floor(1e6 * Math.random()),
        cache: !1,
        dataType: "json",
        success: function (json) {
          "object" != typeof json && (json = JSON.parse(json));
          that.checkPatch(json, pm)
        },
        error: function (e) {
          console.log(e);
          alert($.lang("patch_not_found", {
            path: pm.url
          }))
        }
      }) : that.kag.ftag.nextOrder()
    },
    checkPatch: function (obj, pm) {
      var that = this;
      void 0 === this.kag.variable.sf._patch_version && this.kag.evalScript("sf._patch_version=" + this.kag.config.game_version);
      if (parseFloat(this.kag.variable.sf._patch_version) < parseFloat(obj.version)) {
        const confirm_message = $.lang("new_patch_found", {
          version: parseFloat(obj.version),
          message: obj.message
        }).replace(/\n/g, "<br>");
        $.confirm(confirm_message, (function () {
          alert($.lang("apply_web_patch"));
          var http = require("http"),
            fs = require("fs"),
            file = obj.file,
            url = $.getDirPath(pm.url) + file; - 1 != url.indexOf("https") && (http = require("https"));
          var patch_path = $.localFilePath();
          patch_path = patch_path + "/" + file;
          var outFile = fs.createWriteStream(patch_path);
          http.get(url, (function (res) {
            res.pipe(outFile);
            res.on("end", (function () {
              outFile.close();
              that.kag.evalScript("sf._patch_version=" + obj.version);
              window.close()
            }))
          })).on("error", (function (err) {
            console.log("Error: ", err)
          }))
        }), (function () {
          that.kag.ftag.nextOrder()
        }))
      } else that.kag.ftag.nextOrder();
      console.log(obj)
    }
  };
  tyrano.plugin.kag.tag.set_resizecall = {
    vital: ["storage"],
    pm: {
      storage: "",
      target: ""
    },
    start: function (pm) {
      this.kag.stat.resizecall.storage = pm.storage;
      this.kag.stat.resizecall.target = pm.target;
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.closeconfirm_on = {
    pm: {},
    start: function (pm) {
      this.kag.stat.use_close_confirm = !0;
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.closeconfirm_off = {
    pm: {},
    start: function (pm) {
      this.kag.stat.use_close_confirm = !1;
      $.disableCloseConfirm();
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.dialog_config = {
    pm: {
      okpos: "",
      btntype: "",
      btnwidth: "",
      btnmargin: "",
      btnpadding: "",
      fontsize: "",
      fontbold: "",
      fontface: "",
      fontcolor: "",
      btnfontsize: "",
      btnfontbold: "",
      btnfontface: "",
      btnfontcolor: "",
      boxradius: "",
      boxcolor: "",
      boximg: "",
      boximgpos: "",
      boximgrepeat: "",
      boximgsize: "",
      boxopacity: "",
      boxwidth: "",
      boxheight: "",
      boxpadding: "",
      bgcolor: "",
      bgimg: "",
      bgimgpos: "",
      bgimgrepeat: "",
      bgimgsize: "",
      bgopacity: "",
      openeffect: "",
      opentime: "",
      closeeffect: "",
      closetime: "",
      gotitle: "",
      ingame: ""
    },
    __initialized: !1,
    init() {
      if (!this.__initialized) {
        this.__initialized = !0;
        this.j_overlay = $(".remodal-overlay");
        this.j_box = $("[data-remodal-id=modal]");
        this.j_wrapper = this.j_box.parent();
        this.j_title = this.j_box.find(".remodal_title");
        this.j_message = this.j_box.find(".remodal_txt");
        this.j_text = $([this.j_title[0], this.j_message[0]]);
        this.j_cancel = this.j_box.find(".remodal-cancel").attr("id", "remodal-cancel");
        this.j_ok = this.j_box.find(".remodal-confirm").attr("id", "remodal-confirm");
        this.j_button = $([this.j_ok[0], this.j_cancel[0]]);
        this.j_boxbase = $('<div class="remodal-boxbase"></div>');
        this.j_box.prepend(this.j_boxbase);
        this.j_base = $('<div class="remodal-base"></div>');
        this.j_image = $('<div class="remodal-image"</div>');
        this.j_base.append(this.j_image);
        this.j_wrapper.prepend(this.j_base);
        this.j_ok_img = null;
        this.j_cancel_img = null
      }
    },
    start: function (pm) {
      this.init();
      pm.btntype && this.j_button.attr("class", pm.btntype);
      pm.btnwidth && this.j_button.setStyle("width", $.convertLength(pm.btnwidth));
      pm.btnmargin && this.j_button.setMargin(pm.btnmargin);
      pm.btnpadding && this.j_button.setPadding(pm.btnpadding);
      pm.fontsize && this.j_text.setStyle("font-size", $.convertLength(pm.fontsize));
      pm.fontbold && this.j_text.setStyle("font-weight", $.convertFontWeight(pm.fontbold));
      pm.fontface && this.j_text.setStyle("font-family", pm.fontface);
      pm.fontcolor && this.j_text.setStyle("color", $.convertColor(pm.fontcolor));
      pm.btnfontsize && this.j_button.setStyle("font-size", $.convertLength(pm.btnfontsize));
      pm.btnfontbold && this.j_button.setStyle("font-weight", $.convertFontWeight(pm.btnfontbold));
      pm.btnfontface && this.j_button.setStyle("font-family", pm.btnfontface);
      pm.btnfontcolor && this.j_button.setStyle("color", $.convertColor(pm.btnfontcolor));
      if (pm.boxradius) {
        this.j_box.setStyle("border-radius", $.convertLength(pm.boxradius + "px"));
        this.j_boxbase.setStyle("border-radius", $.convertLength(pm.boxradius + "px"))
      }
      pm.boxcolor && this.j_boxbase.setStyle("background-color", $.convertColor(pm.boxcolor));
      pm.boximg && this.j_boxbase.setStyle("background-image", $.convertBackgroundImage(pm.boximg, "image"));
      pm.boximgpos && this.j_boxbase.setStyle("background-position", $.convertBackgroundPosition(pm.boximgpos));
      pm.boximgsize && this.j_boxbase.setStyle("background-size", $.convertLength(pm.boximgsize));
      pm.boximgrepeat && this.j_boxbase.setStyle("background-repeat", pm.boximgrepeat);
      pm.boxopacity && this.j_boxbase.setStyle("opacity", $.convertOpacity(pm.boxopacity));
      pm.boxwidth && this.j_box.setStyle("width", $.convertLength(pm.boxwidth)).setStyle("max-width", $.convertLength(pm.boxwidth));
      pm.boxheight && this.j_box.setStyle("height", $.convertLength(pm.boxheight)).setStyle("max-height", $.convertLength(pm.boxheight));
      pm.boxpadding && this.j_box.setPadding(pm.boxpadding);
      (pm.boximg || pm.boxcolor) && this.j_box.setStyleMap({
        background: "none"
      });
      (pm.bgimg || pm.bgcolor) && this.j_overlay.setStyleMap({
        webkitFilter: "none",
        filter: "none",
        background: "none"
      });
      pm.bgcolor && this.j_image.setStyle("background-color", $.convertColor(pm.bgcolor));
      pm.bgimg && this.j_image.setStyle("background-image", $.convertBackgroundImage(pm.bgimg, "image"));
      pm.bgimgpos && this.j_image.setStyle("background-position", $.convertBackgroundPosition(pm.bgimgpos));
      pm.bgimgsize && this.j_image.setStyle("background-size", $.convertLength(pm.bgimgsize));
      pm.bgimgrepeat && this.j_image.setStyle("background-repeat", pm.bgimgrepeat);
      pm.bgopacity && this.j_image.setStyle("opacity", $.convertOpacity(pm.bgopacity));
      pm.openeffect && (this.kag.tmp.remodal_opening_effect = pm.openeffect);
      pm.closeeffect && (this.kag.tmp.remodal_closing_effect = pm.closeeffect);
      pm.opentime && (this.kag.tmp.remodal_opening_effect_time = pm.opentime + "ms");
      pm.closetime && (this.kag.tmp.remodal_closing_effect_time = pm.closetime + "ms");
      pm.gotitle && (tyrano_lang.word.go_title = pm.gotitle);
      if (pm.okpos) {
        const insert_method = "left" === pm.okpos ? "insertBefore" : "insertAfter";
        this.j_ok[insert_method](this.j_cancel);
        this.j_ok_img && this.j_ok_img[insert_method](this.j_ok);
        this.j_cancel_img && this.j_cancel_img[insert_method](this.j_cancel)
      }
      if (pm.ingame) {
        const j_remodal = $(".remodal-bg, .remodal-overlay, .remodal-wrapper");
        if ("true" === pm.ingame) {
          j_remodal.appendTo("#tyrano_base");
          j_remodal.setStyle("z-index", "1000000000")
        } else "false" === pm.ingame && j_remodal.appendTo("body")
      }
      this.kag.ftag.nextOrder()
    },
    changeButton(pm, is_ok) {
      if (pm.img) return this.replaceButton(pm, is_ok);
      const j_elm = is_ok ? this.j_ok : this.j_cancel,
        id = is_ok ? "remodal-confirm" : "remodal-cancel",
        j_old_image = $(`img#${id}`);
      if (j_old_image.length > 0) {
        j_old_image.remove();
        j_elm.show().attr("id", id);
        TYRANO.kag.makeFocusable(j_elm)
      }
      pm.text && j_elm.text(pm.text);
      pm.type && j_elm.attr("class", pm.type);
      pm.width && j_elm.setStyle("width", $.convertLength(pm.width));
      pm.margin && j_elm.setMargin(pm.margin);
      pm.padding && j_elm.setPadding(pm.padding);
      pm.fontsize && j_elm.setStyle("font-size", $.convertLength(pm.fontsize));
      pm.fontbold && j_elm.setStyle("font-weight", $.convertFontWeight(pm.fontbold));
      pm.fontface && j_elm.setStyle("font-family", pm.fontface);
      pm.fontcolor && j_elm.setStyle("color", $.convertColor(pm.fontcolor));
      j_elm.off("mouseenter mouseleave click");
      j_elm.on("mouseenter", (() => {
        pm.enterse && this.kag.playSound(pm.enterse)
      }));
      j_elm.on("mouseleave", (() => {
        pm.leavese && this.kag.playSound(pm.leavese)
      }));
      j_elm.on("click", (() => {
        pm.clickse && this.kag.playSound(pm.clickse)
      }))
    },
    replaceButton(pm, is_ok) {
      pm.img = $.parseStorage(pm.img, "image");
      pm.enterimg = $.parseStorage(pm.enterimg, "image");
      pm.activeimg = $.parseStorage(pm.activeimg, "image");
      pm.clickimg = $.parseStorage(pm.clickimg, "image");
      const id = is_ok ? "remodal-confirm" : "remodal-cancel",
        j_original_button = is_ok ? this.j_ok : this.j_cancel,
        j_old_image = $(`img#${id}`);
      if (j_old_image.length) j_old_image.remove();
      else {
        j_original_button.hide().attr("id", "");
        TYRANO.kag.makeUnfocusable(j_original_button)
      }
      const j_img = this.createButton(pm);
      pm.margin && j_img.setMargin(pm.margin);
      pm.padding && j_img.setPadding(pm.padding);
      j_img.attr("id", id);
      j_img.addClass("remodal-image-button");
      j_img.insertBefore(j_original_button);
      j_img.on("click", (() => {
        j_original_button.trigger("click")
      }));
      j_img.on("touchstart", (() => {
        j_original_button.trigger("touchstart")
      }));
      is_ok ? this.j_ok_img = j_img : this.j_cancel_img = j_img
    },
    createButton(pm) {
      const j_img = $("<img />").attr("src", pm.img);
      pm.width && j_img.setStyle("width", $.convertLength(pm.width));
      let clicked = !1;
      j_img.on("init", (() => {
        clicked = !1;
        j_img.attr("src", pm.img)
      }));
      j_img.on("mouseenter", (() => {
        pm.enterimg && (pm.activeimg && 0 !== j_img.filter(":active").length || j_img.attr("src", pm.enterimg));
        pm.enterse && this.kag.playSound(pm.enterse)
      }));
      j_img.on("mouseleave", (() => {
        pm.activeimg ? 0 === j_img.filter(":active").length && j_img.attr("src", pm.img) : clicked || j_img.attr("src", pm.img);
        pm.leavese && this.kag.playSound(pm.leavese)
      }));
      j_img.on("mousedown", (() => {
        pm.activeimg && j_img.attr("src", pm.activeimg);
        pm.clickse && this.kag.playSound(pm.clickse);
        window.__active_element = j_img[0]
      }));
      j_img.on("activeoff", (() => {
        j_img.filter(":hover").length > 0 ? clicked = !0 : pm.activeimg && j_img.attr("src", pm.img)
      }));
      j_img.on("click", (() => {
        clicked = !0;
        pm.clickimg && j_img.attr("src", pm.clickimg);
        pm.clickse && this.kag.playSound(pm.clickse)
      }));
      j_img.on("remove", (() => {
        window.__active_element === j_img[0] && (window.__active_element = null)
      }));
      if (!window.__is_set_active_remover) {
        window.__is_set_active_remover = !0;
        window.addEventListener("mouseup", (() => {
          if (window.__active_element) {
            const elm = window.__active_element;
            window.__active_element = null;
            $(elm).trigger("activeoff")
          }
        }), {
          capture: !0
        })
      }
      return j_img
    }
  };
  tyrano.plugin.kag.tag.dialog_config_ok = {
    pm: {
      text: "",
      type: "",
      width: "",
      margin: "",
      padding: "",
      fontsize: "",
      fontbold: "",
      fontface: "",
      fontcolor: "",
      img: "",
      imgwidth: "",
      enterimg: "",
      activeimg: "",
      clickimg: "",
      enterse: "",
      leavese: "",
      clickse: ""
    },
    start: function (pm) {
      const that = this.kag.ftag.master_tag.dialog_config;
      that.init();
      that.changeButton(pm, !0);
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.dialog_config_ng = {
    pm: tyrano.plugin.kag.tag.dialog_config_ok.pm,
    start: function (pm) {
      const that = this.kag.ftag.master_tag.dialog_config;
      that.init();
      that.changeButton(pm, !1);
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.dialog_config_filter = {
    start: function (pm) {
      const filter = this.kag.ftag.master_tag.filter;
      pm = $.extend({}, filter.pm, pm);
      const filter_str = filter.buildFilterPropertyValue(pm);
      $(".remodal-base").setStyleMap({
        "backdrop-filter": filter_str
      }, "webkit");
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.mode_effect = {
    pm: {
      all: "",
      skip: "",
      auto: "",
      holdskip: "",
      stop: "",
      env: "all"
    },
    next: function (pm) {
      this.kag.ftag.nextOrder()
    },
    mode_list: ["skip", "auto", "stop", "holdskip", "holdstop"],
    start: function (pm) {
      let target_env_keys;
      target_env_keys = "all" === pm.env ? ["pc", "phone"] : [pm.env];
      pm.all && this.mode_list.forEach((mode => {
        pm[mode] || (pm[mode] = pm.all)
      }));
      target_env_keys.forEach((env_key => {
        const map = this.kag.tmp.mode_effect[env_key];
        this.mode_list.forEach((mode => {
          if (pm[mode]) {
            map[mode] || (map[mode] = {});
            map[mode].storage = pm[mode];
            ["width", "height", "color", "bgcolor"].forEach((pm_key => {
              pm[pm_key] && (map[mode][pm_key] = pm[pm_key])
            }))
          }
        }))
      }));
      this.kag.ftag.nextOrder()
    }
  };
  tyrano.plugin.kag.tag.loading_log = {
    pm: {
      mintime: "",
      all: "",
      load: "",
      save: "",
      dottime: ""
    },
    initialized: !1,
    init() {
      if (!this.initialized) {
        this.initialized = !0;
        this.j_loading_log = $("#tyrano-loading");
        if (!this.j_loading_log.length) {
          const html = '\n            <div id="tyrano-loading" class="tyrano-loading">\n                <div class="icon"></div>\n                <div class="message"></div>\n            </div>\n            ';
          this.j_loading_log = $(html)
        }
        this.kag.tmp.j_loading_log = this.j_loading_log;
        this.kag.stat.loading_log = {
          min_time: 20,
          dot_time: 1500,
          use_icon: !0,
          use: !1,
          message_map: {
            preload: "",
            save: ""
          }
        };
        this.kag.tmp.j_loading_log_message = this.j_loading_log.find(".message");
        this.kag.tmp.j_loading_log_icon = this.j_loading_log.find(".icon");
        this.j_loading_log.appendTo("#tyrano_base")
      }
    },
    default_message_map: {
      preload: "Loading",
      save: "Saving"
    },
    start(pm) {
      this.init();
      pm.mintime && (this.kag.stat.loading_log.min_time = parseInt(pm.mintime));
      pm.all && ["preload", "save"].forEach((key => {
        pm[key] || (pm[key] = pm.all)
      }));
      pm.icon && (this.kag.stat.loading_log.use_icon = "true" === pm.icon);
      pm.preload && (this.kag.stat.loading_log.message_map.preload = pm.preload);
      pm.save && (this.kag.stat.loading_log.message_map.save = pm.save);
      pm.dottime && (this.kag.stat.loading_log.dot_time = parseInt(pm.dottime));
      pm.left ? this.j_loading_log.setStyleMap({
        left: $.convertLength(pm.left),
        right: "auto"
      }) : pm.right && this.j_loading_log.setStyleMap({
        left: "auto",
        right: $.convertLength(pm.right)
      });
      pm.top ? this.j_loading_log.setStyleMap({
        top: $.convertLength(pm.top),
        bottom: "auto"
      }) : pm.bottom && this.j_loading_log.setStyleMap({
        top: "auto",
        bottom: $.convertLength(pm.bottom)
      });
      this.j_loading_log.hide();
      this.kag.ftag.nextOrder()
    }
  };