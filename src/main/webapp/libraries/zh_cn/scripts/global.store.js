$(function(){function d(a){a=(a+"").replace(/[^\d\.-]/g,"");var b=a.split("").reverse(),c="";for(i=0;i<b.length;i++)c+=b[i]+(0==(i+1)%3&&i+1!=b.length?",":"");return c.split("").reverse().join("")}var a,b,c,e,f;$.address.change(function(c){a=c.value.split("/"),b()}),$(".store-nav").addClass("active"),$(".mail-buycount").live("keyup",function(){var a,b;$(".mail-buycount-shopcart").removeAttr("disabled"),this.value=this.value.replace(/\D/g,""),$(".mail-buycount-totalprice").hide(),a=parseInt($(this).val()),0!=a%1e3&&(a=a-a%1e3+1e3),$(".pricing-li").removeClass("selected"),1e5>a&&a>0&&($(".mail-buycount-totalprice").show(),$(".mail-buycount-totalprice").find("span").html('价格：<span style="color:#ff9900;font-weight:bold">￥ 380</span><span style="color:#666">（发送量购买不能低于10万）</span>'),$(".mail-pricing-li-fir").addClass("selected")),a>=1e5&&5e5>a&&($(".mail-buycount-totalprice").show(),b=3.8*(a/1e3),0!=b%.1&&(b=b-b%.1+.1),b=b.toFixed(2),$(".mail-buycount-totalprice").find("span").html('价格：<span style="color:#ff9900;font-weight:bold">￥ '+b+'</span><span style="color:#666">（小于50万发送量）</span>'),$(".mail-pricing-li-fir").addClass("selected")),a>=5e5&&2e6>a&&($(".mail-buycount-totalprice").show(),b=3.5*(a/1e3),0!=b%.1&&(b=b-b%.1+.1),b=b.toFixed(2),$(".mail-buycount-totalprice").find("span").html('价格：<span style="color:#ff9900;font-weight:bold">￥ '+b+'</span><span style="color:#666">（50万至200万发送量）</span>'),$(".mail-pricing-li-sec").addClass("selected")),a>=2e6&&1e7>a&&($(".mail-buycount-totalprice").show(),b=2.5*(a/1e3),0!=b%.1&&(b=b-b%.1+.1),b=b.toFixed(2),$(".mail-buycount-totalprice").find("span").html('价格：<span style="color:#ff9900;font-weight:bold">￥ '+b+'</span><span style="color:#666">（200万至1000万发送量）</span>'),$(".mail-pricing-li-thi").addClass("selected")),a>=1e7&&($(".mail-buycount-totalprice").show(),b=1.8*(a/1e3),0!=b%.1&&(b=b-b%.1+.1),b=b.toFixed(2),$(".mail-buycount-totalprice").find("span").html('价格：<span style="color:#ff9900;font-weight:bold">￥ '+b+'</span><span style="color:#666">（大于1000万发送量）</span>'),$(".mail-pricing-li-fou").addClass("selected")),a>9999999999999&&$(".mail-buycount-shopcart").attr("disabled","true")}),$("input[name=iot-money-input]").live("keyup",function(){var a;this.value=this.value.replace(/\D/g,""),""!=this.value?(a=parseInt($(this).val())<500?500:parseInt($(this).val()),a=d(a)+".00",$(".store-iot-moneystore").text(a)):$(".store-iot-moneystore").text("0.00")}),$(".mail-buycount-shopcart").live("click",function(){var b,a=parseInt($(".mail-buycount").val());1e5>a&&(a=1e5),0!=a%1e3&&(a=a-a%1e3+1e3),b="B9fW8",null==$.cookie("shopcartID2")||"null"==$.cookie("shopcartID2")?($.cookie("shopcartID2",b,{expires:365,path:"/chs"}),$.cookie("shopcartCount2",a,{expires:365,path:"/chs"})):($.cookie("shopcartID2",$.cookie("shopcartID2")+","+b,{expires:365,path:"/chs"}),$.cookie("shopcartCount2",$.cookie("shopcartCount2")+","+a,{expires:365,path:"/chs"})),window.location.href="/chs/store/shopcart"}),b=function(){switch(a[1]){case"all":$(".d-sas-section").removeClass("d-sas-selected"),$("a[title=all]").addClass("d-sas-selected"),$("#d-sas-mail").show(),$("#d-sas-message").show(),$("#d-sas-mobiledata").show();break;case"mail":$(".d-sas-section").removeClass("d-sas-selected"),$("a[title=mail]").addClass("d-sas-selected"),$("#d-sas-mail").show(),$("#d-sas-mobiledata").hide(),$("#d-sas-message").hide();break;case"message":$(".d-sas-section").removeClass("d-sas-selected"),$("a[title=message]").addClass("d-sas-selected"),$("#d-sas-mail").hide(),$("#d-sas-mobiledata").hide(),$("#d-sas-message").show();break;case"mobiledata":$(".d-sas-section").removeClass("d-sas-selected"),$("a[title=mobiledata]").addClass("d-sas-selected"),$("#d-sas-mail").hide(),$("#d-sas-message").hide(),$("#d-sas-mobiledata").show()}},c=function(){$.get("/index!mallProducts.sm",function(a){var c,e,f,b=$.parseJSON(a);"true"==b.returns&&(c="",e="",f=new Array,$.each(b.presents,function(a,g){"0"==g.tn&&("0"==g.type&&(c+="<div class='col-xs-6 col-sm-4 col-md-3 col-lg-3 d-sas-part'>  <div class='d-sas-bgc'>  <img src='"+libraries+g.icon+"'> </div> <div class='d-sas-inline'></div> <div class='d-sas-ptcolor'> <p class='d-sas-present-title'>"+d(g.credit)+"</p>   <p>"+g.credit/1e4+"万 邮件发送许可</p>  </div>  <div class='d-sas-inline'></div>  <div class='d-sas-pp'> <p>￥<span class='d-sas-ppcolor'>"+parseInt(g.price)+"</span></p></div> <div class='d-sas-inline'></div> <div class='d-sas-price-pers'><p>单价 ￥"+g.unit_price+"/千</p> </div> <div class='d-sas-underline'></div><div class='d-sas-buycount'><div class='d-sas-buyinput'><div class='col-xs-12 col-sm-4 col-md-4 col-lg-4 d-sas-pdd d-sas-right'>数量</div><div class='col-xs-12 col-sm-8 col-md-8 col-lg-8 d-sas-pdd d-sas-left'><div style='display:inline-block'><input type='text' value='1' name='d-sas-input' class='d-sas-input' readonly='readonly'/><div class='d-sas-dpam'><a href='javascript:void(0)' class='d-sas-pam' id='d-sas-plus'>+</a><a href='javascript:void(0)' class='d-sas-pam' id='d-sas-minus'>-</a></div></div></div></div><div class=''><a href='javascript:void(0);' class='d-sas-buybutton' id='d-sas-buybutton' name='"+g.id+"'><img src='/libraries/images/store-buyicon.png' class='d-sas-buyicon' alt='submsg'>加入购物车</a></div></div></div>"),"1"==g.type&&(0!=b.sms_price-0&&g.credit*b.sms_price<g.price&&(g.unit_price=b.sms_price,g.price=b.sms_price*g.credit),e+="<div class='col-xs-6 col-sm-4 col-md-3 col-lg-2 d-sas-part'>  <div class='d-sas-bgc'>  <img src='"+libraries+g.icon+"'> </div> <div class='d-sas-inline'></div> <div class='d-sas-ptcolor'> <p class='d-sas-present-title'>"+d(g.credit)+"</p>   <p>"+g.credit/1e4+"万 短信发送许可</p>  </div>  <div class='d-sas-inline'></div>  <div class='d-sas-pp'> <p>￥<span class='d-sas-ppcolor'>"+parseInt(g.price)+"</span></p></div> <div class='d-sas-inline'></div> <div class='d-sas-price-pers'><p>单价 ￥"+g.unit_price+"</p> </div> <div class='d-sas-underline'></div><div class='d-sas-buycount'><div class='d-sas-buyinput'><div class='col-xs-12 col-sm-4 col-md-4 col-lg-4 d-sas-pdd d-sas-right'>数量</div><div class='col-xs-12 col-sm-8 col-md-8 col-lg-8 d-sas-pdd d-sas-left'><div style='display:inline-block'><input type='text' value='1' name='d-sas-input' class='d-sas-input' readonly='readonly'/><div class='d-sas-dpam'><a href='javascript:void(0)' class='d-sas-pam' id='d-sas-plus'>+</a><a href='javascript:void(0)' class='d-sas-pam' id='d-sas-minus'>-</a></div></div></div></div><div class=''><a  href='javascript:void(0);' class='d-sas-buybutton' id='d-sas-buybutton' name='"+g.id+"'><img src='/libraries/images/store-buyicon.png' class='d-sas-buyicon' alt='submail'>加入购物车</a></div></div></div>")),"1"==g.tn&&f.push(g)}),$.each(f,function(a,b){"0"==b.type&&(c+="<div class='col-xs-6 col-sm-4 col-md-3 col-lg-2 d-sas-part d-sas-bgpart'><div class='d-sas-bgc'><img src='/libraries/images/store-icon06.png' class='d-sas-icon'></div><div class='d-sas-inline'></div> <div class='d-sas-ptcolor d-sas-ptcolor1'><p class='d-sas-present-title'>10,000,000+</p><p>1000万+ 邮件发送许可</p> </div><div class='d-sas-inline'></div><div class='d-sas-handinput'> <p>请输入购买数量</p> <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'> <input type='text' id='buy-account-input' class='buy-account-input' value='10,000,000' maxlength='11'/> </div><div class='buy-account-int'> <p id='price-show'>请填写购买数量，填写数量须大于1000万，并且是1000的倍数</p></div></div><div class='d-sas-inline'></div><div><p>单价 ￥<span id='unit-price' name='"+b.unit_price+"'>"+b.unit_price+"</span>/千</p></div> <div class='d-sas-underline d-sas-underline1'></div><div class='d-sas-buycount'><div class=''> <a href='javascript:void(0);' class='d-sas-buybutton d-sas-buybutton1' id='d-sas-buybutton1' name='"+b.id+"'><img src='/libraries/images/store-buyicon.png' class='d-sas-buyicon' alt='submail'>加入购物车</a></div></div></div>"),"1"==b.type&&(e+="<div class='col-xs-6 col-sm-4 col-md-3 col-lg-2 d-sas-part d-sas-bgpart'><div class='d-sas-bgc' style='width:100px;height:100px;background:#eee;border-radius:50px;margin:50px auto 0;position:relative;''><img src='/libraries/images/store-icon06.png' class='d-sas-icon'></div><div class='d-sas-inline'></div> <div class='d-sas-ptcolor d-sas-ptcolor1'><p class='d-sas-present-title'><a href='/chs/documents/info/pOjYF4' style='color:#fff;'>大客户服务</a></p><p >我们为每月发送量超过50万条短信的用户，提供大客户服务</p><p style='text-align:left;'>服务包含：</p><p><ol style='margin:0;padding:0;text-align:left;list-style:none;'><li>独立的短信端口号</li><li>固定签名报备服务</li><li>开通营销类短信</li><li>更宽松的短信模板审核政策</li><li>7x24 故障排除服务</li><li>一对一大客户服务经理</li></ol></p></div><div class='d-sas-inline'></div><p><a href='/chs/documents/info/pOjYF4' style='color:#fff;'>联系我们</a></p><div class='d-sas-handinput' style='height:70px;'></div></div><div></div> <div class='d-sas-underline d-sas-underline1'></div><div class='d-sas-buycount'><div class=''></div></div></div>")})),$("#mail_presents").html(c),$("#message_presents").html(e),$("#con").val("hello")})},$(".store-iot-buybtn").live("click",function(){var c,a=$("input[name=iot-money-input]").val(),b=parseInt(a);b>1e7?alert("单次购买量不能超过1000万"):(500>b&&(b=500),c="sPrDH9",null==$.cookie("shopcartID3")||"null"==$.cookie("shopcartID3")?($.cookie("shopcartID3",c,{expires:365,path:"/chs"}),$.cookie("shopcartCount3",b,{expires:365,path:"/chs"})):($.cookie("shopcartID3",$.cookie("shopcartID3")+","+c,{expires:365,path:"/chs"}),$.cookie("shopcartCount3",$.cookie("shopcartCount3")+","+b,{expires:365,path:"/chs"})),window.location.href="/chs/store/shopcart")}),$("#d-sas-buybutton1").live("click",function(){var c,a=parseInt($(this).parents(".d-sas-bgpart").find("#buy-account-input").val().replace(/,/g,"")),b=$(this).attr("name");a>=parseInt($(this).parents(".d-sas-bgpart").find(".d-sas-present-title").text().replace(/,/g,"").replace("+",""))&&(null==$.cookie("shopcartID1")||"null"==$.cookie("shopcartID1")?($.cookie("shopcartID1",b,{expires:365,path:"/chs"}),$.cookie("shopcartCount1",a,{expires:365,path:"/chs"})):(c="false",$.cookie("shopcartID1").indexOf(",")>0?($.each($.cookie("shopcartID1").split(","),function(a,d){d==b&&(c=a)}),"false"==c?($.cookie("shopcartID1",$.cookie("shopcartID1")+","+b,{expires:365,path:"/chs"}),$.cookie("shopcartCount1",$.cookie("shopcartCount1")+","+a,{expires:365,path:"/chs"})):($.each($.cookie("shopcartCount1").split(","),function(b,d){b==c&&(d=a),cookieCount1+=d+","}),cookieCount1=cookieCount1.substr(0,cookieCount1.length-1),$.cookie("shopcartCount1",cookieCount1,{expires:365,path:"/chs"}))):b==$.cookie("shopcartID1")?$.cookie("shopcartCount1",a,{expires:365,path:"/chs"}):($.cookie("shopcartID1",$.cookie("shopcartID1")+","+b,{expires:365,path:"/chs"}),$.cookie("shopcartCount1",$.cookie("shopcartCount1")+","+a,{expires:365,path:"/chs"}))),window.location.href="/chs/store/shopcart")}),$("#d-sas-buybutton").live("click",function(){var c,d,a=parseInt($(this).parents(".d-sas-buycount").find("input[name=d-sas-input]").val()),b=$(this).attr("name");null==$.cookie("shopcartID")||"null"==$.cookie("shopcartID")?($.cookie("shopcartID",b,{expires:365,path:"/chs"}),$.cookie("shopcartCount",a,{expires:365,path:"/chs"})):(c="false",$.cookie("shopcartID").indexOf(",")>0?($.each($.cookie("shopcartID").split(","),function(a,d){d==b&&(c=a)}),"false"==c?($.cookie("shopcartID",$.cookie("shopcartID")+","+b,{expires:365,path:"/chs"}),$.cookie("shopcartCount",$.cookie("shopcartCount")+","+a,{expires:365,path:"/chs"})):(d=0,$.each($.cookie("shopcartCount").split(","),function(b,e){b==c&&(e=parseInt(e)+a),d+=e+","}),d=d.substr(0,d.length-1),$.cookie("shopcartCount",d,{expires:365,path:"/chs"}))):b==$.cookie("shopcartID")?$.cookie("shopcartCount",parseInt($.cookie("shopcartCount"))+a,{expires:365,path:"/chs"}):($.cookie("shopcartID",$.cookie("shopcartID")+","+b,{expires:365,path:"/chs"}),$.cookie("shopcartCount",$.cookie("shopcartCount")+","+a,{expires:365,path:"/chs"}))),window.location.href="/chs/store/shopcart"}),c(),"null"!=$.cookie("shopcartID")&&null!=$.cookie("shopcartID")||"null"!=$.cookie("shopcartID1")&&null!=$.cookie("shopcartID1")?(e=0,f=0,"null"!=$.cookie("shopcartID")&&null!=$.cookie("shopcartID")&&(e+=$.cookie("shopcartID").split(",").length,f+=$.cookie("shopcartCount").split(",").length),"null"!=$.cookie("shopcartID1")&&null!=$.cookie("shopcartID1")&&(e+=$.cookie("shopcartID1").split(",").length,f+=$.cookie("shopcartCount1").split(",").length),"null"!=$.cookie("shopcartID2")&&null!=$.cookie("shopcartID2")&&"null"!=$.cookie("shopcartCount2")&&null!=$.cookie("shopcartCount2")&&(e+=$.cookie("shopcartID2").split(",").length,f+=$.cookie("shopcartCount2").split(",").length),"null"!=$.cookie("shopcartID3")&&null!=$.cookie("shopcartID3")&&"null"!=$.cookie("shopcartCount3")&&null!=$.cookie("shopcartCount3")&&(e+=$.cookie("shopcartID3").split(",").length,f+=$.cookie("shopcartCount3").split(",").length),e==f?($(".d-sas-count").show(),$(".d-sas-count").text(e)):($.cookie("shopcartID",null,{expires:365,path:"/chs"}),$.cookie("shopcartID1",null,{expires:365,path:"/chs"}),$.cookie("shopcartCount",null,{expires:365,path:"/chs"}),$.cookie("shopcartCount1",null,{expires:365,path:"/chs"}))):$(".d-sas-count").hide(),$("#d-sas-plus").live("click",function(){var a=parseInt($(this).parents(".d-sas-buyinput").find("input[name=d-sas-input]").val())+1;$(this).parents(".d-sas-buyinput").find("input[name=d-sas-input]").val(a)}),$("#d-sas-minus").live("click",function(){if(parseInt($(this).parents(".d-sas-buyinput").find("input[name=d-sas-input]").val())>1){var a=parseInt($(this).parents(".d-sas-buyinput").find("input[name=d-sas-input]").val())-1;$(this).parents(".d-sas-buyinput").find("input[name=d-sas-input]").val(a)}}),$("#buy-account-input").live("keyup",function(){var b,e,a=parseInt($(this).parents(".d-sas-bgpart").find(".d-sas-present-title").text().replace(/[^\d\.-]/g,""))/1e4;this.value=this.value.replace(/[^\d]/g,""),0!=this.value%1e3&&this.value>=parseInt($(this).parents(".d-sas-bgpart").find(".d-sas-present-title").text().replace(/[^\d\.-]/g,""))&&(this.value=1e3*parseInt(parseInt(this.value)/1e3+1)),this.value=d(this.value),b=parseInt(this.value.replace(/[^\d]/g,"")),0==b%1e3&&b>=parseInt($(this).parents(".d-sas-bgpart").find(".d-sas-present-title").text().replace(/[^\d\.-]/g,""))?($(this).parents(".d-sas-bgpart").find(".d-sas-buybutton1").css("visibility","visible"),e=b/1e3*$(this).parents(".d-sas-bgpart").find("#unit-price").attr("name"),$(this).parents(".d-sas-bgpart").find("#price-show").html("<p style='color:#fff;font-size:26px;'>￥<span class='d-sas-ppcolor' style='color:#fff'>"+e+"</span></p>")):($(this).parents(".d-sas-bgpart").find(".d-sas-buybutton1").css("visibility","hidden"),$(this).parents(".d-sas-bgpart").find("#price-show").text("请填写希望购买的数量，填写数量须大于"+a+"万，并且是1000的倍数"))})});