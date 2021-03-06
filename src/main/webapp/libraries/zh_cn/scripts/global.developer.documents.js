$(function() {
    var a, b, c, d, e;
    var docId;
    $.address.change(function(k) {
        var ads = k.value.split("/");
        if(ads[1]!=""){
        	docId = ads[1];
            b.guide();
            b.getContents();
        }
    }),
    $(".developer-nav").addClass("active"),
    $("#contents").find(".pre_container").each(function() {
        var a = $(this).html();
        $(this).replaceWith("<pre>" + a + "</pre>")
    }),
    $("pre").addClass("prettyprint"),
    prettyPrint(),
    $(".nav-table-active").find("ul").find("li:eq(0)").addClass("active"),
    $(".nav-table-container").find(".nav-tab-views").each(function() {
        0 == $(this).index() ? $(this).show() : $(this).hide()
    }),
    b = {
        guide: function() {
            $(".bs-sidenav > li > ul").find("li").each(function() {
            	//alert($(this).find("a").attr("id"));
                $(this).find("a").attr("id") == docId ? ($(this).addClass("active"), $(this).parent("ul").parent("li").addClass("active")): $(this).removeClass("active")
            })
        },
        getContents: function() {
            $("body").animate({
                scrollTop: "0px"
            },
            100),
            $.get("/doc/getContent.sm", {
            	docId: docId
            },
            function(a) {
                var c = a;//$.parseJSON(a);
                //alert(JSON.stringify(c));
                0 == c.flag ? ($("#no-results").hide(), $("title").text(c.rc.docTitle + " - 开发者文档 － SUBMSG - 短信云端服务提供商"), $("#content_container").html(c.rc.docContnet), $("#contents").show(), $("#contents").find(".pre_container").each(function() {
                    var a = $(this).html();
                    $(this).replaceWith("<pre>" + a + "</pre>")
                }), $("pre").addClass("prettyprint"), prettyPrint(), d(1), b.init()) : ($("#no-results").show(), $("#contents").hide());
                b.guide();
            })
        },
        search: function(a) {
            $(".bs-sidenav").hide(),
            $(".bs-searchnav").show(),
            $(".bs-searchnav").html("<li><p>正在搜索 “" + a + "”</p></li>"),
            $.get("/doc/searchContents.sm", {
                e: a,
                app: 0
            },
            function(c) {
                var e = c;//$.parseJSON(c);
                $(".searching").hide(),
                $(".reset").show(),
                (0 == e.flag && e.rc.length>0 )? ($(".bs-searchnav").html("<li><p>找到" + e.rc.length + "个与 “" + a + "” 相关的文档</p></li>"), $.each(e.rc,
                function(a, b) {
                    $(".bs-searchnav").append('<li><a href="/doc/index.sm?type=' + b.type + '#'+b.docId+'">' + b.docTitle + "</a></li>")
                }), $("#contents").find(".pre_container").each(function() {
                    var a = $(this).html();
                    $(this).replaceWith("<pre>" + a + "</pre>")
                }), $("pre").addClass("prettyprint"), prettyPrint(), d(1), b.init()) : $(".bs-searchnav").html("<li><p>没有找到与 “" + a + "” 相关的文档</p></li>")
            })
        },
        init: function() {
            $(".nav-table-active").find("ul").find("li:eq(0)").addClass("active"),
            $(".nav-table-container").find(".nav-tab-views").each(function() {
                0 == $(this).index() ? $(this).show() : $(this).hide()
            })
        }
    },
    $(".bs-sidenav > li > ul > li > a").live("click",
    function() {
    	docId = $(this).attr("id");
        "fixed" == $(".sidebar").css("position") && $(".sidebar").animate({
            left: "-500px"
        },
        500,
        function() {
            $(this).hide(),
            $(".sidebar").removeAttr("style"),
            $(".nav-masker").hide(),
            $(this).css("left", "auto")
        });
        if(docId!=""){
        	b.getContents();
        }
    }),
    $(".bs-sidenav > li > a").live("click",
    function() {
        $(this).parent("li").toggleClass("active")
    }),
    $(".res-title ").live("click",
    function() {
        $(this).parent("div").find(".res-table").toggle("blind"),
        $(this).parent("div").toggleClass("active")
    }),
    $(".nag-tab-ctr").live("click",
    function() {
        var a = $(this).parents("li").index();
        $(this).parents(".res-table").parents(".nav-table-active").find("ul").find("li").each(function() {
            $(this).removeClass("active")
        }),
        $(this).parents(".res-table").find(".nav-table-active").find("li").each(function() {
            $(this).index() == a ? $(this).addClass("active") : $(this).removeClass("active")
        }),
        $(this).parents(".res-table").find(".nav-tab-views").each(function() {
            $(this).index() == a ? $(this).show() : $(this).hide()
        })
    }),
    $(".bs-searchnav >li >a").live("click",
    function() {
        $(this).parents("ul").find("li").each(function() {
            $(this).removeClass("active")
        }),
        $(this).parent("li").addClass("active"),
        "fixed" == $(".sidebar").css("position") && $(".sidebar").animate({
            left: "-500px"
        },
        500,
        function() {
            $(this).hide(),
            $(".sidebar").removeAttr("style"),
            $(".nav-masker").hide(),
            $(this).css("left", "auto")
        })
    }),
    $("input[name=search]").live("keyup",
    function() {
        clearTimeout(c);
        var a = $(this).val();
        "" != a ? ($(".searching").show(), c = setTimeout(function() {
            b.search(a)
        },
        500)) : ($(".searching").hide(), $(".reset").hide())
    }),
    $(".reset").live("click",
    function() {
        $(".reset").hide(),
        $("input[name=search]").val(""),
        $(".bs-searchnav").html(""),
        $(".bs-searchnav").hide(),
        $(".bs-sidenav").show()
    }),
    $("#docmentMenu").live("click",
    function() {
        $(".sidebar").is(":visible") ? alert("a") : ($(".sidebar").css("left", "-500px"), $(".sidebar").show(), $(".nav-masker").show(), $(".sidebar").animate({
            left: "0px"
        },
        500))
    }),
    $(".nav-masker").live("click",
    function() {
        $(".nav-masker").hide(),
        "fixed" == $(".sidebar").css("position") && $(".sidebar").animate({
            left: "-500px"
        },
        500,
        function() {
            $(this).hide(),
            $(this).css("left", "auto"),
            $(".sidebar").removeAttr("style")
        })
    }),
    d = function(a) {
        window.location.href.split("/")[6] && $.post("/chs/comments/getComments", {
            page: a,
            target: window.location.href.split("/")[6].split("#")[0],
            tim: Math.random()
        },
        function(b) {
            var d, f, g, c = $.parseJSON(b);
            "true" == c.returns ? (d = "</span></li></ul>", 0 != c.commentsNum && (d = c.commentsNum + "条评论：</span><ul class='pagination pagination-top' style='margin-right:25px;float:right;'></ul></div><div class='dividingLine' style='margin-top:10px;'></div>"), f = "<div class='submitParent commentsBlock' class='comments_save'><div class='comments_problem'><p>提出问题：<span class='words_left'>剩余&nbsp;255</span></p></div><a><img src='" + c.icon + "'></a><div class='comments_input'><textarea rows='1' style='width:100%;height:40px' placeholder='提出问题……' class='commentsArea textareaStyle'></textarea></div><div class='comments-submit-block'  style='display:none;height:0px'><input type='button' class='btn btn-primary navbar-btn commentsSubmit' value='提交'><span class='words_error' style='display:none'></span></div><input type='hidden' value='0' name='id'></div><div><span style='color:gray;display:inline-block;margin:34px 0 0 30px;'>" + d + "<section><ul>", c.comments && (g = c.comments, $.each(g,
            function(a, b) {
                var j, d = "",
                e = "",
                g = $.cookie(b.id),
                h = "",
                i = "";
                0 != b.up && (h = "(" + b.up + ")"),
                0 != b.down && (i = "(" + b.down + ")"),
                j = "<a href='javascript:void(0);' class='open_up_style'>是" + h + "</a><span class='s_dividing_line'>|</span><a href='javascript:void(0);' class='open_down_style'>否 " + i + "</a>",
                null != g && (j = "<span class='open_up_style1' name='up'>是" + h + "</span><span class='s_dividing_line'>|</span><span class='open_down_style1' name='down'>否 " + i + "</span>"),
                "1" == b.ownComments && (d = "<a href='javascript:void(0);' class='delete_style'>[删除]</a><a  href='javascript:void(0);' class='modify_style'>[编辑]</a>", e = "<div class='modify-block comments_save' style='display:none'><div><p>&nbsp;<span class='words_left' style='float:right;margin-right:0'>剩余&nbsp;255</span></p><a><img src='" + c.icon + "'></a><div style='margin-left:35px;margin-right:5px;width:auto;'><textarea rows='1' style='height:100px;width:98%;margin-left:10px;' class='modifyArea textareaStyle'></textarea></div></div><input type='button' value='提交' class='btn btn-primary navbar-btn commentsModify submit_style'><input type='button' value='取消' class='btn btn-primary navbar-btn commentsReset submit_style'></div>"),
                f += "<li><div class='submitParent mainComments'><div class='comments-content'><a><img src='http://submail.oss.aliyuncs.com/" + b.icon + "'></a><span class='user_time'>" + b.name + "：" + b.createDate + "</span><div class='photoRight'>" + b.comments + "</div><span class='useful'>这条评论对你是否有用?</span><div style='display:inline-block;margin-left:10px;font-size:12px;'>" + j + "</div><div style='display:inline-block;float:right;font-size:12px;margin-top:10px;'>" + d + "<a href='javascript:void(0);' class='reply_style'>[回复]</a></div></div><div class='d_reply'></div><div class='level_one comments_save' style='display:none'><div style='margin:10px 10px 0 40px;'><p>&nbsp;<span class='words_left' style='float:right;margin-right:0'>剩余&nbsp;255</span></p><a><img src='" + c.icon + "'></a><div style='margin-left:35px;margin-right:5px;width:auto;'><textarea rows='1' style='height:100px;width:100%;margin-left:10px;' class='commentsArea textareaStyle'></textarea></div></div><input type='button' value='提交' class='btn btn-primary navbar-btn commentsSubmit submit_style'><input type='button' value='取消' class='btn btn-primary navbar-btn commentsReset1 submit_style'><span class='words_error' style='display:none'></span></div>" + e + "<input type='hidden' value='" + b.id + "' name='id'></div><ul>",
                b.son && $.each(b.son,
                function(a, d) {
                    var e, g, h, i, j, k;
                    d.parent == b.id && (e = $.cookie(d.id), g = "", h = "", i = "", j = "", 0 != d.up && (i = "(" + d.up + ")"), 0 != d.down && (j = "(" + d.down + ")"), k = "<a href='javascript:void(0);' class='open_up_style'>是" + i + "</a><span class='s_dividing_line'>|</span><a href='javascript:void(0);' class='open_down_style'>否 " + j + "</a>", null != e && (k = "<span class='open_up_style1' name='up'>是" + i + "</span><span class='s_dividing_line'>|</span><span class='open_down_style1' name='down'>否 " + j + "</span>"), "1" == d.ownComments && (g = "<a href='javascript:void(0);' class='delete_style'>[删除]</a><a  href='javascript:void(0);' class='modify_style'>[编辑]</a>", h = "<div class='modify-block comments_save' style='display:none'><div><p>&nbsp;<span class='words_left' style='float:right;margin-right:0'>剩余&nbsp;255</span></p><a><img src='" + c.icon + "'></a><div style='margin-left:35px;margin-right:5px;width:auto;'><textarea rows='1' style='height:100px;width:98%;margin-left:10px;' class='modifyArea textareaStyle'></textarea></div></div><input type='button' value='提交' class='btn btn-primary navbar-btn commentsModify submit_style'><input type='button' value='取消' class='btn btn-primary navbar-btn commentsReset submit_style'></div>"), f += "<li><div class='submitParent mainComments'><div class='comments-content'><a><img src='http://submail.oss.aliyuncs.com/" + d.icon + "'></a><span class='user_time'>" + d.name + "：" + d.createDate + "</span><div class='photoRight'>" + d.comments + "</div><span id='useful' class='useful'>这条评论对你是否有用?</span><div style='display:inline-block;margin-left:10px;font-size:12px;'>" + k + "</div><div style='display:inline-block;float:right;font-size:12px;margin-top:10px;'>" + g + "</div></div><div class='d_reply'>" + h + "<input type='hidden' value='" + d.id + "' name='id'></div></li>")
                }),
                f += "</ul></li>"
            })), f += '</ul></section><div class="col-lg-12"><ul class="pagination pagination-bottom" style="float:right;margin-right:10px;"></ul></div>', $("#comments").html(f), e(c.commentsNum, a)) : alert("服务器请求错误！")
        })
    },
    d(1),
    e = function(a, b) {
        var e, c = parseInt(a / 50) + 1,
        d = "";
        for (d += 1 == b ? '<li class="disabled"><a href="javascript:void(0)">上一页</a></li>': '<li><a href="javascript:void(0)" class="pageSwitch">上一页</a></li>', e = 1; c >= e; e++) b == e ? d += '<li class="disabled"><a href="javascript:void(0)" class="currentPage">' + e + "</a></li>": Math.abs(b - e) <= 2 && (d += '<li><a href="javascript:void(0)" class="pageSwitch">' + e + "</a></li>");
        d += b == c ? '<li class="disabled"><a href="javascript:void(0)">下一页</a></li>': '<li><a href="javascript:void(0)" class="pageSwitch">下一页</a></li>',
        $(".pagination-top").html(d),
        $(".pagination-bottom").html(d)
    },
    $(".pageSwitch").live("click",
    function() {
        var a = $(this).text(),
        b = $(this).parents(".pagination").find(".currentPage").text();
        "上一页" == a ? d(parseInt(b) - 1) : "下一页" == a ? d(parseInt(b) + 1) : d(parseInt(a))
    }),
    $(".commentsModify").live("click",
    function() {
        var e, a = $(this).parents(".submitParent").find(".modifyArea").val(),
        b = $(this).parents(".submitParent").find("input[name=id]").val(),
        c = a.length;
        c > 0 && 255 >= c ? (e = {
            id: b,
            comment: a,
            tim: Math.random()
        },
        $.post("/chs/comments/modifyComments", e,
        function(a) {
            var c, b = $.parseJSON(a);
            "true" == b.returns ? (c = $(".pagination-top").find(".currentPage").text(), d(parseInt(c)), $(this).parents(".submitParent").find(".commentsArea").text("")) : alert(b.returns)
        })) : $(this).parents(".submitParent").find(".modifyArea").addClass("textarea_error")
    }),
    $(".commentsReset").live("click",
    function() {
        $(".modify-block").hide(),
        $(".level_one").hide(),
        $(".modify_style").show(),
        $(this).parents(".submitParent").find(".comments-content").show()
    }),
    $(".commentsReset1").live("click",
    function() {
        $(this).parents(".submitParent").find(".reply_style").show(),
        $(".level_one").hide()
    }),
    $(".modify_style").live("click",
    function() {
        var a = $(this).parents(".submitParent").find(".photoRight").text();
        $(this).parents(".submitParent").find(".modifyArea").val(a),
        $(this).parents(".submitParent").find(".comments-content").hide(),
        $(".level_one").hide(),
        $(".reply_style").show(),
        $(".modify_style").show(),
        $(this).hide(),
        $(".modify-block").hide(),
        $(this).parents(".mainComments").find(".modify-block").show()
    }),
    $(".delete_style").live("click",
    function() {
        var a = $(this).parents(".submitParent").find("input[name=id]").val();
        $("body").eventdialog({
            type: "confirm",
            title: "删除确认！",
            msg: "你确定要删除这条评论吗？",
            icon: libraries + "/images/warning.png",
            marginLeft: "-295",
            marginRight: "",
            marginTop: "-220",
            marginBottom: "",
            callback: function() {
                $.post("/chs/comments/deleteComments", {
                    id: a,
                    tim: Math.random()
                },
                function(a) {
                    var c, b = $.parseJSON(a);
                    "true" == b.returns && (c = $(".pagination-top").find(".currentPage").text(), d(parseInt(c)))
                })
            }
        })
    }),
    $(".open_up_style").live("click",
    function() {
        var a = 1,
        b = $(this).parents(".submitParent").find("input[name=id]").val();
        $.post("/chs/comments/setUp", {
            up: a,
            id: b,
            tim: Math.random()
        },
        function(a) {
            var e, c = $.parseJSON(a);
            "true" == c.returns && ($.cookie(b, "1", {
                expires: 30
            }), e = $(".pagination-top").find(".currentPage").text(), d(parseInt(e)))
        })
    }),
    $(".open_down_style").live("click",
    function() {
        var a = 1,
        b = $(this).parents(".submitParent").find("input[name=id]").val();
        $.post("/chs/comments/setDown", {
            down: a,
            id: b,
            tim: Math.random()
        },
        function(a) {
            var c = $.parseJSON(a);
            "true" == c.returns && ($.cookie(b, "1", {
                expires: 30
            }), d(1))
        })
    }),
    $(".commentsArea").live("focus",
    function() {
        $(this).css("height", "100px"),
        $(this).parents(".submitParent").find(".comments-submit-block").show(),
        $(this).removeClass("textarea_error")
    }),
    $(".modifyArea").live("focus",
    function() {
        $(this).removeClass("textarea_error")
    }),
    $(".textareaStyle").live("blur",
    function() {
        var a = $(this).val().length;
        a > 255 && ($(this).addClass("textarea_error"), $(this).parents(".submitParent").find(".words_error").show(), $(this).parents(".submitParent").find(".words_error").text("字数最多不能超过255位！"))
    }),
    $(".textareaStyle").live("keyup",
    function() {
        var a, b;
        $(this).removeClass("textarea_error"),
        a = $(this).val().length,
        $(this).parents(".submitParent").find(".words_error").hide(),
        $(this).parents(".submitParent").find(".words_error").text(""),
        b = 255 - a,
        b >= 0 && $(this).parents(".submitParent").find(".words_left").text("剩余 " + b),
        a > 255 && ($(this).parents(".submitParent").find(".words_left").text("剩余 0"), $(this).addClass("textarea_error"), $(this).parents(".submitParent").find(".words_error").show(), $(this).parents(".submitParent").find(".words_error").text("字数最多不能超过255位！"))
    }),
    $(".commentsSubmit").live("click",
    function() {
        var a, b, c;
        $(this).attr("disabled", "true"),
        a = $(this).parents(".submitParent").find("input[name=id]").val(),
        b = $(this).parents(".submitParent").find(".commentsArea").val().length,
        b > 0 && 255 >= b ? (c = {
            parent: a,
            target: window.location.href.split("/")[6].split("#")[0],
            comment: $(this).parents(".submitParent").find(".commentsArea").val(),
            app: 1,
            tim: Math.random()
        },
        $.post("/chs/comments/saveComments", c,
        function(a) {
            var c, e, b = $.parseJSON(a);
            "true" == b.returns ? ($(this).removeAttr("disabled"), c = $(".pagination-top").find(".currentPage").text(), c ? d(parseInt(c)) : d(1), $(this).parents(".submitParent").find(".commentsArea").text("")) : (b.returns = "account") && (e = window.location.href, window.location = "/chs/account/login#/login/" + BASE64.encoder(e))
        })) : 0 == b && $(this).parents(".submitParent").find(".commentsArea").addClass("textarea_error")
    }),
    $(".reply_style").live("click",
    function() {
        $(".modify_style").show(),
        $(".modify-block").hide(),
        $(".reply_style").show(),
        $(this).hide(),
        $(".level_one").hide(),
        $(this).parents(".mainComments").find(".level_one").show(),
        $(this).parents(".submitParent").find(".textareaStyle").val(""),
        $(this).parents(".submitParent").find(".commentsArea").removeClass("textarea_error")
    })
});