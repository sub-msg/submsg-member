$(function() {
    var a = {
        sub: function(b, c) {
            a.init();
            var d = '<form name="alipayments" id="hiddenForm" action="/pay/alipayReq.sm" method="post" target="_blank"><input type="hidden" name="orderNumber" value="' + b + '"/><input type="hidden" name="payBank" value="' + c + '"/><input type="submit" style="display:none" /></form>';
            $("body").append(d),
            $("#hiddenForm").submit(),
            $("#hiddenForm").remove()
        },
        init: function() {
            var a = '<div class="emptyContainer" ></div><div class="payments_confirm_container" ><div class="warp"><div class="col-xs-12"><h2>付款遇到问题?</h2><hr /><p>支付完成前请不要关闭此窗口,请在新开页面完成付款后再选择。</p><p>要重新选择支付方式，点击下方重新选择按钮。</p><div class="row"><div class="col-sm-5 col-md-5 col-lg-5 col-xs-12"><a href="javascript:void(0)"  class="btn  btn-lg btn-block btn-success" id="complete">已完成支付</a></div><div class="col-sm-5 col-sm-offset-2  col-md-5 col-md-offset-2 col-lg-5 col-lg-offset-2 col-xs-12"><a href="javascript:void(0)" class="btn  btn-lg btn-block btn-primary" id="repay">重新选择</a></div></div></div></div></div>';
            $("body").append(a),
            $(".emptyContainer").fadeTo(500, .4),
            $(".payments_confirm_container").addClass("alert_active_style_pop")
        },
        uninit: function() {
            $(".emptyContainer").remove(),
            $(".payments_confirm_container").remove()
        }
    };
    $("#repay").live("click",
    function() {
        a.uninit()
    }),
    $("#complete").live("click",
    function() {
        window.location.reload()
    }),
    $("#alipayment").validate({
        rules: {
            payBank: {
                required: !0
            },
            orderNumber: {
                required: !0
            }
        },
        messages: {
            payBank: {
                required: "请选择一个支付方式<span></span>"
            },
            orderNumber: {
                required: "你的订单似乎不正确<span></span>"
            }
        },
        invalidHandler: function() {
            return ! 1
        },
        submitHandler: function() {
            a.sub($("input[name=orderNumber]").val(), $("input[name=payBank]:checked").val())
        }
    })
});