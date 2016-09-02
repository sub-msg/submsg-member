var sublibraries = "/libraries/";
$(function() {
    var b, c, d, e, f, g, h, i, j, k, l, m, n, a = function() {
        $("body").eventdialog({
            type: "warning",
            title: "抱歉！发生了一个错误",
            msg: '尝试提交的请求失败，这可能是网络连接不稳定导致的，请重试。<br />如当前页面无响应，请刷新页面后重试。<br />如重试或刷新后仍无响应，请前往<a href="/chs/feedback#/create" style="color:#007ffc;">在线支持</a>页面联系管理员<br />或致电 4008-753-365。',
            icon: sublibraries + "/images/warning.png",
            marginLeft: "-295",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {}
        })
    };
    $(".settingAdvanced").click(function() {
        $(this).parent().find("ul").menuHold({
            t: "move"
        })
    }),
    $(".menu-houlder").click(function() {
        $(this).parents("ul").hide()
    }),
    $.address.change(function(a) {
        b(a.value)
    }),
    b = function(a) {
        switch (a) {
        case "/":
            c();
            break;
        case "/all":
            c();
            break;
        case "/unsendverify":
            d();
            break;
        case "/verifying":
            e();
            break;
        case "/verifyed":
            f();
            break;
        case "/unverifyed":
            g();
            break;
        default:
            c()
        }
    },
    c = function() {
        setupSpinnerWithNoContainer($(".projectTitle span")),
        j("get", "all", "1"),
        $(".projectTitle h2:eq(0)").text($(".projectTitle").find("li:eq(0) a").attr("title"))
    },
    d = function() {
        setupSpinnerWithNoContainer($(".projectTitle span")),
        j("get", "unsendverify", "1"),
        $(".projectTitle h2:eq(0)").text($(".projectTitle").find("li:eq(1) a").attr("title"))
    },
    e = function() {
        setupSpinnerWithNoContainer($(".projectTitle span")),
        j("get", "verifying", "1"),
        $(".projectTitle h2:eq(0)").text($(".projectTitle").find("li:eq(2) a").attr("title"))
    },
    f = function() {
        setupSpinnerWithNoContainer($(".projectTitle span")),
        j("get", "verifyed", "1"),
        $(".projectTitle h2:eq(0)").text($(".projectTitle").find("li:eq(3) a").attr("title"))
    },
    g = function() {
        setupSpinnerWithNoContainer($(".projectTitle span")),
        j("get", "unverifyed", "1"),
        $(".projectTitle h2:eq(0)").text($(".projectTitle").find("li:eq(4) a").attr("title"))
    },
    $(".next").live("click",
    function() {
        var a = $(this).attr("rel"),
        b = 1,
        c = $(this).attr("alt");
        j(a, c, b)
    }),
    $(".set_tag").live("click",
    function() {
        var a = $(this).parents(".message_project_title").find(".edit_tag_container");
        a.css("left", "-" + a.width() + "px"),
        a.show(),
        a.animate({
            left: "0px"
        },
        200)
    }),
    $(".edit_tag").live("click",
    function() {
        var c, d, a = $(this).parents("li").find(".delete").attr("id"),
        b = $(this).attr("data");
        b = parseInt(b),
        c = "no_tag",
        c = 1 == b ? "tag_red": 2 == b ? "tag_pur": 3 == b ? "tag_ble": 4 == b ? "tag_blu": 5 == b ? "tag_gre": 6 == b ? "tag_yel": "no_tag",
        d = $(this).parents(".message_project_title").find(".edit_tag_container"),
        i(b, a, d, c)
    }),
    $(".title_text").live("dblclick",
    function() {
        var a = $(this).text();
        $(this).html('<input type="text" class="edit_title" maxlength="20" value="' + a + '"/>'),
        $(this).find(".edit_title").select()
    }),
    $(".edit_title").live("blur",
    function() {
        var a = $(this).parents("li").find(".delete").attr("id"),
        b = $(this).val();
        $(this).parent(".title_text").text(b),
        h(b, a)
    }),
    $(".developer_sign").find("input").live("click",
    function() {
        $(this).select()
    }),
    h = function(b, c) {
        $.post("/member/updateTempTitle.sm", {
        	tempTitle: b,
        	tempId: c,
            tim: Math.random()
        },
        function(b) {
            try {
                var c = b;//$.parseJSON(b)
            } catch(d) {
                a()
            }
            "0" != c.flag && $("body").eventdialog({
                type: "alert",
                title: "发生了一个错误！",
                msg: c.returns,
                icon: sublibraries + "/images/warning.png",
                marginLeft: "-295",
                marginRight: "",
                marginTop: "-120",
                marginBottom: "",
                callback: function() {
                    removeSpinner(),
                    null == c.flag && window.location.reload()
                }
            })
        })
    },
    i = function(b, c, d, e) {

    	d.animate({
            left: "-" + d.width() + "px"
        },
        200,
        function() {
            $(this).hide()
        }), d.parents(".message_project_title").removeClass("no_tag").removeClass("tag_red").removeClass("tag_pur").removeClass("tag_ble").removeClass("tag_blu").removeClass("tag_yel").removeClass("tag_gre"), d.parents(".message_project_title").addClass(e)
//        $.post("/chs/message/set_project_tag", {
//            t: b,
//            id: c,
//            tim: Math.random()
//        },
//        function(b) {
//            try {
//                var c = $.parseJSON(b)
//            } catch(f) {
//                a()
//            }
//            "true" == c.returns ? () : $("body").eventdialog({
//                type: "alert",
//                title: "发生了一个错误！",
//                msg: c.returns,
//                icon: sublibraries + "/images/warning.png",
//                marginLeft: "-295",
//                marginRight: "",
//                marginTop: "-120",
//                marginBottom: "",
//                callback: function() {
//                    removeSpinner(),
//                    "session" == c.error && window.location.reload()
//                }
//            })
//        })
    },
    j = function(a, b, c) {
        removeSpinner(),
        $("input[name=next]").remove(),
        setupSpinner($(".projectTitle span"));
        var d;
        d = null != c || "" != c || "1" != c ? "&p=" + c: "",
        $.ajax({
            type: "get",
            datatype: "json",
            url: "/member/tempList.sm?r=" + a + "&t=" + b + d,
            success: function(b) {
                var d, e, f, g, i, j;
                removeSpinner(),
                d = b,//$.parseJSON(b),
                "0" == d.flag ? (f = "", g = "", i = '<div class="sms-model-container"><div class="sms-model-dec-container"><div class="sms-model-dec">事务类通道：此类模板送达时间约为3-5秒<span></span></div></div></div>', $.each(d.rc,
                function(a, b) {
                	var format = "yyyy年MM月dd日 HH点mm分ss秒";
                	var tpid;
                	if(b.tempStatus!=1){
                		tpid = "暂无";
                	}else{
                		tpid = b.tempId;
                	}
                    var l, m, n, o, c = 'style="background-color:#fff"',
                    d = '<p class="alredySend"></p>',
                    g = "",
                    h = "",
                    k = "";
                    "0" == b.tempStatus && (d = "", g = "unsent"),
                    k = i,
                    "-2" == b.tempStatus ? (h = b.unpassReason != ""&& b.unpassReason !=null ? '<li><a href="javascript:void(0)" class="unpass"><div class="unpassmsg dropboxshadow" style="z-index: 9999;left:150px;top:10px;height:auto;"><p>' +b.unpassReason+ "</p></div></a></li>": '<li><a href="javascript:void(0)" class="unpass"></a></li>', c = 'style="background-color:#ffe9e2"', d = '<p class="unchecked"></p>') : "1" == b.tempStatus ? (c = 'style="background-color:#e9ffe8"', d = '<p class="checked"></p>') : "-1" == b.tempStatus ? d = '<p class="checking"></p>': "0" == b.tempStatus && (d = '<p class="untochecking"></p>'),
                    l = '【'+b.signContent+'】' + b.tempContent,
                    m = parseInt(5),
                    n = "no_tag",
                    n = 1 == m ? "tag_red": 2 == m ? "tag_pur": 3 == m ? "tag_ble": 4 == m ? "tag_blu": 5 == m ? "tag_gre": 6 == m ? "tag_yel": "no_tag",
                    o = "双击这里添加标题",
                    o = "" == b.tempTitle || null == b.tempTitle ? "双击这里添加标题": b.tempTitle,
                    f += '<li class="messagelist" ' + c + '> <div class="message_project_title ' + n + '"><div class="title_tags"><a href="javascript:void(0)" title="设置或清除标签" class="set_tag"><span></span></a></div><div class="title_text">' + o + '</div> <div class="edit_tag_container"><a href="javascript:void(0)" class="edit_tag edit_no_tag" style="margin-left:8px;" data="0"><span></span></a><a href="javascript:void(0)" class="edit_tag edit_tag_red" data="1"><span></span></a><a href="javascript:void(0)" class="edit_tag edit_tag_pur" data="2"><span></span></a><a href="javascript:void(0)" data="3" class="edit_tag edit_tag_ble"><span></span></a><a href="javascript:void(0)" data="4" class="edit_tag edit_tag_blu"><span></span></a><a href="javascript:void(0)" data="5" class="edit_tag edit_tag_gre"><span></span></a><a href="javascript:void(0)" data="6" class="edit_tag edit_tag_yel"><span></span></a></div></div>     <div class="projectContainer"> <div class="container"><p class="timer">短信/彩信<br />最后编辑 ' + $.format.date(b.updatedTime, format) + '</p><div class="messageContainer ' + g + '"><p class="message">' + l + '</p><p class="messageAro"></p></div></div><div class="options"><p class="clear"></p><div class="sysoptions floatl"><ul><li><a href="enterCreateTemp.sm#/edit/' + b.tempId + '" class="edit" title="编辑"><span class="img"></span></a></li><li><a href="#" class="send" title="发送"><span class="img"></span></a></li><li class="sign_container"><div class="developer_sign"><input type="text" value="' + tpid + '" readonly="true"/></div><span class="sign_icon"></span></li>' + h + '</ul></div><div class="sysoptions floatr"><ul><li><a href="javascript:void(0)" class="delete" title="删除" id="' + b.tempId + '"><span class="img"></span></a></li></ul></div><p class="clear"></p></div>' + d + "</div>" + k + "</li>"
                }), g = 0 != 0 ? '<input type="hidden" name="next" value="0"/>': '<input type="hidden" name="next" value="0"/>', "" != c && "1" != c ? $("#messageProject").append(f) : $("#messageProject").html(f), "search" == a && ($(".searchSpinner").hide(), $(".reset").show(), $(".projectTitle h2:eq(0)").text("搜索结果")), $(".messageProject").append(g), n("#messageProject", 260, 12), k = !1, $(".loader").remove()) : "search" == a ? ($(".searchSpinner").hide(), $(".reset").show(), $(".projectTitle h2:eq(0)").text("未找到匹配结果"), $("#messageProject").html("")) : ("false" != d.returns && $("body").eventdialog({
                    type: "alert",
                    title: "发生了一个错误！",
                    msg: d.msg,
                    icon: sublibraries + "/images/warning.png",
                    marginLeft: "-295",
                    marginRight: "",
                    marginTop: "-120",
                    marginBottom: "",
                    callback: function() {
                        removeSpinner(),
                        null == d.flag && window.location.reload()
                    }
                }), $("#messageProject").html("")),
                footerstatus()
            }
        })
    },
    k = !1,
    $(window).scroll(function() {
        var a = $(".content").height() - 300;
        $(window).height() + $(window).scrollTop() >= a && "0" != $("input[name=next]").val() && $("body").find("input[name=next]").length > 0 && (k || ($("body").append('<div class="loader"><img src="' + sublibraries + 'images/spinner_32px_777A83.gif"/>正在加载 ...</div>'), k = !0, setTimeout(function() {
            j("get", "all", $("input[name=next]").val())
        },
        1e3)))
    }),
    $("input[name=search]").live("keyup",
    function() {
        var a, b;
        clearTimeout(l),
        a = $(this).val(),
        b = "search",
        "" != a && a.length >= 2 ? ($(".searchSpinner").show(), l = setTimeout(function() {
            j(b, a, "1")
        },
        500)) : "" != a && a.length >= 1 ? $(".reset").show() : ($(".searchSpinner").hide(), $(".reset").hide())
    }),
    $(".reset").live("click",
    function() {
        clearTimeout(l),
        $(".searchSpinner").hide(),
        $(".reset").hide(),
        c(),
        $("input[name=search]").val("")
    }),
    $(".trOpDelete").live("click",
    function() {
        var a = $(this);
        $(this).eventdialog({
            type: "confirm",
            title: "确认要删除此项目吗？",
            msg: "进行此操作后将无法恢复项目。",
            icon: sublibraries + "/zh_cn/images/delete.png",
            marginLeft: "-155",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {
                m(a)
            }
        })
    }),
    m = function(a) {
        var b = a.attr("id");
        setupEventSpinner(a.parents(".projectItemContainer")),
        a.parents(".projectItemContainer").find(".itemHeader").fadeTo(100, .3),
        a.parents(".projectItemContainer").find(".itemBody").fadeTo(100, .3),
        a.parents(".projectItemContainer").find(".itemFooter").fadeTo(100, .3),
        $.ajax({
            type: "get",
            datatype: "json",
            url: "/member/deleteTempError?tempId=" + b,
            success: function(b) {
                var c = b;//$.parseJSON(b);
                "0" == c.flag ? (removeSpinner(), setupRemoveScript(a.parents(".projectItemContainer")), setTimeout(function() {
                    a.parents(".projectItemContainer").fadeTo(100, 0),
                    setTimeout(function() {
                        a.parents(".projectItemContainer").remove()
                    },
                    300)
                },
                200)) : $("body").eventdialog({
                    type: "alert",
                    title: "出现错误！",
                    msg: c.returns,
                    icon: subLibraries + "/images/warning.png",
                    marginLeft: "-155",
                    marginRight: "",
                    marginTop: "-120",
                    marginBottom: "",
                    callback: function() {
                        removeSpinner(),
                        a.parents(".projectItemContainer").find(".itemHeader").fadeTo(500, 1),
                        a.parents(".projectItemContainer").find(".itemBody").fadeTo(500, 1),
                        a.parents(".projectItemContainer").find(".itemFooter").fadeTo(500, 1)
                    }
                }),
                footerstatus()
            }
        })
    },
    $("input[placeholder],textarea[placeholder]").placeholder(),
    $(window).resize(function() {
        n(".messageProject ul", 260, 12)
    }),
    n = function(a, b, c) {
        var d = $(a).width(),
        e = b,
        g = Math.floor(d / (e + c)),
        h = d % (e + c),
        i = e + h / g;
        $(a).children(".messagelist").css("width", 100 * (i / d) + "%")
    },
    $(".delete").live("click",
    function() {
        var a = $(this);
        $(this).eventdialog({
            type: "confirm",
            title: "确认要删除此项目吗？",
            msg: "进行此操作后将无法恢复项目。",
            icon: sublibraries + "/zh_cn/images/delete.png",
            marginLeft: "-295",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {
                m(a)
            }
        })
    }),
    m = function(a) {
        var b = a.attr("id");
        setupEventSpinner(a.parents(".messagelist")),
        $.ajax({
            type: "get",
            datatype: "json",
            url: "/member/deleteTemp.sm?tempId=" + b,
            success: function(b) {
                var c = b;//$.parseJSON(b);
                "0" == c.flag ? (removeSpinner(), setupRemoveScript(a.parents(".messagelist")), setTimeout(function() {
                    a.parents(".messagelist").fadeTo(100, 0),
                    setTimeout(function() {
                        a.parents(".messagelist").remove(),
                        footerstatus()
                    },
                    300)
                },
                200)) : $("body").eventdialog({
                    type: "alert",
                    title: "发生了一个错误！",
                    msg: c.returns,
                    icon: subLibraries + "/images/warning.png",
                    marginLeft: "-295",
                    marginRight: "",
                    marginTop: "-120",
                    marginBottom: "",
                    callback: function() {
                        removeSpinner()
                    }
                }),
                footerstatus()
            }
        })
    },
    $(".developer").live("click",
    function() {
        $t = $(this).find(".sign"),
        "none" == $t.css("display") ? ($(this).addClass("active"), $t.show()) : ($(this).removeClass("active"), $t.hide())
    }),
    $(".sign").live("click",
    function() {
        return ! 1
    })
});