$(function() {
    var a, b;
    $(".reloadverifycode").live("click",
    function() {
        $(this).find("img").attr("src", "/sms/codeImg.sm?" + Math.random())
    }),
    $(".send_btn").live("click",
    function() {
        $(this).attr("disabled", "disabled"),
        $(this).text("正在发送");
        var c = {
            mob: $("input[name=test_mobile]").val().replace(/ /g, ""),
            code: $("input[name=test_code]").val()
        };
        b.test(c.mob) ? 11 == c.mob.length ? $.post("/sendTest.sm", c,
        function(b) {
            var c = b;//$.parseJSON(b);
            "0" == c.flag ? "success" == c.msg ? (alert("发送成功，请注意查收"), a("重新发送", $(".send_btn"), 30), $(".reloadverifycode").find("img").attr("src", "/sms/codeImg?" + Math.random())) : (alert("手机号或IP测试次数已达上限！"), $(".send_btn").removeAttr("disabled"), $(this).text("发送体验短信"), $(".reloadverifycode").find("img").attr("src", "/sms/codeImg?" + Math.random())) : (alert("验证码错误，请重新输入"), $(".send_btn").removeAttr("disabled"), $(this).text("发送体验短信"), $(".reloadverifycode").find("img").attr("src", "/sms/codeImg?" + Math.random()))
        }) : (alert("手机号码不正确！"), $(".send_btn").removeAttr("disabled"), $(this).text("发送体验短信")) : (alert("请填写您的手机号码！"), $(".send_btn").removeAttr("disabled"), $(this).text("发送体验短信"))
    }),
    a = function(b, c, d) {
        setTimeout(function() {
            d > 0 ? (d -= 1, c.text(b + "（" + d + "）"), a(b, c, d)) : (c.text(b), c.removeAttr("disabled"))
        },
        1e3)
    },
    b = /^1[0-9]{10}/
});