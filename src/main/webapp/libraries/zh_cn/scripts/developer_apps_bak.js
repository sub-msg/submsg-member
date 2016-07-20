$(function() {
    var a, b, c, d, e, f;
    $.address.change(function(b) {
        a = b.value.split("/");//,
        //d.get()
        c.bind();
        e.getMessageApp();
    }),
    b = function(a, b, c) {
        var h, i, j, d = $(a).width(),
        e = b;
        new Array,
        h = Math.floor(d / (e + c)),
        i = d % (e + c),
        j = e + i / h - c,
        $(a).find(".apps").css("width", 100 * (j / d) + "%")
    },
    c = {
        setup: function() {
            var d, b = ""; 
            d = ' <div class="emptyContainer" style="display:none;"></div>        <div class="animatepanel"><form id="createapps" method="post">            <div class="opeatingpanel">                <div class="warp" style="padding-top:0px;">                    <div class="createTitle">                        <h2>新建应用</h2>                        <hr>                    </div>                                        <div class="sections">                        <div class="title">应用</div>                        <div class="setting">                            <div class="editPanel">                               <div class="name">名称</div> <div class="panel"><input type="text" class="input" name="create_appname" id="appname" value="" placeholder="输入一个名字" /></div>                            </div>                            <p class="clear" style="margin-bottom:15px;"></p><p class="notes">为此应用输入一个名字，此名称仅作为该应用的标注。</p>                            <hr>                            <div class="editPanel">                                应用 ID                                    </div>                            <p class="notes">应用 ID 将在你创建此应用后自动分配。</p>                            <hr>                            <div class="editPanel">                                密匙                            </div>                             <p class="notes">应用密匙将在你创建此应用后自动创建，你可以随时更换密匙。</p>                                                   </div>                    </div>                     <hr>                     <div class="sections">                         <div class="title">配置选项</div>                         <div class="setting" id="app_settings">          ' + b + '                   <div class="editPanel">                                 <div class="name">每日发送配额</div> <div class="panel"><input type="text" class="input" name="create_sendlimt" id="sendlimt" value="0" placeholder="发送配额" style="width:180px;" /></div>                              </div>                             <p class="clear" style="margin-bottom:15px;"><p class="notes">此选项将限制此应用的每日邮件发送数量，“0”为无限制。</p>                             <hr>                             <div class="editPanel">                                 分析与跟踪 <div class="dropdown" style="width:120px;">                                     <select id="create_analyticsEnable" class="dropdown-select">                                         <option value="1" selected>启用</option>                                         <option value="0" >关闭</option>                                     </select>                                 </div>                                     </div>                             <p class="notes">此选项将开启或关闭分析与跟踪功能。</p>                         </div>                         </div>                     <div style="padding-top:20px;">                     <input type="submit" name="createApps" class="createApps" value="创建应用" />                     <a href="javascript:void(0)" title="取消" class="cancel">取消</a>                     </div>                </div>            </div>        </form></div>',
            $("body").append(d),
            "mobiledata" == a[1] && $("#app_settings").html("无"),
            $(".emptyContainer").fadeTo(500, .4),
            $(".opeatingpanel").css("marginTop", document.body.offsetHeight),
            $(".opeatingpanel").show(),
            $(".opeatingpanel").animate({
                marginTop: "-290px"
            },
            300),
            c.init()
        },
        cancel: function() {
            $(".emptyContainer").fadeOut(function() {
                $(".emptyContainer").remove()
            }),
            $(".opeatingpanel").animate({
                marginTop: document.body.offsetHeight
            },
            500,
            function() {
                $(this).hide(),
                $(".animatepanel").remove()
            })
        },
        init: function() {
            $("#createapps").validate({
                rules: {
                    create_appname: {
                        required: !0,
                        minlength: 2,
                        maxlength: 50
                    },
                    create_sendlimt: {
                        required: !0,
                        digits: !0
                    }
                },
                messages: {
                    create_appname: {
                        required: "请为此应用输入一个名字",
                        minlength: "应用名至少需要2个字符。",
                        maxlength: "请将应用名控制50个字符以内。"
                    },
                    create_sendlimt: {
                        required: "请输入一个整数。",
                        digits: "请输入一个整数。"
                    }
                },
                invalidHandler: function() {
                    return ! 1
                },
                submitHandler: function() {
                    c.create()
                }
            })
        },
        create: function() {
            $("input[name=createApps]").attr("disabled", !0),
            $("input[name=createApps]").val("正在创建");
            var b;
            "mail" == a[1] || "" == a[1] || void 0 == a[1] ? b = "mail": "message" == a[1] ? b = "message": "voice" == a[1] ? b = "voice": "mobiledata" == a[1] && (b = "mobiledata"),
            $.post("createApps", {
                app: b,
                name: $("input[name=create_appname]").val(),
                sendlimt: parseInt($("input[name=create_sendlimt]").val()),
                analyticsEnable: $("#create_analyticsEnable").find("option:selected").val(),
                tim: Math.random()
            },
            function(a) {
                var b = $.parseJSON(a);
                "true" == b.returns ? ($("input[name=createApps]").val("正在完成"), c.cancel(), e.get()) : $("body").eventdialog({
                    type: "warning",
                    title: "发生了一个错误！",
                    msg: b.returns,
                    icon: sublibraries + "/images/warning.png",
                    marginLeft: "-295",
                    marginRight: "",
                    marginTop: "-120",
                    marginBottom: "",
                    callback: function() {
                        "session" == b.error ? window.location.reload() : ">10" == b.error && c.cancel()
                    }
                })
            })
        },
        bind: function() {
            $(".noresults").live("click",
            function() {
                c.setup()
            }),
            $(".appOptionsContainer .createApps").live("click",
            function() {
                c.setup()
            }),
            $(".opeatingpanel .cancel").live("click",
            function() {
                c.cancel()
            })
        }
    },
    d = {
        get: function() {
            e.get()
        },
    },
    e = {
        get: function() {
             e.getMessageApp()
        },
        getMessageApp: function() {
            $.get("getAppsList.sm", {
                tim: Math.random()
            },
            function(a) {
            	alert(JSON.stringify(a));
                var c, d, b = a.rc;//$.parseJSON(a);
                m = a.rc;
                "0" == a.flag ? 0 == a.rc.length ? (c = '<a class="noresults" href="javascript:void(0)">                                    <span class="cteateIcon"></span>                                    <span>创建第一个应用</span></a>', $(".appsContainer").html(c)) : (d = "", $.each(b,
                function(m, b) {
                	alert(JSON.stringify(b));
                	alert(JSON.stringify(m));
                    var g, c = ' <span class="vfed"><span class="statusVfed">启用</span></span> ',
                    e = "无限制",
                    f = "禁用";
                    "0" == b.status && (c = ' <span class="unvf"><span class="statusUnvf">禁用</span></span> '),
                    "-1" != b.maxSendNumDaily && (e = b.maxSendNumDaily),
                    "" != b.whiteIp && null != b.whiteIp && (f = b.whiteIp),
                    d += '<li class="apps"><form class="appform">                                        <div class="head">                                            <div class="message apptitle">' + b.projectName + '</div>                                            <div class="status">                                                ' + c + '                                          </div>                                        </div>                                        <div class="appid">                                            <div class="IDtitle ">应用 ID</div>                                            <div class="IDvalue">                                                <input type="text" name="c_appid" value="' + b.id + '" disabled />                                            </div>                                        </div>                                        <div class="appKey">                                            <div class="KeyTitle">密匙</div>                                            <div class="KeyValue">                                                <input type="text" name="c_appkey" value="' + b.projectKey + '" readonly="readonly"  />                                                <a href="javascript:void(0)" class="copyAppKey" title="复制密匙">复制密匙</a>                                            </div>                                        </div>                                        <div class="appConfigs">                                            <ul>                                                <li>                                                    <p class="title">每日发送配额</p>                                                    <p class="status sendlimtContainer">' + e + '</p>                                                </li>                                                <li>                                                    <p class="title">黑名单限制</p>                                                    <p class="status blocklistContainer">禁用</p>                                                </li><li style="clear:both;width:100%;"><hr style="border: none;border-top: 1px solid #ccc;"></li><li style="width:100%;float:none;display:inline-block;"><p class="title" style="width:20%;margin-right:0;">IP白名单 </p><p class="status ipbindContainer" style="word-break: break-all;width: 80%;display: block;">' + g + '</p></li>                                            </ul>                                        </div>                                        <div class="options">                                            <ul>                                                <li class="last"><a href="javascript:void(0)" class="edit" title="编辑">编辑</a></li>                                            </ul></div>                                    ',
                    d += '<input type="hidden" name="appName" value="' + b.projectName + '" /> <input type="hidden" name="appid" value="' + b.id + '" />  <input type="hidden" name="appkey" value="' + b.projectKey + '" /> <input type="hidden" name="enabel" value="' + b.status + '" /><input type="hidden" name="sendlimt" value="' + b.maxSendNumDaily + '" /><input type="hidden" name="analytics" value="" /><input type="hidden" name="whiteIp" value="' + b.whiteIp + '" /></form></li>'
                }), $(".appsContainer").html('<ul class="appsul">' + d + '<p class="clear"></p></ul>'), e.initLyout()) : $("body").eventdialog({
                    type: "warning",
                    title: "发生了一个错误！",
                    msg: b.returns,
                    icon: sublibraries + "/images/warning.png",
                    marginLeft: "-295",
                    marginRight: "",
                    marginTop: "-120",
                    marginBottom: "",
                    callback: function() {
                        "session" == b.error && window.location.reload()
                    }
                })
            })
        },
        initLyout: function() {
            b(".appsContainer", 478, 9),
            footerstatus(),
            $(window).resize(function() {
                b(".appsContainer", 478, 9)
            })
        }
    },
    f = {
        copy: function(a) {
            f.unCopy(),
            setTimeout(function() {
                a.parents(".KeyValue").find("input[name=c_appkey]").css("width", "152px"),
                a.parents(".KeyValue").find("input[name=c_appkey]").select();
                var b = $.client.os;
                "Mac" == b ? a.text("请按下 CMD+C 键进行复制") : "Windows" == b ? a.text("请按下 CTR+C 键进行复制") : a.text("请按下系统复制组合键进行复制")
            },
            100)
        },
        unCopy: function() {
            $(".appsContainer .appsul").find(".apps").each(function() {
                $(this).find(".appKey").find(".KeyValue").find("input[name=c_appkey]").removeAttr("style"),
                $(this).find(".appKey").find(".KeyValue").find(".copyAppKey").text("复制密匙")
            })
        },
        editing: function(b) {
            if (f.unbindedit(), b.parents(".apps").addClass("editing"), b.parents(".apps").find(".appform").attr("id", "editingApps"), b.parents(".apps").find(".head").find(".apptitle").html('<input type="text" name="edit_appName" value="' + b.parents(".apps").find("input[name=appName]").val() + '"/>'), b.parents(".apps").find(".head").find(".status").html('<div class="dropdown" style="width:80px;">                                                        <select id="edit_enabel" class="dropdown-select">                                                            <option value="1">启用</option>                                                            <option value="0">禁用</option>                                                        </select></div>'), $("#edit_enabel").find("option").each(function() {
                $(this).val() == b.parents(".apps").find("input[name=enabel]").val() && $(this).attr("selected", "true")
            }), b.parents(".apps").find(".appKey").find(".KeyValue").find(".copyAppKey").addClass("changeAppKey"), b.parents(".apps").find(".appKey").find(".KeyValue").find(".changeAppKey").removeClass("copyAppKey"), b.parents(".apps").find(".appKey").find(".KeyValue").find(".changeAppKey").text("更改密匙"), b.parents(".apps").find(".appConfigs").find(".sendlimtContainer").html('<input type="text" name="edit_sendlimt" class="sendlimt input" value="' + b.parents(".apps").find("input[name=sendlimt]").val() + '" placeholder="发送配额"/>'), b.parents(".apps").find(".appConfigs").find(".analyticsContainer").html(' <div class="dropdown" style="width:80px;">                                                        <select id="edit_analytics" class="dropdown-select">                                                            <option value="1">启用</option>                                                            <option value="0">禁用</option>                                                        </select></div>'), "mail" == a[1] || "" == a[1] || void 0 == a[1]);
            else if ("message" == a[1]) {
                var c = '<option value="0">禁用</option>';
                addressbooksArray && $.each(addressbooksArray,
                function(a, b) {
                    c += '<option value="' + b.id + '">' + b.name + "</option>"
                }),
                b.parents(".apps").find(".appConfigs").find(".blocklistContainer").html(' <div class="dropdown" style="width:130px;"><select id="edit_blocklist" class="dropdown-select">' + c + "</select></div>"),
                $("#edit_blocklist").find("option").each(function() {
                    $(this).val() == b.parents(".apps").find("input[name=block_list]").val() && $(this).attr("selected", "true")
                })
            }
            b.parents(".apps").find(".appConfigs").find(".channelContainer").html(' <div class="dropdown" style="width:130px;">                                                        <select id="edit_channel" class="dropdown-select">                                                            <option value="0">事务类邮件通道</option>                                                            <option value="1">推广类邮件通道</option>                                                        </select></div>'),
            b.parents(".apps").find(".appConfigs").find(".ipbindContainer").html('<textarea style="width:100%;height:30px;" name="edit_bind">' + b.parents(".apps").find("input[name=bind]").val() + "</textarea>"),
            $("#edit_channel").find("option").each(function() {
                $(this).val() == b.parents(".apps").find("input[name=channel]").val() && $(this).attr("selected", "true")
            }),
            $("#edit_analytics").find("option").each(function() {
                $(this).val() == b.parents(".apps").find("input[name=analytics]").val() && $(this).attr("selected", "true")
            }),
            b.parents(".apps").find(".options ul").html('<li ><a href="javascript:void(0)" class="delete" title="删除">删除</a></li>                                                 <li class="last"><a href="javascript:void(0)" class="cancel" title="取消编辑">返回</a><li class="last" style="margin-right: 0px;"><input type="submit" name="save" class="save" value="" title="保存"/></li></li>'),
            f.initEditing()
        },
        unbindedit: function() {
            $(".appsContainer .appsul").find(".apps").each(function() {
                var b, c, d, e, f, a = $(this).attr("class").replace(/apps/g, "");
                a = a.replace(/\s/g, ""),
                "editing" == a && ($(this).removeClass("editing"), $(this).find(".head").find(".apptitle").html($(this).find("input[name=appName]").val()), b = ' <span class="vfed"><span class="statusVfed">启用</span></span> ', "0" == $(this).find("input[name=enabel]").val() && (b = ' <span class="unvf"><span class="statusUnvf">禁用</span></span> '), $(this).find(".head").find(".status").html(b), $(this).find(".appKey").find(".KeyValue").find(".changeAppKey").addClass("copyAppKey"), $(this).find(".appKey").find(".KeyValue").find(".copyAppKey").removeClass("changeAppKey"), $(this).find(".appKey").find(".KeyValue").find(".copyAppKey").text("复制密匙"), c = "无限制", "0" != $(this).find("input[name=sendlimt]").val() && (c = $(this).find("input[name=sendlimt]").val()), $(this).find(".appConfigs").find(".sendlimtContainer").html(c), d = "启用", "0" == $(this).find("input[name=analytics]").val() && (d = "禁用"), e = "事务类邮件通道", "1" == $(this).find("input[name=channel]").val() && (e = "推广类邮件通道"), f = "禁用", "0" != $(this).find("input[name=block_list]").val() && (f = $(this).find("input[name=block_list_name]").val()), $(this).find(".appConfigs").find(".channelContainer").html(e), $(this).find(".appConfigs").find(".analyticsContainer").html(d), $(this).find(".appConfigs").find(".blocklistContainer").html(f), $(this).find(".appConfigs").find(".ipbindContainer").html($(this).find("input[name=bind]").val()), $(this).find(".options ul").html('<li class="last"><a href="javascript:void(0)" class="edit" title="编辑">编辑</a></li>'), $(this).find(".appform").removeAttr("id"))
            })
        },
        "delete": function(a) {
            var b = a;
            $(this).eventdialog({
                type: "confirm",
                title: "确认要删除此应用吗？",
                msg: "进行此操作后将无法恢复此应用，且你将不能使用此应用发送任何请求。",
                icon: sublibraries + "/zh_cn/images/delete.png",
                marginLeft: "-295",
                marginRight: "",
                marginTop: "-120",
                marginBottom: "",
                callback: function() {
                    f.deleting(b)
                }
            })
        },
        deleting: function(a) {
            $.post("deleteApps", {
                app: d.apps(),
                appid: a.parents(".apps").find("input[name=appid]").val(),
                tim: Math.random()
            },
            function(b) {
                var c = $.parseJSON(b);
            })
        }
    }
})
