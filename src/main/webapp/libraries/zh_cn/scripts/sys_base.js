function removeSpinner() {
    clearInterval(spinnerScript),
    clearInterval(spinerScriptBanner),
    $(".spinnerContainer").remove(),
    $(".spinnerAnimate").remove(),
    $(".animateSpinnerWithRelative").remove(),
    $(".spinner").remove(),
    $(".eventSpinner").remove(),
    $(".eventEmpty").remove(),
    $(".subspinner").remove(),
    $(".setsubspinner").remove(),
    $(".setsubspinnerImg").remove(),
    $(".spinnerWhiteContainer").remove(),
    $(".settingsSpinnerContainer").fadeOut(function() {
        $(".settingsSpinnerContainer").remove()
    })
}
function resize() {
    var a;
    1 == sidebarModel ? document.body.offsetWidth > 1e3 ? (a = document.body.offsetWidth - 290, $(".content_container").css("width", a + "px")) : $(".content_container").css("width", "710px") : (a = document.body.offsetWidth, $(".content_container").css("width", a + "px")),
    footerstatus()
}
function array2json(a) {
    var c, d, e, f, g, b = "";
    if (a instanceof Array || a instanceof Object) {
        c = 0;
        for (key in a) {
            if (isNaN(parseInt(key))) c = 1;
            else for (d = a.length, e = a, a = Array(), f = 0; d > f; f++) a[f] = "undefined" == typeof e[f] ? "": e[f];
            break
        }
        for (key in a) g = a[key],
        c ? (b && (b += ","), b += '"' + key + '":' + array2json(g)) : (b && (b += ","), b += array2json(g));
        b = c ? "{" + b + "}": "[" + b + "]"
    } else isNaN(parseInt(a)) ? b = '"' + a + '"': b += a;
    return b
}
function rgb2hex(a) {
    return "" != a && null != a && "null" != a && void 0 != a && "rgba(0, 0, 0, 0)" != a && "transparent" != a ? (a = a.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/), "#" + hex(a[1]) + hex(a[2]) + hex(a[3])) : "none"
}
function hex(a) {
    return isNaN(a) ? "00": hexDigits[(a - a % 16) / 16] + hexDigits[a % 16]
}
function getDate(a) {
    var c, d, e, b = new Date;
    return b.setDate(b.getDate() + a),
    c = b.getFullYear(),
    d = b.getMonth() + 1,
    e = b.getDate(),
    c + "-" + d + "-" + e
}
function getMonday() {
    var e, f, a = new Date;
    return a.getFullYear(),
    a.getMonth() + 1,
    a.getDate(),
    e = a.getDay(),
    f = 0 != e ? e - 1 : 6
}
function getMonth(a, b) {
    var g, h, i, c = new Date,
    d = c.getFullYear(),
    e = c.getMonth() + 1;
    return 0 != b && (12 == e && b > 0 ? (d++, e = 1) : 1 == e && 0 > b ? (d--, e = 12) : e += b),
    c.getDate(),
    g = d + "-" + e + "-" + 1,
    h = "",
    h = 1 == e || 3 == e || 5 == e || 7 == e || 8 == e || 10 == e || 12 == e ? d + "-" + e + "-" + 31 : 2 == e ? 0 == d % 4 && 0 != year0 || 0 == year0 && 0 == year0 ? d + "-" + e + "-" + 29 : d + "-" + e + "-" + 28 : d + "-" + e + "-" + 30,
    i = "",
    i = "s" == a ? g: h
}
function getQFMonth(a) {
    var c = 1,
    d = 4,
    e = 7,
    f = 10;
    return 3 > a ? c: 6 > a ? d: 9 > a ? e: f
}
function getQF(a, b) {
    var g, h, i, c = new Date,
    d = c.getFullYear(),
    e = c.getMonth() + 1,
    f = getQFMonth(e);
    return 0 != b && (10 == f && b > 0 ? (d++, f = 1) : 1 == f && 0 > b ? (d--, f = 10) : f += b),
    g = d + "-" + f + "-" + 1,
    h = "",
    h = 1 == f || 10 == f ? d + "-" + (f + 2) + "-" + 31 : d + "-" + (f + 2) + "-" + 30,
    i = "",
    i = "s" == a ? g: h
}
function getYears(a, b) {
    var c = new Date,
    d = c.getFullYear(),
    e = d + b + "-" + 1 + "-" + 1,
    f = d + b + "-" + 12 + "-" + 31,
    g = "";
    return g = "s" == a ? e: f
}
function getWeekNumber(a) {
    var b, c, e;
    return a = new Date(a),
    a.setHours(0, 0, 0),
    a.setDate(a.getDate() + 4 - (a.getDay() || 7)),
    b = new Date(a.getFullYear(), 0, 1),
    c = Math.ceil(((a - b) / 864e5 + 1) / 7),
    a.getFullYear(),
    e = c
}
function getWeekOfYear(a) {
    var b = new Date(a.getFullYear(), a.getMonth(), a.getDate()),
    c = new Date(a.getFullYear(), 0, 1),
    d = (b.getTime() - c.getTime()) / 864e5,
    e = Math.floor(d / 7) + 1;
    return 7 - c.getDay() < d % 7 && e++,
    e
}
function GetWeekByDate(a) {
    var h, i, j, k, l, m, n, b = null,
    c = new Date,
    d = c.getFullYear(),
    e = 1,
    f = 1,
    g = 1;
    for (b = 0 == d % 400 || 0 == d % 4 && 0 != d % 100 ? [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31] : [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31], h = d + "-" + e + "-" + f, i = new Date(h).getDay(), j = new Date(a), k = j.getMonth() + 1, l = j.getDate(), m = 0;;) {
        if (e == k && f == l) {
            m = g;
            break
        }
        f++,
        i++,
        f > b[e - 1] && (e++, f = 1),
        i > 6 && (g++, i = 0)
    }
    return n = m
}
function html_encode(a) {
    var b = "";
    return 0 == a.length ? "": (b = a.replace(/&/g, "&gt;"), b = b.replace(/</g, "&lt;"), b = b.replace(/>/g, "&gt;"), b = b.replace(/ /g, "&nbsp;"), b = b.replace(/\'/g, "&#39;"), b = b.replace(/\"/g, "&quot;"), b = b.replace(/\n/g, "<br>"))
}
function html_decode(a) {
    var b = "";
    return 0 == a.length ? "": (b = a.replace(/&gt;/g, "&"), b = b.replace(/&lt;/g, "<"), b = b.replace(/&gt;/g, ">"), b = b.replace(/&nbsp;/g, " "), b = b.replace(/&#39;/g, "'"), b = b.replace(/&quot;/g, '"'), b = b.replace(/<br>/g, "\n"))
}
function checkEndTime(a, b) {
    var c = new Date(b.replace("-", "/").replace("-", "/")),
    d = new Date(a.replace("-", "/").replace("-", "/"));
    return d > c ? !1 : !0
}
function checkMob(a) {
    var b = /^0?(13[0-9]|15[012356789]|18[0236789]|14[57])[0-9]{8}$/;
    return 0 == b.test(a) ? !1 : !0
}
function footerstatus() {
    var b, a = $(".content_container").height();
    a += "fixed" == $(".footer").css("position") ? 196 : 116,
    b = $("body").height(),
    b > a ? ($(".footer").css("position", "fixed"), $(".footer").css("bottom", "0px")) : $(".footer").removeAttr("style")
}
function setSideBarCookie() {
    1 == sidebarModel && $.cookie("sidebarModel", "true", {
        expires: 90,
        path: "/"
    }),
    0 == sidebarModel && $.cookie("sidebarModel", "false", {
        expires: 90,
        path: "/"
    })
}
function initSidebar() {
    var a = $.cookie("sidebarModel");
    "" == a || "true" == a || void 0 == a ? sidebarModel = !0 : (sidebarModel = !1, $(".sideBarHiddenController").click()),
    setSideBarCookie()
}
var sidebarModel, baseUrl = "http://submsg.cn/",
sublibraries = "/libraries/",
subTracker = "/subtracker/",
imglibrary = "/images/",
eventSpinner = '<div class="eventEmpty"></div><div class="eventSpinner"></div>',
notifContainer = '        <div id="notificationsContainer">            <div id="notifications">                <div class="title">通知</div>                <div class="notif"></div> <div class="notif_contents"></div>              <div class="btncontainer" style="border-top: 1px solid #ccc;width: 100%; height:50px;"><a class="left viewall_notif" href="/chs/account/notification#/notif">显示未读通知</a><a class="left clearall_notif " href="javascript:;">清除全部通知</a><a class="right closenotif" href="javascript:;">确定</a> </div>               <div class="options" style="float: none;"><a href="/chs/account/notification#/notif" class="closenotif">全部</a></div>            </div>        </div>',
notifid = 0,
spinnerWiteContainer = '<div class="spinnerContainer"></div><div class="spinnerAnimate"><img src="' + sublibraries + '/images/subloading_0x1e_26px.gif" /></div>',
spinnerWiteWhiteContainer = '<div class="spinnerWhiteContainer"></div><div class="spinnerAnimate"><img src="' + sublibraries + '/images/subloading_0x999_26px.gif" /></div>',
spinner = '<div class="spinner"><div class="containerLeft"></div><div class="containerRight"></div><div class="spinnerScript"></div><div class="animateSpinner"><div class=\'subspinner\'><img src=\'' + sublibraries + "/images/subloading_0x77_26px.gif'/></div></div></div>",
subspinner = '<div class="subspinner"><img src="' + sublibraries + '/images/subloading_0x77_26px.gif"/></div>',
removeScript = '<div class="removeSpinner"><img src="' + sublibraries + '/images/remove.png" /></div>',
setSubSpinner = "<div class='setsubspinner'></div><img src='" + sublibraries + "images/subloading_0xb2b2b2_40px.gif' class='setsubspinnerImg'/>",
settingsSpinner = function(a, b, c) {
    a.css("position", "relative"),
    "mobiledata" == b ? a.append('<div class="settingsSpinnerContainer"><img src="' + sublibraries + "images/SubSpinner_" + b + "_40px_0x" + c + '.gif" width="26"/></div>') : a.append('<div class="settingsSpinnerContainer"><img src="' + sublibraries + "images/SubSpinner_" + b + "_26px_0x" + c + '.gif" /></div>'),
    $(".settingsSpinnerContainer").css("background-color", "#" + c),
    $(".settingsSpinnerContainer").show()
},
setupWhiteSpinner = function(a) {
    a.css("position", "relative"),
    a.append(spinnerWiteWhiteContainer)
},
setupWhiteAccountSpinner = function(a) {
    a.append('<div style="position:absolute; left:0;top:0; right:0;bottom:0; background:#fff; opacity:0.5;" class="eventEmpty"></div><div class="spinnerAnimate"><img src="' + sublibraries + '/images/subloading_0x88_26px.gif" /></div>')
},
setupSpinnerBlackContainerDeveloper = function(a) {
    a.css("position", "relative"),
    a.append('<div class="spinnerContainer spinnerWhiteContainer"></div><div class="spinnerAnimate"><img src="' + sublibraries + '/images/SubSpinner_developer_26px_0xfff.gif" /></div>')
},
setupSpinnerNoneContainerDeveloper = function(a) {
    a.css("position", "relative"),
    a.append('<div class="eventEmpty"></div><div class="spinnerAnimate"><img src="' + sublibraries + '/images/SubSpinner_developer_26px_0xfff.gif" /></div>')
},
setupSpinnerNoneContainerAccount = function(a) {
    a.css("position", "relative"),
    a.append('<div class="eventEmpty"></div><div class="spinnerAnimate"><img src="' + sublibraries + '/images/SubSpinner_account_26px_0xFFF.gif" /></div>')
},
setupSpinner = function(a) {
    a.css("position", "relative"),
    a.append(spinnerWiteContainer)
},
setupSpinnerWithNoContainer = function(a) {
    a.css("position", "relative"),
    a.append(spinner)
},
setupEventSpinner = function(a) {
    a.css("position", "relative"),
    a.append(eventSpinner)
},
setupSubSpinner = function(a) {
    a.css("position", "relative"),
    a.append(setSubSpinner)
},
spinnerScript = function() {
    $(".animateSpinnerWithRelative").find("img").delay(40).animate({
        top: "-4px"
    },
    1),
    $(".animateSpinnerWithRelative").find("img").delay(40).animate({
        top: "-39px"
    },
    1),
    $(".animateSpinnerWithRelative").find("img").delay(40).animate({
        top: "-74px"
    },
    1),
    $(".animateSpinnerWithRelative").find("img").delay(40).animate({
        top: "-109px"
    },
    1),
    $(".animateSpinnerWithRelative").find("img").delay(40).animate({
        top: "-144px"
    },
    1),
    $(".animateSpinnerWithRelative").find("img").delay(40).animate({
        top: "-179px"
    },
    1),
    $(".animateSpinnerWithRelative").find("img").delay(40).animate({
        top: "-214px"
    },
    1),
    $(".animateSpinnerWithRelative").find("img").delay(40).animate({
        top: "-249px"
    },
    1),
    $(".animateSpinnerWithRelative").find("img").delay(40).animate({
        top: "-284px"
    },
    1),
    $(".animateSpinnerWithRelative").find("img").delay(40).animate({
        top: "-319px"
    },
    1),
    $(".animateSpinnerWithRelative").find("img").delay(40).animate({
        top: "-354px"
    },
    1),
    $(".animateSpinnerWithRelative").find("img").delay(40).animate({
        top: "-389px"
    },
    1)
},
spinerScriptBanner = function() {
    $(".animateSpinner").find("img").delay(40).animate({
        top: "-4px"
    },
    1),
    $(".animateSpinner").find("img").delay(40).animate({
        top: "-39px"
    },
    1),
    $(".animateSpinner").find("img").delay(40).animate({
        top: "-74px"
    },
    1),
    $(".animateSpinner").find("img").delay(40).animate({
        top: "-109px"
    },
    1),
    $(".animateSpinner").find("img").delay(40).animate({
        top: "-144px"
    },
    1),
    $(".animateSpinner").find("img").delay(40).animate({
        top: "-179px"
    },
    1),
    $(".animateSpinner").find("img").delay(40).animate({
        top: "-214px"
    },
    1),
    $(".animateSpinner").find("img").delay(40).animate({
        top: "-249px"
    },
    1),
    $(".animateSpinner").find("img").delay(40).animate({
        top: "-284px"
    },
    1),
    $(".animateSpinner").find("img").delay(40).animate({
        top: "-319px"
    },
    1),
    $(".animateSpinner").find("img").delay(40).animate({
        top: "-354px"
    },
    1),
    $(".animateSpinner").find("img").delay(40).animate({
        top: "-389px"
    },
    1)
},
setupRemoveScript = function(a) {
    a.css("position", "relative"),
    a.append(removeScript),
    $(".removeSpinner").find("img").delay(40).animate({
        top: "0px"
    },
    1),
    $(".removeSpinner").find("img").delay(40).animate({
        top: "-42px"
    },
    1),
    $(".removeSpinner").find("img").delay(40).animate({
        top: "-84px"
    },
    1),
    $(".removeSpinner").find("img").delay(40).animate({
        top: "-126px"
    },
    1),
    $(".removeSpinner").find("img").delay(40).animate({
        top: "-168px"
    },
    1,
    function() {
        $(".removeSpinner").remove()
    })
},
hexDigits = new Array("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f");
Date.prototype.format = function(a) {
    var c, b = {
        "M+": this.getMonth() + 1,
        "d+": this.getDate(),
        "h+": this.getHours(),
        "m+": this.getMinutes(),
        "s+": this.getSeconds(),
        "q+": Math.floor((this.getMonth() + 3) / 3),
        S: this.getMilliseconds()
    };
    /(y+)/.test(a) && (a = a.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length)));
    for (c in b) new RegExp("(" + c + ")").test(a) && (a = a.replace(RegExp.$1, 1 == RegExp.$1.length ? b[c] : ("00" + b[c]).substr(("" + b[c]).length)));
    return a
},
sidebarModel = !0,
$(document).ready(function() {
    var b, c, e, h, i;
    '<div id="menus">' + $("#menus").html() + "</div>",
    $("#menus").remove(),
    footerstatus(),
    $(".content_container").fadeIn(50),
    $(".sideBarHiddenController").live("click",
    function() {
        $(this).addClass("sideBarShowController"),
        $(this).removeClass("sideBarHiddenController"),
        b(),
        sidebarModel = !1
    }),
    $(".sideBarShowController").live("click",
    function() {
        $(this).addClass("sideBarHiddenController"),
        $(this).removeClass("sideBarShowController"),
        c(),
        sidebarModel = !0
    }),
    b = function() {
        $(".sidebar_container").animate({
            left: "-290"
        },
        300,
        function() {
            $(".sidebar_container").hide()
        }),
        $(".content_container").animate({
            width: "+=290"
        },
        300)
    },
    c = function() {
        $(".sidebar_container").show(),
        $(".content_container").animate({
            width: "-=290px"
        },
        300),
        $(".sidebar_container").animate({
            left: "0px"
        },
        300)
    },
    $(".topMenuControllerShow").live("click",
    function() {
        var a = "bottom",
        b = "top",
        c = "top_center";
        $(this).addClass("active"),
        $(this).submenu({
            t: "container",
            p: a,
            g: "center",
            a: b,
            ap: c,
            type: "appmenu"
        })
    }),
    e = function() {
        $(".s-menu").find("li").each(function() {
            var a = $(this).parent("ul").index(),
            b = $(this);
            $(this).removeClass("flipInXLast" + 10 * $(this).index()),
            $(this).removeClass("flipInX" + 10 * $(this).index()),
            setTimeout(function() {
                var a = b.parent("ul").find("li").length;
                b.index() == a - 1 ? b.addClass("animated flipOutX") : b.addClass("animated flipOutX" + 10 * (a - b.index() - 1))
            },
            0 * a)
        }),
        $("#menus .top-background").delay(300).fadeOut(),
        $("#menus .menus-background").delay(500).fadeOut(function() {
            $("#menus").remove()
        })
    },
    $(".menu-close").live("click",
    function() {
        e()
    }),
    $("#menus .menus-background").live("click",
    function() {
        e()
    }),
    $("#accountbtn").live("click",
    function() {
        var c, d, e, a = window.location.href,
        b = "";
        b = /chs\/developer/g.test(a) ? "developer": /chs\/message/g.test(a) ? "sms": /chs\/mail/g.test(a) ? "mail": /chs\/account/g.test(a) ? "account": /chs\/addressbook/g.test(a) ? "addressbook": /chs\/mobiledata/g.test(a) ? "mobiledata": /chs\/iot/g.test(a) ? "iot": /chs\/voice/g.test(a) ? "voice": "",
        c = "bottom",
        d = "top",
        e = "top_center",
        $(this).addClass("active"),
        $(this).submenu({
            t: "container",
            p: c,
            g: "center",
            a: d,
            ap: e,
            type: "appmenu " + b
        })
    }),
    i = function(a) {
        $("#notifications").animate({
            top: "-" + $("#notifications").height() + "px"
        },
        500,
        function() {
            $("#notificationsContainer").remove()
        }),
        0 != notifid ? $.post("/chs/account/notifController", {
            m: a,
            n: notifid,
            tim: Math.random()
        },
        function(b) {
            var c = $.parseJSON(b);
            "true" == c.returns && ("view" == a && (window.location.href = "/chs/account/notification#/notif"), notifid = 0)
        }) : "view" == a && (window.location.href = "/chs/account/notification#/notif")
    },
    $(".viewnotif").live("click",
    function() {
        i("view")
    }),
    $(".closenotif").live("click",
    function() {
        i("close")
    }),
    $(".clearall_notif").live("click",
    function() {
        i("clear")
    }),
    $(".help_tag").mouseenter(function() {
        var a, b, c;
        $(this).parent().css("position", "relative"),
        a = $(this).height(),
        b = $(this).attr("title"),
        c = "left",
        "right" == $(this).attr("data") && (c = "right"),
        $(this).parent().append('<div class="help_hover_tag_' + c + '">' + b + "</div>"),
        $(this).parent().find(".help_hover_tag_right").css("top", a),
        $(this).parent().find(".help_hover_tag_left").css("top", a)
    }).mouseleave(function() {
        $(this).parent().find(".help_hover_tag_right").remove(),
        $(this).parent().find(".help_hover_tag_left").remove()
    }),
    $("#menu_more").live("click",
    function() {
        var c, d, e, a = window.location.href,
        b = "";
        b = /chs\/developer/g.test(a) ? "developer": /chs\/message/g.test(a) ? "sms": /chs\/mail/g.test(a) ? "mail": /chs\/account/g.test(a) ? "account": /chs\/addressbook/g.test(a) ? "addressbook": /chs\/mobiledata/g.test(a) ? "mobiledata": /chs\/iot/g.test(a) ? "iot": /chs\/voice/g.test(a) ? "voice": "",
        c = "bottom",
        d = "top",
        e = "top_left",
        $(this).addClass("active"),
        $(this).submenu({
            p: c,
            g: "left",
            a: d,
            ap: e,
            type: b
        })
    })
}),
$(window).resize(function() {
    footerstatus()
});