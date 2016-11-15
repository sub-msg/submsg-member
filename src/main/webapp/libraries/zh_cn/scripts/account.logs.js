$(function() {
    var a, c, d, f, g, h, i, j, k;
    $(window).resize(function() {
        c(".sentAnalyictsiconContainer ul", 200, 40, 6),
        d(),
        $(".historyContainer").mCustomScrollbar("update")
    }),
    $(window).scroll(function() {
        a(),
        $(".historyContainer").mCustomScrollbar("update")
    }),
    $(window).load(function() {
        $(".historyContainer").mCustomScrollbar({
            scrollInertia: 300,
            callbacks: {
                onTotalScroll: function() {}
            }
        })
    }),
    a = function() {
        var a = $(".content_container").height() + $(".header").height() + $(".footer").height() + 41,
        b = $(window).scrollTop(),
        c = $(window).height() + $(window).scrollTop() + $(".footer").height();
        b >= $(".header").height() ? $(".historySidebar").css("top", "0") : $(".historySidebar").css("top", $(".header").height() - b),
        "fixed" != $(".footer").css("position") ? a - c <= $(".footer").height() + 1 ? $(".historySidebar").css("bottom", $(".footer").height() + 1 - (a - c)) : $(".historySidebar").css("bottom", "0") : $(".historySidebar").css("bottom", "46px")
    },
    c = function(a, b, c, d) {
        var h, i, e = $(a).width(),
        f = b,
        j = Math.floor(e / (f + c));
        d > j ? (i = e % (f + c), h = f + i / j) : (i = e % ((f + c) * d), h = f + i / d),
        $(a).find("li").css("width", h + "px")
    },
    d = function() {
        "fixed" == $(".footer").css("position") ? $(".historySidebar").css("bottom", "46px") : $(".historySidebar").css("bottom", "0px")
    },
    f = !1,
    $(window).scroll(function() {
        var a = $(".content").height() + 100;
        $(window).height() + $(window).scrollTop() >= a && "0" != $("input[name=next]").val() && (f || 0 != h && ($("body").append('<div class="loader"><img src="' + sublibraries + 'images/spinner_32px_777A83.gif"/>正在加载 ...</div>'), f = !0, setTimeout(function() {
        	j.load();
        },
        1e3)))
    }),
    h = 0,
    i = 1,
    $.address.change(function(a) {
        var b, c, d;
        if (g = a.value.split("/"), b = ["message", "buy", "login"], c = ['<div class="trackingsections clear" id="message">                        <p class="trackingTitles messageicon" style="color:#33cc99">短信<p>                        <div class="awrip">                            <table class="logstable message-logs" id="messageTable">                            </table>                            <div class="nodata">                                <img src="' + sublibraries + 'images/nodata.png" alt="No Data" />                                <p>没有数据</p>                            </div>                        </div>                        <p class="clear"></p>                    </div>', '<div class="trackingsections clear" id="buy">                        <p class="trackingTitles buyicon" style="color:#ff9900">购买日志<p>                        <div class="awrip">                            <table class="logstable buy-logs" id="buyTable">                            </table>                            <div class="nodata">                                <img src="' + sublibraries + 'images/nodata.png" alt="No Data" />                                <p>没有数据</p>                            </div>                        </div>                        <p class="clear"></p>                    </div>', '<div class="trackingsections clear" id="login">                        <p class="trackingTitles usricon" style="color:#ff0000">登录日志<p>                        <div class="awrip">                            <table class="logstable login-logs" id="loginTable">                            </table>                            <div class="nodata">                                <img src="' + sublibraries + 'images/nodata.png" alt="No Data" />                                <p>没有数据</p>                            </div>                        </div>                        <p class="clear"></p>                    </div>'], i = 1, h = 0, void 0 == g[1] || "" == g[1]) $(".noresults").show(),
        $(".content_container").hide();
        else for ($(".trackingsections").remove(), $(".noresults").hide(), $(".content_container").show(), d = 0; d < b.length; d++) g[1] == b[d] && ($("#logsView").html(c[d]), j.load())
    }),
    j = {
        load: function() {
            var b, c, d, e = "yyyy年MM月dd日",
            k = " 00:00:00.000";
            j.setupMenu(),
            b = $.format.date(getDate( - 30) + k, e),
            "" != $("#fromDate").val() && (b = $("#fromDate").val()),
            c = $.format.date(getDate( - 0) + k, e),
            "" != $("#toDate").val() && (c = $("#toDate").val()),
            d = "day",
            "" != $("input[name=dataModSelector]").val() && (d = $("input[name=dataModSelector]").val()),
            $("input[name=fromDate]").val(b),
            $("input[name=toDate]").val(c),
            $("#dateSelecter .date").text(b + " - " + c),
            $.get("/member/getlogs.sm", {
                a: g[1],
                s: b,
                e: c,
                p: h,
                tim: Math.random()
            },
            function(b) {
                var d, e, c = b;//$.parseJSON(b);
                if(0 == c.flag){
                	if("message" == g[1]){
                		if(c.rc.length>0){
                			d = "", $("#message").find(".nodata").hide(), $.each(c.rc,
                                    function(a, b) {
                                        var c = "-"; 
                                        var sStr = "正在发送";
                                        if(b.status==2){
                                        	sStr = "发送成功";
                                        }else if(b.status==3){
                                        	sStr = "发送失败";
                                        }
                                        var format = "yyyy年MM月dd日 HH点mm分ss秒";
                                        d += "<tr>",
                                        d += "<td>" + i + "</td>",
                                        d += "<td>" + $.format.date(b.reqTime, format) + "</td>",
                                        d += "<td>" + b.projectId + "</td>",
                                        d += "<td>" + c + b.bill + "</td>",
                                        d += "<td>" + c + b.price + "</td>",
                                        d += "<td>" + b.toMobile + "</td>",
                                        d += '<td style="line-height:20px; width:30%;text-indent:0px; font-size:12px;">' + b.msgContent + "</td>",
                                        d += "<td>" + sStr + "</td>",
                                        d += "</tr>",
                                        i++
                                    })
                		}
                		0 == h ? (e = ' <tr><td class="title">No.</td><td class="title">日期</td><td class="title">应用</td><td class="title">计费</td><td class="title">余额计费</td><td class="title">联系人</td><td class="title">内容</td><td class="title">状态</td></tr>', $("#messageTable").html(e + d)) : $("#messageTable").append(d);
                	}else if("login" == g[1]){
                		d = "", $("#login").find(".nodata").hide(), $.each(c.rc,
                                function(a, b) {
                                    d += "<tr>",
                                    d += "<td>" + i + "</td>",
                                    d += "<td>" + b.datetime + "</td>",
                                    d += "<td>" + b.agent + "</td>",
                                    d += "<td>" + b.platform + "</td>",
                                    d += "<td>" + b.ip + "</td>",
                                    d += "</tr>",
                                    i++
                                }), 0 == h ? (e = ' <tr><td class="title">No.</td><td class="title">日期</td><td class="title">浏览器</td><td class="title">操作系统</td><td class="title">IP Address</td></tr>', $("#loginTable").html(e + d)) : $("#loginTable").append(d);
                	}else if("buy" == g[1]){
                		d = "", $("#buy").find(".nodata").hide(), $.each(c.rc,
                                function(a, b) {
                			        var format = "yyyy年MM月dd日 HH点mm分ss秒";
                                    var e, c = "未知状态";
                                    0 == b.status ? c = '<a href="/pay/pay.sm?orderId=' + b.orderId + '" style="color:#007ffc;">立即支付</a>': 1 == b.status && (c = "订单完成"),
                                    e = "未知状态",
                                    0 == b.status ? e = "尚未支付": 1 == b.status && (e = "已支付"),
                                    d += "<tr>",
                                    d += "<td>" + i + "</td>",
                                    d += "<td>" + $.format.date(b.createdTime, format) + "</td>",
                                    d += "<td>" + b.orderId + "</td>",
                                    d += "<td>¥" + b.productAmount + "</td>",
                                    d += "<td>" + e + "</td>",
                                    d += "<td>" + c + "</td>",
                                    d += '<td><a href="javascript:void(0)" id="' + b.orderId + '" class="getOrders" style="color:#007ffc">订单详情</a></td>',
                                    d += "</tr>",
                                    i++
                                }), 0 == h ? (e = ' <tr><td class="title">No.</td><td class="title">日期</td><td class="title">订单编号</td><td class="title">订单金额</td><td class="title">支付状态</td><td class="title">订单状态</td><td class="title">商品清单</td></tr>', $("#buyTable").html(e + d)) : $("#buyTable").append(d);
                	}
                  
                }else{
                	$(this).eventdialog({
                        type: "warning",
                        title: "发生了一个错误",
                        msg: c.returns,
                        icon: sublibraries + "images/warning.png",
                        marginLeft: "-290",
                        marginRight: "",
                        marginTop: "-120",
                        marginBottom: "",
                        callback: function() {
                            null == c.flag && window.location.reload()
                        }
                    })
                }
                
                if(c.totalSize==0){
                	if("message" == g[1]){
                		$("#messageTable").html(""), $("#message").find(".nodata").show();
                	}else if("login" == g[1]){
                		$("#loginTable").html(""), $("#login").find(".nodata").show();
                	}else if("buy" == g[1]){
                		$("#buyTable").html(""), $("#buy").find(".nodata").show();
                	}
                	h = 0;
                }else{
                	if(h+1<c.totalPage){
                		h = c.currentPage+1;
                	}else{
                		h=0;
                	}
                }
                f = !1;
                $(".loader").remove(), removeSpinner();
                footerstatus();
                a();
            })
        },
        setupMenu: function() {
            void 0 != g[1] && "" != g[1] && ($(".historyContainer").find("ul").find("li").each(function() {
                "javascript:void(0)" != $(this).find("a").attr("href") && $(this).removeClass("selected")
            }), $(".historyContainer").find("ul").find("li").find("a").each(function() {
                $(this).attr("href") == "#/" + g[1] && $(this).parent("li").addClass("selected")
            }))
        },
        getOrders: function(b, c) {
            $.post("/member/getOrders.sm", {
                orderId: b,
                tim: Math.random()
            },
            function(d) {
            	var format = "yyyy年MM月dd日 HH点mm分ss秒";
                var f, g, h, i, j, k, l,invoice,mp, e = d;//$.parseJSON(d);
                0 == e.flag ? (f = e.rc.porder,invoice = e.rc.invoice,mp=e.rc.mp, g = "未知状态", g = 0 == f.status ? '<a href="/pay/pay.sm??orderId=' + f.orderId + '">尚未支付</a>': '<span style="color:#00fc06">已支付</span>', h = "未知状态", 0 == f.status ? h = '<a href="/pay/pay.sm?orderId=' + f.orderId + '">立即支付</a>': 1 == f.status && (h = '<span style="color:#00fc06">订单已完成</span>'), i = "", 0 != f.invoiceId && (i = '<div class="section" style="width:100%;"><hr /></div><div class="section" style="width:100%;"><p class="title">发票信息</p></div><div class="clear"></div><div class="section"><p class="title">发票抬头:</p><p class="contents">' + invoice.invoiceName + '</p></div><div class="section"><p class="title">收件人:</p><p class="contents">' + invoice.firstName + " " + invoice.secondName + '</p></div><div class="section"><p class="title">联系电话:</p><p class="contents">' + invoice.phone + '</p></div><div class="section"><p class="title">寄送地址:</p><p class="contents">' + invoice.provice + " " + invoice.city + " " + invoice.area + "<br />" + invoice.address +'</p></div>'), j = '<tr class="orderDetails_tr" id="' + b + '"><td colspan="7"><div class="orders_container"><div class="warp"><div class="orderDetails"><div class="section"><p class="title">订单编号:</p><p class="contents">' + f.orderId + '</p></div><div class="section"><p class="title">日期:</p><p class="contents">' + $.format.date(f.createdTime, format) + '</p></div><div class="section"><p class="title">订单金额:</p><p class="contents">¥' + f.productAmount + '</p></div><div class="section"><p class="title">应付金额:</p><p class="contents">¥' + f.productAmount + '</p></div><div class="section"><p class="title">支付状态:</p><p class="contents">' + g + '</p></div><div class="section"><p class="title">订单状态:</p><p class="contents">' + h + "</p></div>" + i + '</div><div class="clear"></div><table class="logstable buy-logs"><tr class="title"><td >商品</td><td>数量</td><td>单价</td><td>金额</td></tr>', k = "",
                		$.each([mp],
                function(a, b) {
                    var d, e, c = '<span style="color:#33cc99;">短信发送服务</span>';
                    d = 0,
                    e = 0,
                    k += "<tr>",
                    k += '<td><div class="products"><div class="type">' + c + '</div><div class="num">' + b.nums + "</div></div></td>",
                    k += "<td>" + f.productNum + "</td>",
                    k += "<td>¥ " + b.price + "</td>",
                    k += "<td>¥ " + f.productAmount + "</td>",
                    k += "</tr>"
                }), j += k, j += "</table></div></div></td></tr>", l = "<tr>" + c.parents("tr").html() + "</tr>", c.parents("tr").replaceWith(l + j)) : $(this).eventdialog({
                    type: "warning",
                    title: "发生了一个错误",
                    msg: e.returns,
                    icon: sublibraries + "images/warning.png",
                    marginLeft: "-290",
                    marginRight: "",
                    marginTop: "-120",
                    marginBottom: "",
                    callback: function() {
                        "session" == e.error && window.location.reload()
                    }
                }),
                footerstatus(),
                a()
            })
        }
    },
    k = {
        setup: function() {
            $("#dataPicker").datepicker({
                dateFormat: "yy年mm月dd日",
                changeMonth: !1,
                numberOfMonths: 2,
                monthNames: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
                dayNames: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"],
                dayNamesShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六"],
                dayNamesMin: ["日", "一", "二", "三", "四", "五", "六"],
                maxDate: "+0d",
                beforeShowDay: function(a) {
                    var b = $.datepicker.parseDate("yy年mm月dd日", $("#fromDate").val()),
                    c = $.datepicker.parseDate("yy年mm月dd日", $("#toDate").val());
                    return [!0, b && (a.getTime() == b.getTime() || c && a >= b && c >= a) ? "dp-highlight": ""]
                },
                onSelect: function(a) {
                    var c = $.datepicker.parseDate("yy年mm月dd日", $("#fromDate").val()),
                    d = $.datepicker.parseDate("yy年mm月dd日", $("#toDate").val());
                    $("#fromDate").removeAttr("disabled"),
                    $("#toDate").removeAttr("disabled"),
                    !c || d ? ($("#fromDate").val(a), $("#toDate").val(""), $(this).datepicker("option", "minDate", a), $("#submitDatePicker").attr("disabled", "true"), $("#defindDate").find("option").each(function() {
                        "none" == $(this).val() && $(this).attr("selected", "selected")
                    })) : ($("#toDate").val(a), $(this).datepicker("option", "minDate", null), $("#submitDatePicker").removeAttr("disabled"))
                }
            }),
            $("#dataSelectorContainer").show(),
            $("#dataModeSelectorMasker").show(),
            $("#dateSelecter").find(".link").addClass("up")
        },
        destroy: function() {
            $("#dataPicker").datepicker("destroy"),
            $("#dataModeSelectorMasker").hide(),
            $("#dateSelecter").find(".link").removeClass("up"),
            $("#fromDate").val($("input[name=fromDate]").val()),
            $("#toDate").val($("input[name=toDate]").val()),
            $("#dataSelectorContainer").hide()
        },
        refresh: function() {
            $("#dataPicker").datepicker("refresh"),
            $("#submitDatePicker").removeAttr("disabled")
        },
        change: function() {
            $("#submitDatePicker").attr("disabled", "true");
            var a, b, c = "yyyy年MM月dd日",
            d = " 00:00:00.000",
            e = $.datepicker.parseDate("yy年mm月dd日", $.format.date(getDate(0) + d, c));
            try {
                a = $.datepicker.parseDate("yy年mm月dd日", $("#fromDate").val())
            } catch(f) {
                a = f
            }
            try {
                b = $.datepicker.parseDate("yy年mm月dd日", $("#toDate").val())
            } catch(g) {
                b = g
            }
            "Invalid date" != a && "Invalid date" != b ? ($("#dataPicker").datepicker("refresh"), $("#fromDate").removeAttr("style"), $("#toDate").removeAttr("style"), b >= a && e >= a && e >= b && $("#submitDatePicker").removeAttr("disabled")) : "Invalid date" == a ? ($("#fromDate").focus(), $("#fromDate").css("border-color", "red"), $("#fromDate").css("color", "red")) : "Invalid date" == b && ($("#toDate").focus(), $("#toDate").css("border-color", "red"), $("#toDate").css("color", "red"))
        }
    },
    $("#submitDatePicker").live("click",
    function() {
        setupSpinnerNoneContainerAccount($("#loader")),
        h = 0,
        i = 1,
        j.load(),
        k.destroy()
    }),
    $("#cancelDatePicker").live("click",
    function() {
        k.destroy()
    }),
    $("#dateSelecter").live("click",
    function() {
        var a = $("#dataSelectorContainer");
        a.is(":visible") ? k.destroy() : k.setup()
    }),
    $("#fromDate").live("change",
    function() {
        k.change()
    }),
    $("#toDate").live("change",
    function() {
        k.change()
    }),
    $(".modelSeletor").live("click",
    function() {
        $("#dataModeSelector ul").find("li").each(function() {
            $(this).removeClass("selected")
        }),
        $(this).parent("li").addClass("selected"),
        $("input[name=dataModSelector]").val($(this).attr("id")),
        setupSpinnerNoneContainerAccount($("#loader")),
        analytics.load()
    }),
    $("#defindDate").live("change",
    function() {
        var b, c, a = $(this).find("option:selected").val(),
        d = "yyyy年MM月dd日",
        e = " 00:00:00.000";
        "none" != a ? ("today" == a ? (b = $.format.date(getDate(0) + e, d), c = $.format.date(getDate(0) + e, d)) : "yesterday" == a ? (b = $.format.date(getDate( - 1) + e, d), c = $.format.date(getDate( - 1) + e, d)) : "lastweek" == a ? (b = $.format.date(getDate( - getMonday() - 7) + e, d), c = $.format.date(getDate( - getMonday() - 1) + e, d)) : "lastmonth" == a ? (b = $.format.date(getMonth("s", -1) + e, d), c = $.format.date(getMonth("e", -1) + e, d)) : "thismonth" == a ? (b = $.format.date(getMonth("s", 0) + e, d), c = $.format.date(getDate(0) + e, d)) : "thisweek" == a ? (b = $.format.date(getDate( - getMonday()) + e, d), c = $.format.date(getDate(0) + e, d)) : "thisquarter" == a ? (b = $.format.date(getQF("s", 0) + e, d), c = $.format.date(getDate(0) + e, d)) : "lastquarter" == a && (b = $.format.date(getQF("s", -3) + e, d), c = $.format.date(getQF("e", -3) + e, d)), $("#fromDate").val(b), $("#toDate").val(c), k.refresh(), $("#fromDate").attr("disabled", "true"), $("#toDate").attr("disabled", "true")) : ($("#fromDate").removeAttr("disabled"), $("#toDate").removeAttr("disabled"))
    }),
    $(".getOrders").live("click",
    function() {
        if ($t = $(this), $("body").find(".orderDetails_tr").length > 0) {
            var a = $("body").find(".orderDetails_tr").attr("id");
            $(".orderDetails_tr").remove()
        }
        "" != $t.attr("id") && a != $t.attr("id") && j.getOrders($t.attr("id"), $t)
    }),
    $(".historyContainer ul>li>a").live("click",
    function() {
        $(this).parent().find("ul").length > 0 && $(this).parent().addClass("active")
    })
});