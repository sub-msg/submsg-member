$(function() {
    function a() {
        var a = window.location.href;
        a.indexOf("/message") > 0 && $(".help a").addClass("help_sms"),
        a.indexOf("/mail") > 0 && $(".help a").addClass("help_mail"),
        a.indexOf("/mobiledata") > 0 && $(".help a").addClass("help_data"),
        a.indexOf("/iot") > 0 && $(".help a").addClass("help_iot"),
        a.indexOf("/voice") > 0 && $(".help a").addClass("help_voice"),
        a.indexOf("/addressbook") > 0 && $(".help a").addClass("help_address"),
        a.indexOf("/account") > 0 && $(".help a").addClass("help_account"),
        a.indexOf("/developer") > 0 && $(".help a").addClass("help_developer"),
        a.indexOf("/feedback") > 0 && $(".help a").addClass("help_account")
    }
    function c(a) {
        $(".qprojects li").eq(0).append('<div class="div_alert_tips div_alert_tips1"><div class="sanjiao1"></div><div class="creat_tip1">' + a + "</div></div>"),
        $(".addTips").append('<div class="div_alert_tips div_alert_tips3"><div class="sanjiao3-1"></div><div class="sanjiao3-2"></div><div class="creat_tip3-1">查看发送历史</div><div class="creat_tip3-2">查看发送日志</div></div>')
    }
    function d() {
        $(".createMessageContainer").append('<div class="div_alert_tips div_alert_tips6"><div class="sanjiao6"></div><div class="creat_tip6">键入短信模板</div></div><div class="div_alert_tips7"><div class="sanjiao7"></div><div class="creat_tip7">选择签名</div></div>')
    }
    function e() {
        $(".footer").append('<div class="div_alert_tips div_alert_tips5"><div class="sanjiao5"></div><div class="creat_tip5">在线工单支持</div></div>')
    }
    function f() {
        $(".header").append('<div class="div_alert_tips div_alert_tips4"><div class="sanjiao4"></div><div class="creat_tip4">产品菜单</div></div>')
    }
    function g() {
        $(".body_container").append('<div class="div_alert_tips div_alert_tips8"><div class="sanjiao8"></div><div class="creat_tip8">所有项目列表</div> </div>')
    }
    function h(a, b) {
        $(".mailBody").append('<div class="div_alert_tips div_alert_tips9"><div class="sanjiao9"></div><div class="creat_tip9">' + a + "</div>" + "</div>"),
        $(".messageBody").append('<div class="div_alert_tips div_alert_tips9"><div class="sanjiao9"></div><div class="creat_tip9">' + b + "</div>" + "</div>")
    }
    function i(a) {
        $(".content_container").append('<div class="div_alert_tips div_alert_tips10"><div class="sanjiao10"></div><div class="creat_tip10">' + a + "</div>" + "</div>" + '<div class="div_alert_tips div_alert_tips11">' + '<div class="sanjiao11"></div>' + '<div class="creat_tip11">添加联系人列表</div> ' + "</div>")
    }
    function j() {
        $(".overview_section_mail").append(' <div class="div_alert_tips div_alert_tips12"><div class="sanjiao12-1"></div><div class="sanjiao12-2"></div><div class="creat_tip12-1">查看邮件应用</div><div class="creat_tip12-2">查看邮件分析报告</div></div>'),
        $(".overview_section_message").append('<div class="div_alert_tips div_alert_tips13"><div class="sanjiao13-1"></div><div class="sanjiao13-2"></div><div class="creat_tip13-1">查看短信应用</div><div class="creat_tip13-2">查看短信分析报告</div></div>')
    }
    function k() {
        $(".container").append('<div class="div_alert_tips div_alert_tips14"><div class="sanjiao14"></div><div class="creat_tip14">所有已创建应用</div></div>'),
        $(".appOptionsContainer").append('<div class="div_alert_tips div_alert_tips15"><div class="sanjiao15"></div><div class="creat_tip15">新建应用</div></div>')
    }
    function l() {
        $(".header").append('<div class="helpTips"><div class="jiantou_help"></div><div class="help_content"><ul><li><a href="javaScript:;" target="_blank" class="hideTips">隐藏帮助提示</a></li><li><a href="/chs/documents/help/qEpAC" target="_blank">短信帮助文档</a></li><li><a href="/chs/documents/developer/t2f1J2" target="_blank">短信API xsend开发文档</a></li><li><a href="/chs/documents/developer/vNvBE" target="_blank">短信API multixsend开发文档</a></li><li><a href="/chs/documents/developer/3EX903" target="_blank">短信日志API开发文档</a></li><li><a href="/chs/documents/developer/BSx2b3" target="_blank">SDK开发包下载</a></li></ul>  </div>  </div>')
    }
    function m() {
        $(".header").append('<div class="helpTips"><div class="jiantou_help"></div><div class="help_content"><ul><li><a href="javaScript:;" target="_blank" class="hideTips">隐藏帮助提示</a></li><li><a href="/chs/documents/help/saaOR3" target="_blank">邮件帮助文档</a></li><li><a href="/chs/documents/developer/yR0Ov" target="_blank">邮件API send开发文档</a></li><li><a href="/chs/documents/developer/nX6U81" target="_blank">邮件API xsend开发文档</a></li><li><a href="/chs/documents/developer/fsBPJ2" target="_blank">邮件SMTP API开发文档</a></li><li><a href="/chs/documents/developer/BSx2b3" target="_blank">SDK开发包下载</a></li></ul></div></div>')
    }
    function n() {
        $(".header").append('<div class="helpTips"><div class="jiantou_help"></div><div class="help_content"><ul><li><a href="javaScript:;" target="_blank" class="hideTips">隐藏帮助提示</a></li><li><a href="/chs/documents/help/qEpAC" target="_blank">地址簿帮助文档</a></li><li><a href="/chs/documents/developer/tuioB1" target="_blank">地址簿API开发文档</a></li><li><a href="/chs/documents/developer/BSx2b3" target="_blank">SDK开发包下载</a></li></ul></div></div>')
    }
    function o() {
        $(".header").append('<div class="helpTips"><div class="jiantou_help"></div><div class="help_content"><ul><li><a href="javaScript:;" target="_blank" class="hideTips">隐藏帮助提示</a></li><li><a href="/chs/documents/help/N6Mh24" target="_blank">应用集成帮助文档</a></li><li><a href="/chs/documents/developer/BSx2b3" target="_blank">SDK开发包下载</a></li></ul></div></div>')
    }
    function p() {
        $(".header").append('<div class="helpTips"><div class="jiantou_help"></div><div class="help_content"><ul><li><a href="javaScript:;" target="_blank" class="hideTips">隐藏帮助提示</a></li><li><a href="javaScript:;" target="_blank">手机流量帮助文档</a></li><li><a href="/chs/documents/developer/3jTAm" target="_blank">手机流量API开发文档</a></li><li><a href="/chs/documents/developer/BSx2b3" target="_blank">SDK开发包下载</a></li></ul></div></div>')
    }
    function q() {
        $(".header").append('<div class="helpTips"><div class="jiantou_help"></div><div class="help_content"><ul><li><a href="javaScript:;" target="_blank" class="hideTips">隐藏帮助提示</a></li><li><a href="javaScript:;" target="_blank">语音帮助文档</a></li><li><a href="/chs/documents/developer/6Usv42" target="_blank">语音验证码API开发文档</a></li><li><a href="/chs/documents/developer/BSx2b3" target="_blank">SDK开发包下载</a></li></ul></div></div>')
    }
    function r() {
        $(".header").append('<div class="helpTips"><div class="jiantou_help"></div><div class="help_content"><ul><li><a href="javaScript:;" target="_blank" class="hideTips">隐藏帮助提示</a></li><li><a href="javaScript:;" target="_blank">账户帮助文档</a></li><li><a href="/chs/documents/developer/BSx2b3" target="_blank">SDK开发包下载</a></li></ul></div></div>')
    }
    a();
    var b = $(".help a").css("background");
    $(".hideTips").live("click",
    function() {
        $(".helpTips").remove(),
        $(".div_alert_tips").remove(),
        $(".help a").css("background", b),
        $(".help a:active").css("background", "url(http://libraries.submail.me/images/tips/help_selected.svg)")
    }),
    $(".help").on("click",
    function() {
        var a, s;
        $(".header").find(".helpTips").length > 0 ? ($(".helpTips").remove(), $(".div_alert_tips").remove(), $(".help a").css("background", b), $(".help a:active").css("background", "url(http://libraries.submail.me/images/tips/help_selected.svg)")) : ($(".help a").css("background", "url(http://libraries.submail.me/images/tips/help_selected.svg)"), a = window.location.href, s = a.split("/chs/")[1], e(), f(), "message" == s ? c("创建新短信") : "message/create" == s ? d() : "message/project" == s ? g() : "mail" == s ? c("创建新邮件") : "mail/project" == s ? g() : "addressbook" == s ? h("所有邮件地址簿列表", "所有短信地址簿列表") : "addressbook/create?r=mail" == s ? i("新建邮件地址簿名") : "addressbook/create?r=message" == s ? i("新建短信地址簿名") : "developer" == s ? j() : a.indexOf("/chs/developer/apps#/") > 0 && k(), a.indexOf("/chs/message") > 0 ? l() : a.indexOf("/chs/mail") > 0 ? m() : a.indexOf("/chs/addressbook") > 0 ? n() : a.indexOf("/chs/developer") > 0 ? o() : a.indexOf("/chs/mobiledata") > 0 ? p() : a.indexOf("/chs/voice") > 0 ? q() : (a.indexOf("/chs/account") > 0 || a.indexOf("/chs/feedback") > 0) && r(), "account/welcome" == s && ($(".helpTips").css("top", "55px"), $(".div_alert_tips4").css("top", "55px"), $(".div_alert_tips4").css("left", "-75px")))
    })
});