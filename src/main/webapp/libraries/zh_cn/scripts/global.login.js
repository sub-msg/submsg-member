$(function() {
    var b, d, a = "",
    c = 0;
    $.address.change(function(a) {
        b = a.value.split("/"),
        "" != b[1] ? d.slide(b[1]) : d.slide("login")
    }),
    d = {
        backgroundInit: function() {
            var a, b = 0;
            a = $(window).width(),
            b = $(window).height(),
            $(".login-bg").css("height", b + "px")
        },
        slide: function(d) {
            var g, h, e = ["login", "signup", "forgot", "active", "change", "actived", "activeFailed", "activeTimesup", "unchange", "locked", "reset", "resetimesup", "resetsuccess"],
            f = ["login-title", "login-signup", "login-forgot", "login-active", "login-change", "login-actived", "login-activeFailed", "login-activeTimesup", "login-unchange", "login-locked", "login-reset", "login-resetimesup", "login-resetsuccess"];
            for (h = 0; h < e.length; h++) if (e[h] == d) {
                g = h;
                break
            }
            $(".signin").find("input[type=text]").val(""),
            $(".signin").find("input[type=email]").val(""),
            $(".signin").find("input[type=password]").val(""),
            0 == c ? ($("#" + d).addClass("slide-enter"), $("#" + d).addClass("slide-enter-reset"), $("#" + d).show(), $("#" + f[g]).addClass("slide-enter-backwards-h1"), setTimeout(function() {
                $("#" + f[g]).show(),
                $("#" + f[g]).addClass("slide-enter-backwards-active-h1"),
                $("#" + d).addClass("slide-active")
            },
            10), setTimeout(function() {
                $("#" + e[c - 1]).removeClass("slide-enter").removeClass("slide-enter-reset").removeClass("slide-active").removeClass("slide-leave").removeClass("slide-leave-left"),
                $("#" + f[c - 1]).removeClass("slide-enter-backwards-h1").removeClass("slide-enter-backwards-active-h1").removeClass("slide-leave-active-h1").removeClass("slide-enter-backwards-h1").removeClass("slide-enter-backwards-h1"),
                c = g + 1,
                $("#" + e[c - 1]).removeClass("slide-enter").removeClass("slide-enter-reset").removeClass("slide-active").removeClass("slide-leave").removeClass("slide-leave-left"),
                $("#" + f[c - 1]).removeClass("slide-enter-backwards-h1").removeClass("slide-enter-backwards-active-h1").removeClass("slide-leave-active-h1").removeClass("slide-enter-backwards-h1").removeClass("slide-enter-backwards-h1")
            },
            450)) : ($("#" + e[c - 1]).removeClass("slide-enter").removeClass("slide-enter-reset").removeClass("slide-active").removeClass("slide-leave").removeClass("slide-leave-left"), $("#" + f[c - 1]).removeClass("slide-enter-backwards-h1").removeClass("slide-enter-backwards-active-h1").removeClass("slide-leave-active-h1").removeClass("slide-enter-backwards-h1").removeClass("slide-enter-backwards-h1"), $("#" + e[g]).removeClass("slide-enter").removeClass("slide-enter-reset").removeClass("slide-active").removeClass("slide-leave").removeClass("slide-leave-left"), $("#" + f[g]).removeClass("slide-enter-backwards-h1").removeClass("slide-enter-backwards-active-h1").removeClass("slide-leave-active-h1").removeClass("slide-enter-backwards-h1").removeClass("slide-enter-backwards-h1"), $("#" + e[c - 1]).addClass("slide-leave"), $("#" + f[c - 1]).addClass("slide-leave-active-h1"), $("#" + f[g]).addClass("slide-enter-backwards-h1"), setTimeout(function() {
                $("#" + d).addClass("slide-enter"),
                $("#" + e[c - 1]).addClass("slide-leave-left"),
                $("#" + f[g]).show()
            },
            50), setTimeout(function() {
                $("#" + d).addClass("slide-enter-reset"),
                $("#" + d).show()
            },
            100), setTimeout(function() {
                $("#" + f[c - 1]).hide(),
                $("#" + f[g]).addClass("slide-enter-backwards-active-h1"),
                $("#" + e[c - 1]).hide(),
                $("#" + d).addClass("slide-active")
            },
            350), setTimeout(function() {
                $("#" + e[c - 1]).removeClass("slide-enter").removeClass("slide-enter-reset").removeClass("slide-active").removeClass("slide-leave").removeClass("slide-leave-left"),
                $("#" + f[c - 1]).removeClass("slide-enter-backwards-h1").removeClass("slide-enter-backwards-active-h1").removeClass("slide-leave-active-h1").removeClass("slide-enter-backwards-h1").removeClass("slide-enter-backwards-h1"),
                $("#" + e[g]).removeClass("slide-enter").removeClass("slide-enter-reset").removeClass("slide-active").removeClass("slide-leave").removeClass("slide-leave-left"),
                $("#" + f[g]).removeClass("slide-enter-backwards-h1").removeClass("slide-enter-backwards-active-h1").removeClass("slide-leave-active-h1").removeClass("slide-enter-backwards-h1").removeClass("slide-enter-backwards-h1"),
                c = g + 1
            },
            1100)),
            setTimeout(function() {
                "active" == d && "" == a && (window.location = "#/signup"),
                "actived" == d && "" != b[2] && (a = b[2]),
                "activeTimesup" == d && "" != b[2] && (a = b[2]),
                "login" == d && "" != a && ($("#login-form").find("input[name=email]").val(a), $("#login-form").find("input[name=password]").focus()),
                "change" == d && "" == a && (window.location = "#/login"),
                "change" == d && "" != a && ($("#change-form").find("input[name=email]").val(a), $("#change-form").find("input[name=password]").focus()),
                "reset" == d && "" == a && (window.location = "#/login"),
                "reset" == d && "" != a && ($("#reset-form").find("input[name=email]").val(a), $("#reset-form").find("input[name=securityCode]").focus())
            },
            1500)
        },
        signup: function() {
            var c, d, e, f, b = '<div id="signup-sppiner" style="width:100%;height:100%;background:#fff;position:absolute;left:0;top:0;z-index:999;">  <div class="text-center" style="margin-top:100px;overflow:hidden;dispaly:block;"> <img src="/libraries/zh_cn/images/spinner_42px_ffffff.gif" style="position:absolute;left:50%;top:100px; margin-left:-21px;"> </div><div class="clearfix"></div> <div class="text-center" style="margin-top:50px;">正在创建账户 ...</div></div>';
            $("#signup").append(b),
            c = $("#signup-form").find("input[name=firstname]").val(),
            d = $("#signup-form").find("input[name=lastname]").val(),
            e = $("#signup-form").find("input[name=email]").val(),
            f = $("#signup-form").find("input[name=password]").val(),
            $.post("index!signup.sm", {
                firstname: c,
                lastname: d,
                email: e,
                password: f
            },
            function(b) {
                var d, f, g, h, i, c = b;
                if ($("#signup-sppiner").remove(), "0" == c.flag) a = e,
                $("#activeEmail").text(a),
                window.location = "#/active";
                else {
                	  h = ["firstname","lastname","email","password","email"];
                	  f = ["请输入你的姓氏", "请输入你的名字", "请输入你的常用电子邮件地址，此邮件地址将作为你的 SUBMSG 账号", "请创建登录密码", '此邮箱已被注册, 是否需要<a href="#/forgot">重置密码？</a>'];
//                    for (d = c.returns.split(","), f = ["请输入你的姓氏", "请输入你的名字", "请输入你的常用电子邮件地址，此邮件地址将作为你的 SUBMSG 账号", "请创建登录密码", '此邮箱已被注册, 是否需要<a href="#/forgot">重置密码？</a>'], g = 0; g < d.length; g++) 
//                    	$("#signup-form").find("input[name=" + d[g] + "]").addClass("error"),
//                    h = 0,
//                    "firstname" == d[g] ? h = 0 : "lastname" == d[g] ? h = 1 : "email" == d[g] ? "0" == c.account ? h = 2 : "1" == c.account && (h = 4) : "password" == d[g] && (h = 3),
//                    $("#signup-form").find("input[name=" + d[g] + "]").parent().find("label").length > 0 && $("#signup-form").find("input[name=" + d[g] + "]").parent().find("label").remove(),
                    
                    i = '<label for="' + h[c.flag-1] + '" generated="true" class="error">' + f[c.flag-1] + "</label>",
                    $("#signup-form").find("input[name=" + h[c.flag-1] + "]").parent().append(i),
                    setTimeout(function() {
                        $("#signup-form").find("input[name=" + h[c.flag-1] + "]").find("label").show()
                    },
                    2e3);
                    $("#signup-form").effect("shake", {
                        times: 3
                    },
                    300)
                }
            })
        },
        resend: function() {
        	a = $("#activeEmail").text();
            "" != a && ($("input[name=resend]").removeClass("btn-primary").removeClass("btn-success").addClass("btn-spn").attr("disable", "disable").val("正在发送"), $.post("/index!reSendActiveEmail.sm", {
                email: a
            },
            function(r) {
                var b = r;
                "0" == b.flag ? ($("input[name=resend]").removeClass("btn-spn").addClass("btn-success").removeAttr("disable").val("已发送")):"1"==b.flag ? ($("input[name=resend]").removeClass("btn-spn").addClass("btn-success").removeAttr("disable").val("账号已激活")):"100"==b.flag?($("input[name=resend]").removeClass("btn-spn").addClass("btn-success").removeAttr("disable").val("邮件地址不能为空")):($("input[name=resend]").removeClass("btn-spn").addClass("btn-success").removeAttr("disable").val("发送失败"));
            }))
        },
        change: function() {
            var b, c, d, e;
            "" != a && (b = '<div id="signup-sppiner" style="width:100%;height:100%;background:#fff;position:absolute;left:0;top:0;z-index:999;">  <div class="text-center" style="margin-top:100px;overflow:hidden;dispaly:block;"> <img src="/libraries/zh_cn/images/spinner_42px_ffffff.gif" style="position:absolute;left:50%;top:100px; margin-left:-21px;"> </div><div class="clearfix"></div> <div class="text-center" style="margin-top:50px;">正在更改账户 ...</div></div>', $("#change").append(b), c = $("#change-form").find("input[name=email]").val(), d = $("#change-form").find("input[name=change]").val(), e = $("#change-form").find("input[name=password]").val(), $.post("index!changeEmail.sm", {
                email: c,
                change: d,
                password: e
            },
            function(b) {
//                var e, c = $.parseJSON(b);
            	 var e, c = b;
                $("#signup-sppiner").remove(),
                "0" == c.flag ? (a = d, $("#activeEmail").text(a), window.location = "#/active") : ("1" == c.flag ? ($("#change-form").find("input[name=change]").parent().find("label").length > 0 && $("#change-form").find("input[name=change]").parent().find("label").remove(), e = '<label for="change" generated="true" class="error">请输入新的电子邮件地址，成功更改后，此邮件地址将作为你的 SUBMSG 账号</label>', $("#change-form").find("input[name=change]").parent().append(e)) : ("2" == c.flag|| "3" == c.flag ) ? ($("#change-form").find("input[name=email]").parent().find("label").length > 0 && $("#change-form").find("input[name=email]").parent().find("label").remove(), e = '<label for="email" generated="true" class="error">账户名或密码错误</label>', $("#change-form").find("input[name=email]").parent().append(e)) : "4" == c.flag ? window.location = "#/unchange": "5" == c.flag ? ($("#change-form").find("input[name=change]").parent().find("label").length > 0 && $("#change-form").find("input[name=change]").parent().find("label").remove(), e = '<label for="change" generated="true" class="error">此邮件地址已被使用，请更换一个邮件地址</label>', $("#change-form").find("input[name=change]").parent().append(e)) : "6" == c.flag && ($("#change-form").find("input[name=change]").parent().find("label").length > 0 && $("#change-form").find("input[name=change]").parent().find("label").remove(), e = '<label for="change" generated="true" class="error">新的邮件地址不能与旧邮件地址相同，请更换后再试</label>', $("#change-form").find("input[name=change]").parent().append(e)), $("#change-form").effect("shake", {
                    times: 3
                },
                300))
            }))
        },
        login: function() {
            var d, e, c = '<div id="signup-sppiner" style="width:100%;height:100%;background:#fff;position:absolute;left:0;top:0;z-index:999;">  <div class="text-center" style="margin-top:100px;overflow:hidden;dispaly:block;"> <img src="/libraries/zh_cn/images/spinner_42px_ffffff.gif" style="position:absolute;left:50%;top:70px; margin-left:-21px;"> </div><div class="clearfix"></div> <div class="text-center" style="margin-top:20px;">正在登录</div></div>';
            $("#login").append(c),
            d = $("#login-form").find("input[name=email]").val(),
            e = $("#login-form").find("input[name=password]").val(),
            $.post("index!login.sm", {
                email: d,
                password: e
            },
            function(c) {
                var e, f, g, h, k = c;
                $("#signup-sppiner").remove();
                if("0" == k.flag){
                	alert("登录成功");
                	return;
                }else if("1" == k.flag||"2" == k.flag||"3" == k.flag){
                    $("#login-form").effect("shake", {
                        times: 3
                    },
                    300);
                    return;
                }else if("4" == k.flag){
                	a = d;
                	$("#activeEmail").text(a), window.location = "#/active";
                }else if("5" == k.flag){
                	window.location = "#/locked";
                }
            })
        },
        forgot: function() {
            var c, b = '<div id="signup-sppiner" style="width:100%;height:100%;background:#fff;position:absolute;left:0;top:0;z-index:999;">  <div class="text-center" style="margin-top:50px;overflow:hidden;dispaly:block;"> <img src="/libraries/zh_cn/images/spinner_42px_ffffff.gif" style="position:absolute;left:50%;top:70px; margin-left:-21px;"> </div><div class="clearfix"></div> <div class="text-center" style="margin-top:0px;">正在发送重置密码邮件</div></div>';
            $("#forgot").append(b),
            c = $("#forgot-form").find("input[name=email]").val(),
            $.post("index!pwdreset.sm", {
                email: c
            },
            function(b) {
               // var e, d = $.parseJSON(b);
                var e, d = b;
                $("#signup-sppiner").remove(),
                "0" == d.flag ? (a = c, $("#password-reset").text(a), window.location = "#/reset") : ($("#forgot-form").find("input[name=email]").parent().find("label").length > 0 && $("#forgot-form").find("input[name=email]").parent().find("label").remove(), e = '<label for="email" generated="true" class="error">您所填写的电子邮件地址与我们的记录不匹配。请核对后重试。</label>', $("#forgot-form").find("input[name=email]").parent().append(e), $("#forgot-form").effect("shake", {
                    times: 3
                },
                300))
            })
        },
        reset: function() {
            var c, d, e, f, b = '<div id="signup-sppiner" style="width:100%;height:100%;background:#fff;position:absolute;left:0;top:0;z-index:999;">  <div class="text-center" style="margin-top:100px;overflow:hidden;dispaly:block;"> <img src="/libraries/zh_cn/images/spinner_42px_ffffff.gif" style="position:absolute;left:50%;top:190px; margin-left:-21px;"> </div><div class="clearfix"></div> <div class="text-center" style="margin-top:140px;">正在重置密码</div></div>';
            $("#reset").append(b),
            c = $("#reset-form").find("input[name=securityCode]").val(),
            d = $("#reset-form").find("input[name=email]").val(),
            e = $("#reset-form").find("input[name=password]").val(),
            f = $("#reset-form").find("input[name=repassword]").val(),
            $.post("index!resetPwd.sm", {
            	verifyCode: c,
                email: d,
                password: e,
                repassword: f
            },
            function(b) {
                var c = b;
                $("#signup-sppiner").remove(),
                "0" == c.flag ? (a = d, $("#password-reset").text(a), window.location = "#/resetsuccess") : "1" == c.flag ? (a = "", window.location = "#/resetimesup") : (a = "", window.location = "#/login")
            })
        }
    },
    $("#signup-form").validate({
        rules: {
            firstname: {
                required: !0,
                minlength: 1,
                maxlength: 50
            },
            lastname: {
                required: !0,
                minlength: 1,
                maxlength: 50
            },
            email: {
                required: !0,
                email: !0
            },
            password: {
                required: !0,
                minlength: 6
            }
        },
        messages: {
            firstname: {
                required: "请输入你的姓氏",
                minlength: "请输入你的姓氏",
                maxlength: "请将你的姓氏控制在50个字符以内"
            },
            lastname: {
                required: "请输入你的名字",
                minlength: "请输入你的名字",
                maxlength: "请将你的名字控制在50个字符以内"
            },
            email: "请输入你的常用电子邮件地址，此邮件地址将作为你的 SUBMSG 账号",
            password: {
                required: "请创建登录密码",
                minlength: "请创建登录密码，并将此密码的长度控制在6位以上"
            }
        },
        invalidHandler: function() {
            return ! 1
        },
        submitHandler: function() {
            d.signup()
        }
    }),
    $("#change-form").validate({
        rules: {
            email: {
                required: !0,
                email: !0
            },
            password: {
                required: !0
            },
            change: {
                required: !0,
                email: !0
            }
        },
        messages: {
            email: "请输入你的 SUBMSG 账号",
            password: {
                required: "请输入登录密码"
            },
            change: "请输入新的电子邮件地址，成功更改后，此邮件地址将作为你的 SUBMSG 账号"
        },
        invalidHandler: function() {
            return ! 1
        },
        submitHandler: function() {
            d.change()
        }
    }),
    $("#login-form").validate({
        rules: {
            email: {
                required: !0,
                email: !0
            },
            password: {
                required: !0
            }
        },
        messages: {
            email: "请输入你的 SUBMSG 账号",
            password: {
                required: "请输入登录密码"
            }
        },
        invalidHandler: function() {
            return ! 1
        },
        submitHandler: function() {
            d.login()
        }
    }),
    $("#forgot-form").validate({
        rules: {
            email: {
                required: !0,
                email: !0
            }
        },
        messages: {
            email: "请输入你的 SUBMSG 账号"
        },
        invalidHandler: function() {
            return ! 1
        },
        submitHandler: function() {
            d.forgot()
        }
    }),
    $("#reset-form").validate({
        rules: {
            securityCode: {
                required: !0,
                minlength: 1,
                maxlength: 50
            },
            email: {
                required: !0,
                email: !0
            },
            password: {
                required: !0,
                minlength: 6
            },
            repassword: {
                required: !0,
                equalTo: "#password"
            }
        },
        messages: {
            securityCode: {
                required: "请输入安全代码",
                minlength: "请输入安全代码",
                maxlength: "请输入安全代码"
            },
            email: "请输入你的常用电子邮件地址，此邮件地址将作为你的 SUBMSG 账号",
            password: {
                required: "请创建新密码",
                minlength: "请创建新密码，并将此密码的长度控制在6位以上"
            },
            repassword: {
                required: "请再次输入新密码",
                equalTo: "两次输入的密码不一致"
            }
        },
        invalidHandler: function() {
            return ! 1
        },
        submitHandler: function() {
            d.reset()
        }
    }),
    $(".signin .login-para input").live("focus",
    function() {
        $(this).parents(".login-para").css("background-color", "#e2e2e2"),
        $(this).parents(".login-para").find(".login-icon img").css("opacity", "1")
    }),
    $(".signin .login-para input").live("blur",
    function() {
        $(this).parents(".login-para").removeAttr("style"),
        $(this).parents(".login-para").find(".login-icon img").css("opacity", "0.5")
    }),
    $("input[name=resend]").live("click",
    function() {
        d.resend()
    }),
    d.backgroundInit(),
    $(window).resize(function() {
        d.backgroundInit()
    })
});