var message_signature_position=1;
var selectSignId = 0;
function selectAddressBook(a) {
    var b = $("#listing ul li").find("#" + a);
    b.attr("checked") ? (b.removeAttr("checked"), b.parent("li").find("a .phoneicon").find(".selected").remove()) : (b.attr("checked", "checked"), b.parent("li").find("a .phoneicon").html("<span class='selected'></span>"))
}
function insertText(a, b) {
    var c, d, e, f, g;
    document.selection ? (c = document.selection.createRange(), c.text = b) : "number" == typeof a.selectionStart && "number" == typeof a.selectionEnd ? (d = a.selectionStart, e = a.selectionEnd, f = d, g = a.value, a.value = g.substring(0, d) + b + g.substring(e, g.length), f += b.length, a.selectionStart = a.selectionEnd = f) : a.value += b
}
function unique(a) {
    var b, c, d;
    for (a = a || [], b = {},
    c = 0; c < a.length; c++) d = a[c],
    "undefined" == typeof b[d] && (b[d] = 1);
    a.length = 0;
    for (c in b) a[a.length] = c;
    return a
}
var ptarr, mobd;
$(function() {
    var a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, u, v, w, x, y, z, A, B, C, D, E, F, G, H, I, J, K, L, M, N;
    $(window).resize(function() {
        f("#listing ul", 120, 10),
        N()
    }),
    $(document).ready(function() {
        f("#listing ul", 120, 10)
    }),
    a = !1,
    b = "",
    c = "",
    d = 0,
    e = "",
    f = function(a, b, c) {
        var d = $(a).width(),
        e = b,
        g = Math.floor(d / (e + c)),
        h = d % (e + c),
        i = e + h / g;
        $(a).find("li").css("width", 100 * (i / d) + "%")
    },
    g = "",
    $.address.change(function(a) {
        h(a.value)
    }),
    h = function(a) {
        var b = a.split("/");
        switch (g = b[2], b[1]) {
        case "":
            $("#send-container").hide(),
            $("#edit-tips").show(),
            $(".editor-locker").hide(),
            $(".unlock").hide(),
            $("#texteditor").removeAttr("disabled"),
            tmpbtn = '<input type="button" name="send_to_check" class="send_to_check"  /><input type="button" name="save" class="save"  />',
            $(".sendoptions").html(tmpbtn);
           // v("", b[1]);
            break;
        case "edit":
            $("#send-container").hide(),
            $("#edit-tips").show(),
            $(".editor-locker").hide(),
            $(".unlock").hide(),
            $("#texteditor").removeAttr("disabled"),
            tmpbtn = '<input type="button" name="send_to_check" class="send_to_check"  /><input type="button" name="save" class="save"  />',
            $(".sendoptions").html(tmpbtn),
            v(b[2], b[1]);
            break;
        case "send":
            $("#send-container").show(),
            $("#edit-tips").hide(),
            $(".editor-locker").show(),
            $(".unlock").show(),
            $("#texteditor").attr("disabled", "disabled"),
            tmpbtn = '<input type="button" name="sending" class="sending" /><input type="button" name="sendlater" class="sendlater" />',
            $(".sendoptions").html(tmpbtn),
            v(b[2], b[1]);
            break;
        default:
            $("#send-container").hide(),
            $("#edit-tips").show(),
            $(".editor-locker").hide(),
            $(".unlock").hide(),
            $("#texteditor").removeAttr("disabled"),
            tmpbtn = '<input type="button" name="send_to_check" class="send_to_check"  /><input type="button" name="save" class="save"  />',
            $(".sendoptions").html(tmpbtn),
            v("", b[1])
        }
    },
    i = !1,
    j = 500,
    k = 67,
    l = function() {
        var f, a = new Date,
        b = a.getHours(),
        c = a.getMinutes(),
        d = "上午",
        e = "下午";
        12 >= b ? f = d: (f = e, b -= 12),
        9 >= c && (c = "0" + c),
        $(".previewTimer").text(f + " " + b + ":" + c),
        $(".previewMessageTimer").html("短信/彩信<br />今天 " + f + " " + b + ":" + c),
        t = setTimeout(l, 1e3)
    },
    l(),
    m = new Array,
    m["special"] = "±¹²³¶·¸º»¼½¾¿øƔƕƞƟƢʑՇՃՁչֆ㊣㊟㊕㊗㊡㊝®©℗™℠№ªº℔℥ℨℬℊµΩℌℑ℞ℳ℃℉℀℁",
    m["brackets"] = "‹›«»<>⟨⟩⟪⟫❨❩()❮❯{}[]〔〕【】〖〗❪❫❴❵❲❳❬❭⎧⎫⎡⎤⎛⎞⎨⎬⎜⎟⎢⎥⎪⎪⎣⎦⎝⎠⎩⎭",
    m["money"] = "$€¥¢£₨৲৳૱௹﷼₹₩฿₮₱៛₭₦₴₲₪₡₫₵₣₤₧ℳ₠₢₳₯₥₰₷",
    m["numbers"] = "①②③④⑤⑥⑦⑧⑨⑩⑪⑫⑬⑭⑮⑯⑰⑱⑲⑳⑴⑵⑶⑷⑸⑹⑺⑻⑼⑽㈠㈡㈢㈣㈤㈥㈦㈧㈨㈩ⅠⅡⅢⅣⅤⅥⅦⅧⅨⅩⅪⅫ",
    n = function(a) {
        var b, c;
        switch (a) {
        case "special":
            for (b = "", c = 0; c < m["special"].length; c++) b += '<li><a href="javascript:void(0)" class="symbolCharts">' + m["special"].substring(c, c + 1) + "</a></li>";
            return b;
        case "brackets":
            for (b = "", c = 0; c < m["brackets"].length; c++) b += '<li><a href="javascript:void(0)" class="symbolCharts">' + m["brackets"].substring(c, c + 1) + "</a></li>";
            return b;
        case "money":
            for (b = "", c = 0; c < m["money"].length; c++) b += '<li><a href="javascript:void(0)" class="symbolCharts">' + m["money"].substring(c, c + 1) + "</a></li>";
            return b;
        case "project":
            for (b = "", c = 0; c < m["numbers"].length; c++) b += '<li><a href="javascript:void(0)" class="symbolCharts">' + m["numbers"].substring(c, c + 1) + "</a></li>";
            return b
        }
    },
    $(".symbolCharts").live("mouseenter",
    function() {
        $(".symbolPreview").text($(this).text())
    }).live("mouseleave",
    function() {
        $(".symbolPreview").text("")
    }).live("click",
    function() {
        insertText(document.getElementById("texteditor"), $(this).text()),
        $(".messageTextEditor").change()
    }),
    $(".symbol1").live("click",
    function() {
        $(this).parent("li").parent("ul").find("li a").removeClass("over"),
        $(this).addClass("over"),
        $(".symbolTabel ul").html(n("special"))
    }),
    $(".symbol2").live("click",
    function() {
        $(this).parent("li").parent("ul").find("li a").removeClass("over"),
        $(this).addClass("over"),
        $(".symbolTabel ul").html(n("brackets"))
    }),
    $(".symbol3").live("click",
    function() {
        $(this).parent("li").parent("ul").find("li a").removeClass("over"),
        $(this).addClass("over"),
        $(".symbolTabel ul").html(n("money"))
    }),
    $(".symbol4").live("click",
    function() {
        $(this).parent("li").parent("ul").find("li a").removeClass("over"),
        $(this).addClass("over"),
        $(".symbolTabel ul").html(n("project"))
    }),
    $(".symbol1").click(),
    $(".messageTextEditor").adaptiveTextarea({
        minH: 100,
        maxH: 9999
    }),
    $(".messageTextEditor").keyup(function() {
        o(),
        p()
    }),
    $(".messageTextEditor").change(function() {
        o(),
        p(),
        a = !0
    }),
    o = function() {
        var f, g, a = $(".messageTextEditor").val().length + $("input[name=signatureValue]").val().length,
        e = $(".messageTextEditor").val();
        e = e.replace(/【/g, "["),
        e = e.replace(/】/g, "]"),
        a >= j ? ($(".messageTextEditor").val(e.substring(0, j)), $(".editorLength").text("剩余 0 字")) : ($(".messageTextEditor").val(e), $(".editorLength").text("剩余 " + (j - a) + " 字")),
        $("#textCount").text(e.length + $("input[name=signatureValue]").val().length),
        $("#messageCount").text(Math.ceil((e.length + $("input[name=signatureValue]").val().length) / k)),
        1 == d && (f = b + c, g = e + $("input[name=signatureValue]").val(), f != g && ($(".sending").remove(), $(".sendlater").remove(), $("input[name=testPhone]").attr("disabled", "true"), $("input[name=sendtestMessage]").hide()))
    },
    p = function() {
        var a, b, c, d, f, g, h;
        for ($(".errordes").remove(), a = $(".messageTextEditor").val(), b = u.split(","), c = "", c = "" == $(".messageTextEditor").val() ? "在这里键入短信模板": 1 == message_signature_position ? $("input[name=signatureValue]").val() + a: a + $("input[name=signatureValue]").val(), d = 0; d < b.length; d++) if (i = !0, b[d].length, f = a.indexOf(b[d]), -1 != f) {
            g = b[d],
            h = '<span class="errorpanel">' + b[d] + "</span>",
            c = c.replace(g, h),
            i = !1;
            break;
        }
        $(".previewMessage").html(c),
        0 == i && "" != a && q()
    },
    q = function() {
        $(".content_container").append('<div class="errordes"><div><p>依据当地法律法规，以上词或短语不能出现在短信中。</p></div><div class="errorArrow"></div></div>');
        var a = $(".errorpanel").offset();
        $(".errordes").css("left", a.left - 10).css("top", a.top - 90),
        $(".errordes").show()
    },
    $(".preview5sContentContainer").click(function() {
        $(".messageTextEditor").focus()
    }),
    $(".submitSignature").live("click",
    function() {
        C()
    }),
    $(".loadMoreSignature").live("click",
    function() {
        B($(this).children("input[name=nextpage]").val()),
        $(this).text(""),
        setupSpinner($(this))
    }),
    $(".loadSignature ul li .delete").live("click",
    function() {
        var b, a = $(this).attr("id");
        a = a.replace(/signature/g, ""),
        b = $(this).parent("li"),
        $(this).eventdialog({
            type: "confirm",
            title: "删除签名",
            msg: "确认要此签名吗？",
            icon: sublibraries + "zh_cn/images/delete.png",
            marginLeft: "-290",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {
                A(a, b)
            }
        })
    }),
    $(".signatureValue").live("click",
    function() {
        z($(this).text(), $(this))
    }),
    $(".signaturearea").live("click",
    function() {
        y()
    }),
    $("input[name=sendtestMessage]").live("click",
    function() {
        x()
    }),
    $(".submitsorturl").live("click",
    function() {
        w()
    }),
    $("input[name=sorturl]").keyup(function() {
        clearTimeout(r),
        r = setTimeout(function() {
            s($("input[name=sorturl]").val())
        },
        500)
    }),
    $("input[name=sorturl]").change(function() {
        clearTimeout(r),
        r = setTimeout(function() {
            s($("input[name=sorturl]").val())
        },
        500)
    }),
    s = function(a) {
        var b = a.indexOf("://"); - 1 == b && $("input[name=sorturl]").val("http://" + a)
    },
    u = "江泽民,胡锦涛",
    $(".editorLength").text("剩余 " + j + " 字"), $("#sigelCount").text(k),
    v = function(f, g) {
        $.ajax({
            type: "get",
            url: "/member/getMsgTempBean.sm?tempId=" + f + "&tim=" + Math.random(),
            datatype: "json",
            success: function(h) {
                var l, m, n, o, p, q, r, s, t, v, w, x, i = h;//$.parseJSON(h);
                if ("0" == i.flag) {
                    if ("" != f && ($(".messageTextEditor").val(i.rc.tempContent), "" != i.rc.signContent && ($(".signaturearea").text(i.rc.signContent), $(".signaturearea").css("display", "inline-block"), $("input[name=signatureValue]").val(i.rc.signContent)),selectSignId=i.rc.signId, $(".messageTextEditor").change()), a = !1, "1" == i.rc.tempStatus ? (d = 1, b = i.rc.signContent, c = i.rc.signContent) : "send" == g && $(this).eventdialog({
                        type: "warning",
                        title: "发生了一个错误",
                        msg: "此项目尚未通过审核，您暂时无法发送此项目，请耐心等待审核结果。",
                        icon: sublibraries + "images/warning.png",
                        marginLeft: "-290",
                        marginRight: "",
                        marginTop: "-120",
                        marginBottom: "",
                        callback: function() {
                            window.location.href = "#/edit/" + f
                        }
                    }), "send" == g) {
                        if (l = '<option value="none">请选择一个应用ID</option>', 0 != i.apps ? ($.each(i.apps,
                        function(a, b) {
                            0 == i.boundappid ? l += 1 == b.default && 1 == b.bound ? '<option value="' + b.id + '" selected>' + b.app + "(" + b.id + ")</option>": '<option value="' + b.id + '" disabled>' + b.app + "(" + b.id + ")</option>": 0 == b.default && 0 == b.bound ? l += '<option value="' + b.id + '">' + b.app + "(" + b.id + ")</option>": 1 == b.bound && (l += '<option value="' + b.id + '" disabled>' + b.app + "(" + b.id + ")</option>")
                        }), $("#appid").html(l)) : $("#appid").html('<option value="none">请创建一个应用ID</option>'), m = "", n = b.match(ptarr), null == n ? m = "您的短信模板中不包含文本变量</span>，请在 <span>CSV</span> 文件中将<span>第1列（A 列）</span>设为接收<span>手机号码</span>": (n = String(n), e = n.split(","), e = unique(e), m = "您的短信模板中包含<span>" + e.length + "个文本变量</span>，请在 <span>CSV</span> 文件中将<span>第1列（A 列）</span>设为接收<span>手机号码</span>"), o = '<tr><td class="title">A</td>', p = "<tr><td>138xxxxxxxx</td>", q = "<tr><td>186xxxxxxxx</td>", r = "<tr><td>……</td>", s = '<tr><td class="title">手机号码</td>', t = '<td><input type="text" name="to" placeholder="输入手机号码" /></td>', v = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], null != n) for (w = 0; w < e.length; w++) null != e[w] && void 0 != e[w] && "null" != e[w] && (x = e[w], x = x.replace(/@var\(/, ""), x = x.replace(/\)/, ""), m += "，<span>第" + (w + 2) + "列（" + v[w + 1] + " 列）</span>设为 <span>" + e[w] + "</span> 对应的值", o += '<td class="title">' + v[w + 1] + "</td>", p += "<td>" + x + " 值</td>", q += "<td>" + x + " 值</td>", r += "<td>……</td>", s += '<td class="title">' + x + " 变量</td>", t += '<td><input type="text" name="' + x + '" placeholder="输入 ' + x + ' 值" /></td>');
                        o += "</tr>",
                        p += "</tr>",
                        q += "</tr>",
                        r += "</tr>",
                        s += '<td class="title"></td></tr>',
                        t += '<td><input type="button" name="add" value="+" /> <input type="button" name="less" value="-" /></td></tr>',
                        m += "。",
                        $(".template-notic").html(m),
                        $(".ex-container").find("table").html(o + p + q + r),
                        $(".input-container").find("table").html(s + t)
                    }
                } else $(this).eventdialog({
                    type: "warning",
                    title: "发生了一个错误",
                    msg: i.returns,
                    icon: sublibraries + "images/warning.png",
                    marginLeft: "-290",
                    marginRight: "",
                    marginTop: "-120",
                    marginBottom: "",
                    callback: function() {
                        "session" == i.error && (window.location.href = window.location.href)
                    }
                })
            }
        })
    },
    w = function() {
        var b, a = $("input[name=sorturl]").val();
        a.length > 0 ? (b = a.indexOf("://"), -1 != b ? $.post("createSuburl", {
            url: a,
            tim: Math.random()
        },
        function(a) {
            var c, b = $.parseJSON(a);
            "true" == b.returns ? (c = " " + b.suburl + " ", insertText(document.getElementById("texteditor"), c), $(".messageTextEditor").change(), $("input[name=sorturl]").val(""), $(".optionPanel").hide()) : $(this).eventdialog({
                type: "warning",
                title: "发生了一个错误",
                msg: re.returns,
                icon: sublibraries + "images/warning.png",
                marginLeft: "-290",
                marginRight: "",
                marginTop: "-120",
                marginBottom: "",
                callback: function() {
                    "session" == b.error && (window.location.href = window.location.href)
                }
            })
        }) : $(this).eventdialog({
            type: "warning",
            title: "发生了一个错误",
            msg: "你输入的网址可能不正确",
            icon: sublibraries + "images/warning.png",
            marginLeft: "-290",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {}
        })) : $(this).eventdialog({
            type: "warning",
            title: "发生了一个错误",
            msg: "你输入的网址可能不正确",
            icon: sublibraries + "images/warning.png",
            marginLeft: "-290",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {}
        })
    },
    $("#resend").live("click",
    function() {
        $(".testsent").hide(),
        $("#testMessage").show(),
        $("input[name=testPhone]").val(""),
        $("input[name=testPhone]").focus()
    }),
    x = function() {
        $("input[name=testPhone]").removeClass("error"),
        $(".messageTextEditor").val().length > 0 && 1 == checkMob($("input[name=testPhone]").val()) && 1 == F() && void 0 != g && "" != g ? $.post("/submessager/sendTestMessage", {
            id: g,
            m: $(".messageTextEditor").val(),
            t: $("input[name=testPhone]").val(),
            s: $("input[name=signatureValue]").val(),
            tim: Math.random()
        },
        function(a) {
            var b = $.parseJSON(a);
            "true" == b.returns ? ($("#testMessage").hide(), $(".testsent").show(), $(".testsent .testsenttext").text("已发送至：" + $("input[name=testPhone]").val())) : $(this).eventdialog({
                type: "warning",
                title: "发生了一个错误",
                msg: b.returns,
                icon: sublibraries + "images/warning.png",
                marginLeft: "-290",
                marginRight: "",
                marginTop: "-120",
                marginBottom: "",
                callback: function() {
                    removeSpinner(),
                    "noneMob" == b.error ? ($("input[name=testPhone]").addClass("error"), $("input[name=testPhone]").focus()) : $("input[name=testPhone]").removeClass("error")
                }
            })
        }) : void 0 == g || "" == g ? $(this).eventdialog({
            type: "warning",
            title: "发生了一个错误",
            msg: "要发送测试短信，你需要将此项目保存并等待 SUBMAIL 对此内容的审查。",
            icon: sublibraries + "images/warning.png",
            marginLeft: "-290",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {
                removeSpinner(),
                $(".messageTextEditor").focus()
            }
        }) : $(".messageTextEditor").val().length < 0 ? $(this).eventdialog({
            type: "warning",
            title: "没有输入内容",
            msg: "要发送此条短信，请输入短信内容",
            icon: sublibraries + "images/warning.png",
            marginLeft: "-290",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {
                removeSpinner(),
                $(".messageTextEditor").focus()
            }
        }) : 0 == checkMob($("input[name=testPhone]").val()) ? $(this).eventdialog({
            type: "warning",
            title: "发生了一个错误",
            msg: "你输入的手机号码似乎不正确",
            icon: sublibraries + "images/warning.png",
            marginLeft: "-290",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {
                removeSpinner(),
                $("input[name=testPhone]").addClass("error"),
                $("input[name=testPhone]").focus()
            }
        }) : 0 == F() && $(this).eventdialog({
            type: "warning",
            title: "发生了一个错误",
            msg: "依据运营商相关规定，您必须为此条短信创建或选择一个签名。",
            icon: sublibraries + "images/warning.png",
            marginLeft: "-290",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {
                removeSpinner(),
                $(".signature").click(),
                $("input[name=signature]").focus()
            }
        })
    },
    y = function() {
        $(".signaturearea").text(""),
        $(".signaturearea").hide(),
        $("input[name=signatureValue]").val(""),
        $(".signature").removeClass("selectedSignature"),
        $(".loadSignature ul li a").removeClass("selectedSignature"),
        $(".messageTextEditor").change()
    },
    z = function(a, b) {
    	var signIdj = b.attr("id");
    	signIdj = signIdj.replace(/signatureValue/g, ""),selectSignId=signIdj,
        b.parent("li").parent("ul").find("li a").removeClass("selectedSignature"),
        b.addClass("selectedSignature"),
        $(".signaturearea").text(a),
        $(".signaturearea").css("display", "inline-block"),
        $("input[name=signatureValue]").val(a),
        $(".signature").addClass("selectedSignature"),
        $(".optionPanel").hide(),
        $(".messageTextEditor").change()
    },
    A = function(a, b) {
        $.post("/member/deleteSign.sm", {
            signId: a,
            tim: Math.random()
        },
        function(a) {
            var c =a;// $.parseJSON(a);
            "0" == c.flag ? ($(".signature").click(), setTimeout(function() {
                setupRemoveScript($("body")),
                b.fadeOut(200,
                function() {
                    $(this).remove(),
                    $(".loadSignature ul").html(""),
                    B("1")
                })
            },
            500)) : $(this).eventdialog({
                type: "warning",
                title: "发生了一个错误",
                msg: c.msg,
                icon: sublibraries + "images/warning.png",
                marginLeft: "-290",
                marginRight: "",
                marginTop: "-120",
                marginBottom: "",
                callback: function() {
                    null == c.flag && (window.location.href = window.location.href)
                }
            })
        })
    },
    B = function(a) {
        $.ajax({
            type: "get",
            url: "/member/getSignList.sm?tim=" + Math.random(),
            datatype: "json",
            success: function(b) {
            	a=1;
                var d, e, f, c = b;//$.parseJSON(b);
                "0" == c.flag ? ("0" != c.signatures && (d = "", f = 0, $.each(c.rc,
                function(a, b) {
                    e = 1 == f % 2 ? ' class="ox"': "",
                    d += "<li" + e + '><a href="javascript:void()" class="signatureValue" id="signatureValue' + b.id + '">【' + b.signContent + '】</a><a href="javascript:void(0)" title="删除签名" class="delete" id="signature' + b.id + '">删除</a></li>',
                    f++
                }), $(".loadSignature ul").append(d)), $(".loadMoreSignature").remove()) : $(this).eventdialog({
                    type: "warning",
                    title: "发生了一个错误",
                    msg: c.returns,
                    icon: sublibraries + "images/warning.png",
                    marginLeft: "-290",
                    marginRight: "",
                    marginTop: "-120",
                    marginBottom: "",
                    callback: function() {
                        null == c.flag && (window.location.href = window.location.href)
                    }
                }),
                removeSpinner()
            }
        })
    },
    C = function() {
        var b, c, a = $("input[name=signature]").val();
        a.length > 0 && a.length < 50 ? ($.post("/member/addSign.sm", {
        	signContent: a,
            tim: Math.random()
        },
        function(a) {
            var b = a;//$.parseJSON(a);
            "0" == b.flag ? ($(".loadSignature ul").html(""), setupSpinner($(".loadSignature")), B("1"), $("input[name=signature]").val("")) : $(this).eventdialog({
                type: "warning",
                title: "发生了一个错误",
                msg: b.returns,
                icon: sublibraries + "images/warning.png",
                marginLeft: "-290",
                marginRight: "",
                marginTop: "-120",
                marginBottom: "",
                callback: function() {
                    removeSpinner(),
                    null == b.flag && (window.location.href = window.location.href)
                }
            })
        })) : $(this).eventdialog({
            type: "warning",
            title: "发生了一个错误",
            msg: "签名填写不正确(至少需要一个字，且少于50字)",
            icon: sublibraries + "images/warning.png",
            marginLeft: "-290",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {
                removeSpinner(),
                $(".signature").click(),
                $("input[name=signature]").focus()
            }
        })
    },
    //D = '<a href="/chs/addressBook/create?r=message" class="noresultsClick" target="_blank"><span class="img"></span><span class="optionTxt">创建地址簿</span></a>',
//    E = function() {
//        setupSpinner($("#listing")),
//        $.ajax({
//            type: "get",
//            url: "getAddressbookList?tim=" + Math.random(),
//            datatype: "json",
//            success: function(a) {
//                var c, b = $.parseJSON(a);
//                "false" != b.returns ? (removeSpinner(), c = "", $.each(b.addressbook,
//                function(a, b) {
//                    var d = 'disabled="disabled"',
//                    e = "<span class='noneForSelected'></span>",
//                    f = 'style="color:#ccc;"',
//                    g = "style='opacity:0.5;'",
//                    h = "javascript:void(0)";
//                    0 != b.contacts && (d = "", f = "", e = "", g = "", h = 'javascript:selectAddressBook("' + b.value + '");'),
//                    c += "<li " + g + "><a href='" + h + "'><p class='phoneicon'>" + e + "</p><p class='itemName'>" + b.name + "</p><p class='itemCount'>" + b.contacts + '个联系人</p></a><input type="checkbox" id="' + b.value + '" value="' + b.value + '" ' + d + "/></li>"
//                }), $("#listing ul").html(c), $("#subscribeLabel").text("订阅用户 (" + b.subscribe + "个联系人)"), (0 == b.subscribe || "0" == b.subscribe) && $("#subscribe").attr("disabled", "disabled"), $("#unsubscribeLabel").text("退订 (" + b.unsubscribe + "个联系人)")) : $("#listing ul").html(D),
//                removeSpinner(),
//                f("#listing ul", 120, 10)
//            }
//        })
//    },
//    E(),
    B("1"),
//    $(".resetLink").live("click",
//    function() {
//        setupSpinnerWithNoContainer($(".listing")),
//        E()
//    }),
    $(".signature").live("click",
    function() {
        $(".optionPanel").menuHold({
            t: "move"
        }),
        $(".optionPanelAro").animate({
            left: "30px"
        },
        200),
        $(".symbolPanel").hide(),
        $(".sortURLPanel").hide(),
        $(".signaturePanel").show()
    }),
    $(".symbol").live("click",
    function() {
        $(".optionPanel").menuHold({
            t: "move"
        }),
        $(".optionPanelAro").animate({
            left: "80px"
        },
        200),
        $(".symbolPanel").show(),
        $(".sortURLPanel").hide(),
        $(".signaturePanel").hide()
    }),
    $(".sorturl").live("click",
    function() {
        $(".optionPanel").menuHold({
            t: "move"
        }),
        $(".optionPanelAro").animate({
            left: "140px"
        },
        200),
        $(".symbolPanel").hide(),
        $(".sortURLPanel").show(),
        $(".signaturePanel").hide()
    }),
    F = function() {
        var a = $("input[name=signatureValue]").val();
        return a.length > 0 && a.length < 50 ? !0 : !1
    },
    $(".sendoptions .sending").live("click",
    function() {
        G("sned")
    }),
    $(".timingConfirm").live("click",
    function() {
        G("timetosend")
    }),
    G = function(a) {
        var c, d, f, g, h, b = 0;
        $(".contact-mod-container").find(".section-btn").each(function() {
            $(this).find("input[name=contactMod]").is(":checked") && (b = $(this).find("input[name=contactMod]").val())
        }),
        c = "",
        b = parseInt(b),
        "0" == b ? ($("#listing ul").find("input[type=checkbox]").each(function() {
            $(this).attr("checked") && (c += $(this).val() + ",")
        }), $("#subscribe").attr("checked") && (c += "subscribe")) : 1 == b ? $("#filedatarow").find("table").find("tr").length > 1 ? ($("#filedatarow").find("table").find("tr").each(function() {
            var b, d, f, a = "{";
            if ($(this).index() > 0 && mobd.test($(this).find("td:eq(0)").text())) {
                if (a += '"to":"' + $(this).find("td:eq(0)").text() + '"', e.length > 0) {
                    for (a += ',"vars":{', b = "", d = 0; d < e.length; d++) f = e[d],
                    f = f.replace(/@var\(/, ""),
                    f = f.replace(/\)/, ""),
                    b += '"' + f + '":"' + $(this).find("td:eq(" + (d + 1) + ")").text() + '",';
                    b = b.substring(0, b.length - 1),
                    a += b + "}"
                }
                a += "},",
                c += a
            }
        }), c = "[" + c.substring(0, c.length - 1) + "]") : c = "": 2 == b && (d = !1, $(".input-container").find("table").find("tr").each(function() {
            var b, f, g, a = "{";
            if ($(this).index() > 0 && mobd.test($(this).find("td:eq(0)").find("input[name=to]").val())) {
                if (d = !0, a += '"to":"' + $(this).find("td:eq(0)").find("input[name=to]").val() + '"', e.length > 0) {
                    for (a += ',"vars":{', b = "", f = 0; f < e.length; f++) g = e[f],
                    g = g.replace(/@var\(/, ""),
                    g = g.replace(/\)/, ""),
                    b += '"' + g + '":"' + $(this).find("td:eq(" + (f + 1) + ")").find("input[type=text]").val() + '",';
                    b = b.substring(0, b.length - 1),
                    a += b + "}"
                }
                a += "},",
                c += a
            }
        }), c = d ? "[" + c.substring(0, c.length - 1) + "]": ""),
        "" != c && "" != $(".messageTextEditor").val() && 1 == F() ? (f = $("#appid").find("option:selected").val(), "none" == f ? $(this).eventdialog({
            type: "warning",
            title: "请选择一个应用ID",
            msg: "要发送此短信，你必须创建并选择一个应用ID",
            icon: sublibraries + "images/warning.png",
            marginLeft: "-290",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {
                removeSpinner()
            }
        }) : "timetosend" == a ? (g = $("input[name=datetosend]").val(), a = $("input[name=timetosend]").val(), "" != g && "" != a ? (h = (new Date).format("yyyy-MM-dd hh:mm:ss"), 1 == checkEndTime(h, g + " " + a + ":00") ? $(this).eventdialog({
            type: "confirm",
            title: "定时发送",
            msg: "确认要在 (" + $(".datetimeSelector .day").text() + "日 " + $(".datetimeSelector .ym").text() + ", " + $(".timeselect").text() + ") 发送此条短信吗？",
            icon: sublibraries + "zh_cn/images/send.png",
            marginLeft: "-290",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {
                setupSubSpinner($("body")),
                H(c, 2, b)
            }
        }) : $(this).eventdialog({
            type: "warning",
            title: "日期不正确",
            msg: "你选择的日期和时间似乎不正确",
            icon: sublibraries + "images/warning.png",
            marginLeft: "-290",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {
                removeSpinner(),
                $(".messageDateUI").effect("shake", {
                    times: 3
                },
                300)
            }
        })) : $(this).eventdialog({
            type: "warning",
            title: "请选择一个日期",
            msg: "要定时发送此内容，你必须选择一个日期",
            icon: sublibraries + "images/warning.png",
            marginLeft: "-290",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {
                removeSpinner(),
                $(".messageDateUI").effect("shake", {
                    times: 3
                },
                300)
            }
        })) : $(this).eventdialog({
            type: "confirm",
            title: "发送",
            msg: "确认要现在发送此条短信吗？",
            icon: sublibraries + "zh_cn/images/send.png",
            marginLeft: "-290",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {
                setupSubSpinner($("body")),
                H(c, 1, b)
            }
        })) : "" == $(".messageTextEditor").val() ? $(this).eventdialog({
            type: "warning",
            title: "没有输入内容",
            msg: "要发送此条短信，请输入短信内容",
            icon: sublibraries + "images/warning.png",
            marginLeft: "-290",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {
                removeSpinner(),
                $(".messageTextEditor").focus(),
                $(".messageTextEditor").effect("shake", {
                    times: 3
                },
                400)
            }
        }) : "" == c ? $(this).eventdialog({
            type: "warning",
            title: "选择一个地址薄",
            msg: "要发送此条短信，请至少添加1个联系人",
            icon: sublibraries + "images/warning.png",
            marginLeft: "-290",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {
                removeSpinner()
            }
        }) : 1 != F && $(this).eventdialog({
            type: "warning",
            title: "发生了一个错误",
            msg: "依据短信通道ISP规定，您必须为此条短信创建或选择一个签名。",
            icon: sublibraries + "images/warning.png",
            marginLeft: "-290",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {
                removeSpinner(),
                $(".signature").click(),
                $("input[name=signature]").focus()
            }
        })
    },
    H = function(a, b, c) {
        $.get("/chs/account/sendConfigs", {
            tim: Math.random()
        },
        function(d) {
            var e = $.parseJSON(d);
            "true" == e.returns ? "1" == e.message_send_confirm ? $(this).eventdialog({
                type: "PasswordConfirm",
                title: "请输入登录密码",
                msg: e.msg,
                icon: sublibraries + "images/send.png",
                marginLeft: "-290",
                marginRight: "",
                marginTop: "-120",
                marginBottom: "",
                callback: function() {
                    I(a, b, c)
                }
            }) : I(a, b, c) : $(this).eventdialog({
                type: "warning",
                title: "发生了一个错误",
                msg: e.returns,
                icon: sublibraries + "images/warning.png",
                marginLeft: "-290",
                marginRight: "",
                marginTop: "-120",
                marginBottom: "",
                callback: function() {
                    removeSpinner(),
                    "session" == e.error && window.location.reload()
                }
            })
        })
    },
    I = function(b, c, d) {
        var e, f, h, i;
        a = !1,
        e = "",
        f = "",
        2 == c && (h = $("input[name=datetosend]").val(), i = $("input[name=timetosend]").val(), e = h + " " + i + ":00", f = "&t=" + e),
        $.post("sendsms", {
            appid: $("#appid").find("option:selected").val(),
            id: g,
            t: c,
            e: b,
            mod: d,
            d: e,
            tim: Math.random()
        },
        function(a) {
            var b = $.parseJSON(a);
            "true" == b.returns ? "" != b.msg ? $(this).eventdialog({
                type: "warning",
                title: "余额不足",
                msg: b.msg,
                icon: sublibraries + "images/warning.png",
                marginLeft: "-290",
                marginRight: "",
                marginTop: "-120",
                marginBottom: "",
                callback: function() {
                    removeSpinner()
                }
            }) : (removeSpinner(), window.location = "sent?r=" + b.id + "&s=" + b.sendID + f) : $(this).eventdialog({
                type: "warning",
                title: "发生了一个错误",
                msg: b.returns,
                icon: sublibraries + "images/warning.png",
                marginLeft: "-290",
                marginRight: "",
                marginTop: "-120",
                marginBottom: "",
                callback: function() {
                    removeSpinner(),
                    "session" == b.error && (window.location.href = window.location.href)
                }
            })
        })
    },
    $(".save").live("click",
    function() {
        $(this).attr("disabled", "true"),
        J(0, $(this))
    }),
    $(".send_to_check").live("click",
    function() {
        $(this).attr("disabled", "true"),
        J(-1, $(this))
    }),
    J = function(a, b) {
        1 == d ? $(this).eventdialog({
            type: "confirm",
            title: "审核状态将重置",
            msg: "此短信项目已通过审核，再次保存或提交审核将重置“已审核”状态。确认要继续吗？",
            icon: sublibraries + "images/warning.png",
            marginLeft: "-290",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {
                K(a, b)
            },
            cancel: function() {
                $(".save").removeAttr("disabled"),
                $(".send_to_check").removeAttr("disabled")
            }
        }) : K(a, b)
    },
    K = function(b, c) {
        var d, e;
        "" != $(".messageTextEditor").val() && "" != $("input[name=signatureValue]").val() ? (i = !0, d = "", e = $(".messageTextEditor").val(), u.split(","), 0 != i ? (a = !1, $.post("/member/addTemp.sm", {
        	tempContent: e,
            signId: selectSignId,
            tempId: g,
            tim: Math.random(),
            tempStatus: b
        },
        function(a) {
            var b = a;//$.parseJSON(a);
            "0" == b.flag ? window.location = "/member/enterTempList.sm": $(this).eventdialog({
                type: "warning",
                title: "发生了一个错误",
                msg: b.returns,
                icon: sublibraries + "images/warning.png",
                marginLeft: "-290",
                marginRight: "",
                marginTop: "-120",
                marginBottom: "",
                callback: function() {
                    removeSpinner(),
                    c.removeAttr("disabled"),
                    null == b.flag && (window.location.href = window.location.href)
                }
            })
        })) : $(this).eventdialog({
            type: "warning",
            title: "发生了一个错误",
            msg: '依据当地法律法规，以下"' + d + '"词或短语不能出现在短信中，请修改后再试。',
            icon: sublibraries + "images/warning.png",
            marginLeft: "-290",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {
                c.removeAttr("disabled"),
                removeSpinner(),
                $(".messageTextEditor").focus()
            }
        })) : "" == $(".messageTextEditor").val() ? $(this).eventdialog({
            type: "warning",
            title: "没有输入内容",
            msg: "要保存此条短信，请输入短信内容",
            icon: sublibraries + "images/warning.png",
            marginLeft: "-290",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {
                removeSpinner(),
                $(".messageTextEditor").focus()
            }
        }) : "" == $("input[name=signatureValue]").val() && $(this).eventdialog({
            type: "warning",
            title: "发生了一个错误",
            msg: "依据短信通道ISP规定，您必须为此条短信创建或选择一个签名。",
            icon: sublibraries + "images/warning.png",
            marginLeft: "-290",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {
                c.removeAttr("disabled"),
                removeSpinner(),
                $(".signature").click(),
                $("input[name=signature]").focus()
            }
        })
    },
    L = function() {
        var d, a = new Date,
        b = Number(a.getHours()) + 1,
        c = Number(a.getMinutes());
        c > 30 && (b += 1),
        d = 0,
        b > 23 && (d = "+1"),
        $("#datepicker").datepicker({
            dateFormat: "yy-mm-dd",
            changeMonth: !1,
            numberOfMonths: 1,
            maxDate: "+1y",
            minDate: d,
            monthNames: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
            dayNames: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"],
            dayNamesShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六"],
            dayNamesMin: ["日", "一", "二", "三", "四", "五", "六"],
            onSelect: function(a) {
                $("input[name=datetosend]").val(a),
                M()
            }
        })
    },
    M = function() {
        var d, e, a = ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
        b = $("input[name=datetosend]").val().split("-"),
        c = Number(b[1]) - 1;
        $(".datetimeSelector .ym").text(a[c] + " " + b[0]),
        $(".datetimeSelector .day").text(b[2]),
        $("input[name=datetosend]").val() == (new Date).format("yyyy-MM-dd") ? (d = new Date, e = Number(d.getHours()) + 1, c = Number(d.getMinutes()), c > 30 && (e += 1), $("#time").find("option").each(function() {
            $(this).val() < e ? $(this).attr("disabled", "true") : $(this).removeAttr("disabled"),
            $(this).val() == e && ($(this).attr("selected", "true"), $("#m").find("option").each(function() {
                $(this).removeAttr("disabled"),
                "00" == $(this).val() && $(this).attr("selected", "true")
            }), $("#time").change())
        })) : $("#time").find("option").each(function() {
            $(this).removeAttr("disabled"),
            "00" == $(this).val() && ($(this).attr("selected", "true"), $("#m").find("option").each(function() {
                $(this).removeAttr("disabled"),
                "00" == $(this).val() && $(this).attr("selected", "true")
            }), $("#time").change())
        })
    },
    N = function() {
        var f, g, a = 230,
        b = 120,
        c = 180,
        d = $(".messageDateUI .container").width(),
        e = Math.floor((d - b - c) / a);
        e > 4 && (e = 4),
        $("#datepicker").datepicker("option", "numberOfMonths", e),
        f = $(".messageDateUI .container .datepickerContainer").width(),
        g = (d - f - b - c) / 2,
        $(".messageDateUI .container .timepickerContainer").css("width", b + g),
        $(".messageDateUI .container .seletedContainer").css("width", c + g - 1)
    },
    $("#time").change(function() {
        var c, a = $("#m").find("option:selected").val(),
        b = $(this).find("option:selected").val();
        $(".timer").text(b + ":" + a),
        $("input[name=timetosend]").val(b + ":" + a),
        c = "下午",
        12 > b && (c = "上午"),
        10 > b ? b = b + ":" + a: (b > 12 && (b -= 12), b = b + ":" + a),
        $(".timeselect").text(c + " " + b)
    }),
    $("#m").change(function() {
        $("#time").change()
    }),
    $(".sendlater").live("click",
    function() {
        $(".messageDateUI").is(":visible") ? ($(".sendlater").removeClass("sendlaterActive"), $(".container").fadeOut(function() {
            $("#datepicker").datepicker("destroy"),
            $(".timer").text(""),
            $(".datetimeSelector .ym").text(""),
            $(".datetimeSelector .day").text(""),
            $(".timeselect").text(""),
            $("input[name=datetosend]").val(""),
            $("input[name=timetosend]").val("")
        }), $("#time").find("option").each(function() {
            $(this).removeAttr("selected"),
            $(this).attr("disabled", "true")
        }), $("#m").find("option").each(function() {
            $(this).removeAttr("selected"),
            $(this).attr("disabled", "true")
        }), $(".messageDateUI").slideUp(), $(".sending").removeAttr("style"), $(".save").removeAttr("style")) : ($(this).addClass("sendlaterActive"), $(".container").fadeOut(function() {}), $(".messageDateUI").slideDown(), $(".container").hide(), L(), $("body").animate({
            scrollTop: $(".content_container").height() + 150
        },
        function() {
            $(".container").fadeIn(),
            N()
        }), $(".sending").css("visibility", "hidden"), $(".save").css("visibility", "hidden"))
    }),
    $(".cencelTiming").live("click",
    function() {
        $(".sendlater").click()
    }),
    $("input[placeholder],textarea[placeholder]").placeholder(),
    $(".section-btn").live("click",
    function() {
        if (!$(this).hasClass("active")) {
            $(this).parent(".contact-mod-container").find("a").removeClass("active"),
            $(this).parent(".contact-mod-container").find("a").find("input").removeAttr("checked"),
            $(this).addClass("active"),
            $(this).find("input").attr("checked", "checked");
            var a = "addressbook";
            switch ("filemod" == $(this).attr("id") ? a = "file": "inputmod" == $(this).attr("id") && (a = "input"), a) {
            case "addressbook":
                $(".contact-mod-section").removeClass("active"),
                $(".addressCloum").addClass("active"),
                $("#repeat").attr("checked", "checked");
                break;
            case "file":
                $(".contact-mod-section").removeClass("active"),
                $(".addressFile").addClass("active"),
                $("#repeat").removeAttr("checked");
                break;
            case "input":
                $(".contact-mod-section").removeClass("active"),
                $(".addressInput").addClass("active"),
                $("#repeat").removeAttr("checked");
                break;
            default:
                $(".contact-mod-section").removeClass("active"),
                $(".addressCloum").addClass("active"),
                $("#repeat").attr("checked", "checked")
            }
        }
    }),
    $(".input-container").find("input[name=add]").live("click",
    function() {
        var a = "<tr>" + $(this).parents("tr").html() + "</tr>";
        $(".input-container").find("table").append(a),
        $(this).parent("td").html("")
    }),
    $(".input-container").find("input[name=less]").live("click",
    function() {
        if ($(".input-container").find("table").find("tr").length > 2) {
            var a = $(this).parent("td").html();
            $(this).parents("tr").remove(),
            $(".input-container").find("table").find("tr").last().find("td").last().html(a)
        }
    }),
    $("#ajaxfileup input[type=file]").live("change",
    function() {
        $("#ajaxfileup input[type=file]").attr("disabled"),
        $("#ajaxfileup input[type=file]").upload("importfile?tim=" + Math.random(),
        function(a) {
            var b, d, f, g, h;
            if ("true" == a.returns) {
                for (b = '<tr><td class="title">手机号码</td>', d = 0; d < e.length; d++) b += '<td class="title">' + e[d] + " 值</td>";
                b += "</tr>",
                f = "",
                h = 0,
                $.each(a.data,
                function(a, b) {
                    var c;
                    if ("" != b[0] && null != b[0] && "null" != b[0] && void 0 != b[0]) {
                        if (5 > a) {
                            for (g += "<tr><td>" + b[0] + "</td>", c = 0; c < e.length; c++) g += "" != b[c + 1] && null != b[c + 1] && "null" != b[c + 1] && void 0 != b[c + 1] ? "<td>" + b[c + 1] + "</td>": "<td></td>";
                            g += "</tr>"
                        }
                        for (f += "<tr><td>" + b[0] + "</td>", c = 0; c < e.length; c++) f += "" != b[c + 1] && null != b[c + 1] && "null" != b[c + 1] && void 0 != b[c + 1] ? "<td>" + b[c + 1] + "</td>": "<td></td>";
                        f += "</tr>",
                        h++
                    }
                }),
                $("#filedatarow").html("<table>" + b + f + "</table>"),
                $(".file-notic").text("CSV 文件预览"),
                $(".ex-container").find("table").html(b + g),
                $(".uploadfileoverview").html('您上传的 CSV 文件中包含<span class="highlight">' + h + '</span>个联系人 <a href="javascript:void(0)" class="highLinkHack">显示全部数据<a/>')
            } else $(this).eventdialog({
                type: "warning",
                title: "出现错误",
                msg: a.returns,
                icon: sublibraries + "images/warning.png",
                marginLeft: "-290",
                marginRight: "",
                marginTop: "-120",
                marginBottom: "",
                callback: function() {}
            });
            $("#ajaxfileup input[type=file]").removeAttr("disabled")
        },
        "json")
    }),
    $(".unlock").live("click",
    function() {
        $(this).eventdialog({
            type: "confirm",
            title: "确定要解锁模板吗？",
            msg: "要编辑此模板，请确定按钮，该页面会跳转至编辑页",
            icon: sublibraries + "images/warning.png",
            marginLeft: "-290",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {
                window.location.href = "#/edit/" + g
            }
        })
    }),
    $(".uploadfileoverview a").live("click",
    function() {
        var a = $("#filedatarow").html(),
        b = '<div class="emptyContainer"></div><div class="datarowscontainer"><div class="datarowstitle"><h2>CSV 文件预览</h2><a href="javascript:void(0)" class="highLinkHack">关闭</a></div><div class="warp"><div class="datarows"></div></div></div>';
        $("body").append(b),
        $(".emptyContainer").css("opacity", "0.3"),
        $(".datarowscontainer").find(".datarows").html(a),
        $(".datarowscontainer").show()
    }),
    $(".datarowstitle a").live("click",
    function() {
        $(".emptyContainer").remove(),
        $(".datarowscontainer").remove()
    })
}),
ptarr = /@var[(]{1}\w+[)]{1}/g,
mobd = /1[0-9]{10}/;