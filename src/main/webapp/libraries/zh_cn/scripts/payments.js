$(function() {
    function c(a) {
        a = (a + "").replace(/[^\d\.-]/g, "");
        var b = a.split("").reverse(),
        c = "";
        for (i = 0; i < b.length; i++) c += b[i] + (0 == (i + 1) % 3 && i + 1 != b.length ? ",": "");
        return c.split("").reverse().join("")
    }
    function e() {
        var a = "<p style='text-align:right;margin-bottom:2px;'><a href='javascript:void(0);' class='inv_info_create'>新增发票信息</a></p><div class='pay-operate-line' style='margin-bottom:20px;margin-top:0px;'></div>";
        $.get("/member/getInvoiceList.sm", {
            tim: Math.random()
        },
        function(b) {
            var c = b;//$.parseJSON(b);
//            alert(JSON.stringify(c));F
            b.flag == null && window.location.reload();
            ("0" == c.flag && c.rc.length>0) ? $.each(c.rc,
            function(b, c) {
                a += (1 == c.invoiceType) 
                        ? "<li class=''><div class='col-lg-6 col-xs-12 col-sm-12 col-md-6 inv_addr_col'><div class='inv_addr_infol'><p class='infotag'>发票信息</p><p class='inv_addr_company_only'><span class='inv_addr_title'>发票抬头</span><span class='inv_addr_company'>" + c.invoiceName + "</span></p></div><div style='clear:both;'></div></div><div class='col-lg-6 col-xs-12 col-sm-12 col-md-6 inv_addr_col'><div class='inv_addr_infor'><p class='infotag'>快递信息</p><p><span class='inv_addr_title'>收件人</span><span class='inv_addr_company'>" + c.firstName + c.secondName + "</span><span class='inv_addr_title'>手机号</span><span class='inv_addr_company'>" + c.phone + "</span></p><p><span class='inv_addr_title'>地址</span><span class='inv_addr_signAddr'>" + c.provice + "&nbsp;" + c.city + "&nbsp;" + c.area + "&nbsp;" + c.address + "</span></p></div></div><div style='clear:both;'></div></div><input type='hidden' name='inv_id' value='" + c.id + "'/><div class='inv_addr_select'></div><a href='javascript:void(0);' class='inv_addr_edit'>编辑</a><a href='javascript:void(0);' class='inv_addr_delete'>删除</a><div class='inv_addr_detail'><div><label>增值税普票</label></div></li>"
                		: "<li class=''><div class='col-lg-6 col-xs-12 col-sm-12 col-md-6 inv_addr_col'><div class='inv_addr_infol'><p class='infotag'>发票信息</p> <p><span class='inv_addr_title'>发票抬头</span> <span class='inv_addr_company'>" + c.invoiceName + "</span> </p><p><span class='inv_addr_title' style='width:72px;'>纳税人识别号</span> <span class='inv_addr_signTaxcode'>" + c.taxpayerTag + "</span> </p><p><span class='inv_addr_title'>注册地址</span><span class='inv_addr_signAddr'>" + c.comAddress + "</span></p> <p><span class='inv_addr_title'>电话</span><span class='inv_addr_signMob'>" 
                		+ c.comPhone + "</span> </p><p><span class='inv_addr_title'>开户银行</span> <span class='inv_addr_signBank'>" 
                		+ c.comBankName + "</span> </p> <p><span class='inv_addr_title'>银行账号</span> <span class='inv_addr_signNum'>" 
                		+ c.comBankAccount + "</span> </p></div><div style='clear:both;'></div></div><div class='col-lg-6 col-xs-12 col-sm-12 col-md-6 inv_addr_col'><div class='inv_addr_infor'><p class='infotag'>快递信息</p><p><span class='inv_addr_title'>收件人</span><span class='inv_addr_company'>" 
                		+ c.firstName + c.secondName + "</span><span class='inv_addr_title'>手机号</span><span class='inv_addr_company'>" 
                		+ c.phone + "</span></p><p><span class='inv_addr_title'>地址</span><span class='inv_addr_signAddr'>" 
                		+ c.provice + "&nbsp;" + c.city + "&nbsp;" + c.area + "&nbsp;" + c.address + "</span></p></div></div><div style='clear:both;'></div></div><input type='hidden' name='inv_id' value='" 
                		+ c.id + "'/><div class='inv_addr_select'></div><a href='javascript:void(0);' class='inv_addr_edit'>编辑</a><a href='javascript:void(0);' class='inv_addr_delete'>删除</a><div class='inv_addr_detail'><div><label>增值税专票</label></div></li>"
            }) : a += "<div style='font-size:24px;line-height:120px;text-align:center;color:#ddd;'><a href='javascript:void(0);' class='inv_info_create' style='color:#ddd;'>创建发票信息</a></div>",
            $(".inv_addr_list").show(),
            $(".inv_addr_list").html(a)
        })
    }
    function f(a) {
        var c, d, b = "<div class='inv_addr_emptyContainer' style='opacity:0.4;display:none;'></div><div class='inv_addr_bombBoxContainer' style='display:none;'><h4 style='color:#fc7905;'>编辑发票信息</h4><div class='pay-operate-line' style='margin-top:12px;'></div><p><span class='title'>请选择一个发票种类</span><label class='inv_option inv_option_selected' name='general_invoice'>增值税普通发票</label><label class='inv_option' name='spacial_invoice'>增值税专用发票</label></p><div class='pay-operate-line' style='margin-top:0px;'></div> <form role='form' id='inv-detail-form'><div style='width:100%;padding:15px 0;'><span class='title' style='float:left;'>填写发票信息</span><div style='display:inline-block;' class='inv_special_info'><p class='inv_info_item'><span class='_title'>发票抬头</span><input type='text' class='inv_addr_input' name='inv_info_company' placeholder='公司名称' style='width:510px;'/></p><p class='inv_info_item'><span class='_title'>纳税人识别号</span><input type='text' class='inv_addr_input' name='inv_info_taxcode' placeholder='纳税人识别号' style='width:510px;'/></p><p class='inv_info_item'><span class='_title'>公司地址</span><input type='text' class='inv_addr_input' name='inv_info_address' placeholder='公司地址' style='width:510px;'/></p><p class='inv_info_item'><span class='_title'>公司电话</span><input type='text' class='inv_addr_input' name='inv_info_mob' placeholder='公司电话' style='width:280px;'/></p><p class='inv_info_item'><span class='_title'>开户银行</span><input type='text' class='inv_addr_input' name='inv_info_bank' placeholder='开户银行' style='width:510px;'/></p><p class='inv_info_item'><span class='_title'>开户行账号</span><input type='text' class='inv_addr_input' name='inv_info_banknum' placeholder='开户行账号' style='width:510px;'/></p><p>开具增值税专用发票时请注意：</p><ol><li>请确保您或您的公司具备一般纳税人资质</li><li>请确保您填写的专票信息完全正确，如因发票信息不符合，我们将无法补开专票</li><li>专票订单将无法使用在线支付，您仅能使用银行转账进行付款</li></ol></div><div style='display:inline-block;' class='inv_general_info'><p class='inv_info_item'><span class='_title'>发票抬头</span><input type='text' class='inv_addr_input' name='inv_info_company' placeholder='公司名称' style='width:510px;'/></p></div></div><div class='pay-operate-line' style='margin-top:12px;'></div><div style='width:100%;padding:15px 0;'><span class='title' style='float:left;'>填写快递信息</span><div style='display:inline-block;'><p class='inv_info_item'><span class='_title'>收件人姓氏</span><input type='text' class='inv_addr_input' name='inv_info_post_lastname' placeholder='姓氏' style='width:160px;'/><span class='_title' style='margin-left:30px;'>收件人名字</span><input type='text' class='inv_addr_input' name='inv_info_post_firstname' placeholder='名字' style='width:160px;'/></p><p class='inv_info_item'><span class='_title'>省、市、区/县</span><select id='inv_info_post_province' name='inv_info_post_province' class='form-control' style='width:160px;'></select><select id='inv_info_post_city' name='inv_info_post_city' class='form-control' style='width:160px;'></select><select id='inv_info_post_district' name='inv_info_post_district' class='form-control' style='width:180px;'></select></p><p class='inv_info_item'><span class='_title'>快递地址</span><input type='text' class='inv_addr_input' name='inv_info_post_address' placeholder='详细地址' style='width:510px;'/></p><p class='inv_info_item'><span class='_title'>联系人号码</span><input type='text' class='inv_addr_input' name='inv_info_post_mob' placeholder='收件人手机号' style='width:280px;'/></p></div></div><div class='pay-operate-line' style='margin-top:12px;'></div><div style='width:100%;padding:15px 0;margin-bottom:20px;'><input type='hidden' name='inv_info_create_id' value='0'/><input type='submit' value='保存'' class='btn btn-block btn-primary btn-save'  style='width:160px;'/><input type='button' value='取消'' class='btn btn-block btn-reset'  style='width:160px;'/><div style='clear:both;'></div></div></form></div>";
        $("body").append(b),
        $(".inv_addr_emptyContainer").show(),
        $(".inv_addr_bombBoxContainer").show(),
        $(".inv_addr_bombBoxContainer").addClass("alert_active_style_pop"),
        $(".inv_general_info").show(),
        $(".inv_special_info").hide(),
        $(".inv_option").removeClass("inv_option_selected"),
        $(".inv_option").eq(0).addClass("inv_option_selected"),
        $(".inv_addr_bombBoxContainer").find("input[type=text]").val(""),
        $("#inv_info_post_province").html('<option value="none">省/直辖市/自治区</option>'),
        $.each(arrCity,
        function(a, b) {
            "请选择" != b.name && $("#inv_info_post_province").append('<option value="' + b.name + '">' + b.name + "</option>")
        }),
        c = function() {
            var a = $("#inv_info_post_province").find("option:selected").val();
            $("#inv_info_post_city").html('<option value="none">市/地区</option>'),
            $("#inv_info_post_district").html('<option value="none">区/县</option>'),
            $.each(arrCity,
            function(b, c) {
                c.name == a && $.each(c.sub,
                function(a, b) {
                    "请选择" != b.name && $("#inv_info_post_city").append('<option value="' + b.name + '">' + b.name + "</option>")
                })
            })
        },
        $("#inv_info_post_province").live("change",
        function() {
            c()
        }),
        c(),
        d = function() {
            var a = $("#inv_info_post_province").find("option:selected").val(),
            b = $("#inv_info_post_city").find("option:selected").val();
            $("#inv_info_post_district").html('<option value="none">区/县</option>'),
            $.each(arrCity,
            function(c, d) {
                d.name == a && $.each(d.sub,
                function(a, c) {
                    c.name == b && $.each(c.sub,
                    function(a, b) {
                        "请选择" != b.name && $("#inv_info_post_district").append('<option value="' + b.name + '">' + b.name + "</option>")
                    })
                })
            })
        },
        $("#inv_info_post_city").live("change",
        function() {
            d()
        }),
        c(),
        d(),
        $("#inv-detail-form").validate({
            rules: {
                inv_info_company: {
                    required: !0,
                    minlength: 1,
                    maxlength: 100
                },
                inv_info_post_lastname: {
                    required: !0,
                    minlength: 1,
                    maxlength: 100
                },
                inv_info_post_firstname: {
                    required: !0,
                    minlength: 1,
                    maxlength: 100
                },
                inv_info_post_province: {
                    notEqual: "none"
                },
                inv_info_post_city: {
                    notEqual: "none"
                },
                inv_info_post_district: {
                    notEqual: "none"
                },
                inv_info_post_mob: {
                    isTel: !0,
                    required: !0
                },
                inv_info_post_address: {
                    minlength: 1,
                    maxlength: 100,
                    required: !0
                }
            },
            messages: {
                inv_info_company: {
                    required: "请输入您的发票抬头！<span></span>",
                    maxlength: "您输入的内容过长<span></span>",
                    minlength: "您输入的内容太短<span></span>"
                },
                inv_info_post_lastname: {
                    required: "请输入完整的姓氏、名字！<span></span>",
                    maxlength: "您输入的内容过长<span></span>",
                    minlength: "您输入的内容太短<span></span>"
                },
                inv_info_post_firstname: {
                    required: "请输入完整的姓氏、名字！<span></span>",
                    maxlength: "您输入的内容过长<span></span>",
                    minlength: "您输入的内容太短<span></span>"
                },
                inv_info_post_province: {
                    notEqual: "请选择完整的省、市、地区！<span></span>"
                },
                inv_info_post_city: {
                    notEqual: "请选择完整的省、市、地区！<span></span>"
                },
                inv_info_post_district: {
                    notEqual: "请选择完整的省、市、地区！<span></span>"
                },
                inv_info_post_mob: {
                    isTel: "请填写正确的手机号码！<span></span>",
                    required: "请填写手机号码！<span></span>"
                },
                inv_info_post_address: {
                    maxlength: "您输入的内容过长<span></span>",
                    minlength: "您输入的内容太短<span></span>",
                    required: "请输入您的详细收货地址！<span></span>"
                }
            },
            invalidHandler: function() {
                return ! 1
            },
            submitHandler: function() {
                g()
            }
        }),
        setTimeout(function() {
            "none" != a && $.get("/member/getInvoiceById.sm", {
                id: a,
                tim: Math.random()
            },
            function(a) {
                var b = a;//$.parseJSON(a);
                "0" == b.flag && b.rc!=null && ($("input[name=inv_info_create_id]").val(b.rc.id), $("input[name=inv_info_post_lastname]").val(b.rc.firstName), $("input[name=inv_info_post_firstname]").val(b.rc.secondName), $("input[name=inv_info_post_address]").val(b.rc.address), $("input[name=inv_info_post_mob]").val(b.rc.phone), $("#inv_info_post_province").find("option").removeClass("selected"), $("#inv_info_post_city").find("option").removeClass("selected"), $("#inv_info_post_district").find("option").removeClass("selected"), $("#inv_info_post_province").find("option").each(function() {
                    $(this).val() == b.rc.provice && ($(this).attr("selected", "selected"), $("#inv_info_post_province").change(), $("#inv_info_post_city").find("option").each(function() {
                        $(this).val() == b.rc.city && ($(this).attr("selected", "selected"), $("#inv_info_post_city").change(), $("#inv_info_post_district").find("option").each(function() {
                            $(this).val() == b.rc.area && $(this).attr("selected", "selected")
                        }))
                    }))
                }), $(".inv_option").removeClass("inv_option_selected"), 1 == b.rc.invoiceType ? ($(".inv_general_info").show(), $(".inv_special_info").hide(), $("label[name=general_invoice]").addClass("inv_option_selected"), $(".inv_general_info").find("input[name=inv_info_company]").val(b.rc.invoiceName)) : ($(".inv_general_info").hide(), $(".inv_special_info").show(), $("label[name=spacial_invoice]").addClass("inv_option_selected"), $(".inv_special_info").find("input[name=inv_info_company]").val(b.rc.invoiceName), $(".inv_special_info").find("input[name=inv_info_address]").val(b.rc.comAddress), $(".inv_special_info").find("input[name=inv_info_mob]").val(b.rc.comPhone), $(".inv_special_info").find("input[name=inv_info_bank]").val(b.rc.comBankName), $(".inv_special_info").find("input[name=inv_info_banknum]").val(b.rc.comBankAccount), $(".inv_special_info").find("input[name=inv_info_taxcode]").val(b.rc.taxpayerTag)))
            })
        },
        100)
    }
    function g() {
        var a = {};
        a.id = $("input[name=inv_info_create_id]").val(),
        a.lastname = $("input[name=inv_info_post_lastname]").val(),
        a.firstname = $("input[name=inv_info_post_firstname]").val(),
        a.provice = $("#inv_info_post_province").find("option:selected").val(),
        a.city = $("#inv_info_post_city").find("option:selected").val(),
        a.area = $("#inv_info_post_district").find("option:selected").val(),
        a.address = $("input[name=inv_info_post_address]").val(),
        a.mob = $("input[name=inv_info_post_mob]").val(),
        a.tim = Math.random(),
        $("label[name=general_invoice]").hasClass("inv_option_selected") ? (a.type = 0, a.title = $(".inv_general_info").find("input[name=inv_info_company]").val()) : (a.type = 1, a.title = $(".inv_special_info").find("input[name=inv_info_company]").val(), a.s_address = $(".inv_special_info").find("input[name=inv_info_address]").val(), a.s_mob = $(".inv_special_info").find("input[name=inv_info_mob]").val(), a.s_bank = $(".inv_special_info").find("input[name=inv_info_bank]").val(), a.s_account = $(".inv_special_info").find("input[name=inv_info_banknum]").val(), a.s_taxcode = $(".inv_special_info").find("input[name=inv_info_taxcode]").val()),
        $.post("/member/createInvoice.sm", a,
        function(a) {
            var b = a;//$.parseJSON(a);
            "0" == b.flag && ($(".inv_addr_emptyContainer").remove(), $(".inv_addr_bombBoxContainer").remove(), e())
        })
    }
    function h() {
        $.cookie("shopcartID", null, {
            expires: 365,
            path: "/chs"
        }),
        $.cookie("shopcartID1", null, {
            expires: 365,
            path: "/chs"
        }),
        $.cookie("shopcartID2", null, {
            expires: 365,
            path: "/chs"
        }),
        $.cookie("shopcartID3", null, {
            expires: 365,
            path: "/chs"
        }),
        $.cookie("shopcartCount", null, {
            expires: 365,
            path: "/chs"
        }),
        $.cookie("shopcartCount1", null, {
            expires: 365,
            path: "/chs"
        }),
        $.cookie("shopcartCount2", null, {
            expires: 365,
            path: "/chs"
        }),
        $.cookie("shopcartCount3", null, {
            expires: 365,
            path: "/chs"
        })
    }
    jQuery.validator.addMethod("notEqual",
    function(a, b, c) {
        return this.optional(b) || a != c
    },
    "请选择完整的省、市、地区！<span></span>"),
    jQuery.validator.addMethod("isTel",
    function(a, b) {
        var c = /^1[0-9]{10}$/;
        return this.optional(b) || c.test(a)
    },
    "请填写正确的手机号！<span></span>");

    $(".inv_info_create").live("click",
    function() {
        f("none")
    }),
    $(".btn-reset").live("click",
    function() {
        $(".inv_addr_emptyContainer").hide(),
        $(".inv_addr_bombBoxContainer").removeClass("alert_active_style_pop"),
        $(".inv_addr_bombBoxContainer").hide(),
        $(".inv_addr_emptyContainer").remove(),
        $(".inv_addr_bombBoxContainer").remove()
    }),
    $(".inv_option").live("click",
    function() {
        $(".inv_option").removeClass("inv_option_selected"),
        $(this).addClass("inv_option_selected"),
        "general_invoice" == $(this).attr("name") ? ($(".inv_general_info").show(), $(".inv_special_info").hide()) : ($(".inv_general_info").hide(), $(".inv_special_info").show())
    }),
    $("#noinvoice").live("click",
    function() {
        $(".inv_addr_list").hide(),
        $(".inv_addr_list").html("")
    }),
    $("#hasinvoice").live("click",
    function() {
        e()
    }),
    $("li").live("click",
    function() {
        $(".inv_addr_list").find("li").removeClass("selected"),
        $(this).addClass("selected"),
        $(".inv_addr_select").removeClass("inv_addr_selected"),
        $(this).find(".inv_addr_select").addClass("inv_addr_selected")
    }),
    $(".inv_addr_delete").live("click",
    function() {
        var a = {};
        a.id = $(this).parent("li").find("input[name=inv_id]").val(),
        a.tim = Math.random(),
        $("body").eventdialog({
            type: "confirm",
            title: "确定要删除吗？",
            msg: "删除该信息后将无法恢复",
            icon: sublibraries + "/images/warning.png",
            marginLeft: "-295",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {
                $.post("/member/deleteInvoice.sm", a,
                function(a) {
                    var b = a;//$.parseJSON(a);
                    "0" == b.flag ? e() : alert("发票地址未知错误！")
                })
            }
        })
    }),
    $(".inv_addr_edit").live("click",
    function() {
        var a = $(this).parent("li").find("input[name=inv_id]").val();
        f(a)
    }),
    $(".order_create_continue").live("click",
    function() {
        var c, d, e, f, g, i, j, k, l, m, a = "false",
        b = $('input:radio[name="invoice"]:checked').val();
        0 == b ? a = 0: $(".inv_addr_list").find("li").each(function() {
            $(this).hasClass("selected") && (a = $("li[class=selected]").find("input[name=inv_id]").val())
        }),
        c = $("input[name=productId]").val(),
        "false" != a ? (
        $(this).attr("disabled", "true"),$(this).text("正在创建订单"), $.post("/member/creatOrder.sm", {
        	productId:c,
            invoiceId: a,
            tim: Math.random()
        },
        function(a) {
            var b = a;// $.parseJSON(a);
            "0" == b.flag ? (window.location = "/member/pay.sm?orderId=" + b.rc.orderId) : alert("发生了错误")
       }
        )
        ):$("body").eventdialog({
            type: "warning",
            title: "请选择一个发票信息",
            msg: "请在单击选择一个已有的发票信息，或创建一个新的发票信息",
            icon: sublibraries + "/images/warning.png",
            marginLeft: "-295",
            marginRight: "",
            marginTop: "-120",
            marginBottom: "",
            callback: function() {}
        })
    }),
    $("input[name=coupon_input]").live("keyup",
    function() {
        $("input[name=coupon_id]").val(0),
        $(".coupon_info").html("")
    }),
    $(".coupon-insert").live("click",
    function() {
        var a = $(this).parent(".coupon").find("input[name=coupon_input]").val();
        12 == a.length ? $.get("couponCheck", {
            id: a
        },
        function(a) {
            var b = $.parseJSON(a);
            "true" == b.returns ? ($(".pay_top_right_price").text((parseInt($(".pay_top_right_price").text()) - b.value).toFixed(2)), $("input[name=coupon_id]").val(b.id), $(".coupon_info").html("<p><span class='coupon-right'></span><span class='coupon_code'>" + b.id + "</span><span class='coupon_deadline'>有效期至" + b.datetime + "</span></p>")) : "expired" == b.returns ? $(".coupon_info").html("<p><span class='coupon-error'></span><span>代金券已过期！</span></p>") : $(".coupon_info").html("<p><span class='coupon-error'></span><span>无效的代金券！</span></p>")
        }) : $(".coupon_info").html("<p><span class='coupon-error'></span><span>请输入您的代金券</span></p>")
    }),
    $(".section-title-edit").live("click",
    function() {
        $(this).parents(".row").find(".section-operate").height(),
        $(".section-title-edit").each(function() {
            $(this).parents(".row").find(".section-title-edit").hasClass("section-edit-done") && ($(this).parents(".row").find(".pay-field").slideDown(), $(this).parents(".row").find(".section-title-edit").show())
        }),
        $(".section-title").removeClass("section-title-selected"),
        $(this).parents(".row").find(".section-title").addClass("section-title-selected"),
        $(this).parents(".row").find(".section-title-edit").hide(),
        $(this).parents(".row").find(".pay-field").slideUp(),
        $(".section-operate").slideUp(),
        $(this).parents(".row").find(".section-operate").slideDown()
    }),
    $(".pay-agreement").live("click",
    function() {
        $(".pay-agreement").is(":checked") ? $(this).parents(".section-operate").find(".pay-next").removeAttr("disabled") : $(this).parents(".section-operate").find(".pay-next").attr("disabled", "true")
    }),
    $("input.form-control").live("focus",
    function() {
        $(this).removeClass("error")
    })
});