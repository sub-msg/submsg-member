$(function(){var a,c,b={guide:function(){$(".bs-sidenav > li > ul").find("li").each(function(){$(this).find("a").attr("href")=="#/"+a[1]?($(this).addClass("active"),$(this).parent("ul").parent("li").addClass("active")):$(this).removeClass("active")})},getContents:function(){$("body").animate({scrollTop:"0px"},500),$.get("getContents",{id:a[1]},function(a){var b=$.parseJSON(a);"true"==b.returns?($("#no-results").hide(),$("title").text(b.titleCN+" - 公司信息 － SUBMSG - 触发邮件和短信云端服务提供商"),$("#content_container").html(b.contents),$("#contents").show()):($("#no-results").show(),$("#contents").hide())})},search:function(a){$(".bs-sidenav").hide(),$(".bs-searchnav").show(),$(".bs-searchnav").html("<li><p>正在搜索 “"+a+"”</p></li>"),$.get("/chs/documents/searchContents",{e:a,app:2},function(b){var c=$.parseJSON(b);$(".searching").hide(),$(".reset").show(),"true"==c.returns?($(".bs-searchnav").html("<li><p>找到"+c.count+"个与 “"+a+"” 相关的文档</p></li>"),$.each(c.search,function(a,b){$(".bs-searchnav").append('<li><a href="/chs/documents/info/'+b.id+'">'+b.titleCN+"</a></li>")})):$(".bs-searchnav").html("<li><p>没有找到与 “"+a+"” 相关的文档</p></li>")})}};$(".bs-sidenav > li > ul > li > a").live("click",function(){"fixed"==$(".sidebar").css("position")&&$(".sidebar").animate({left:"-500px"},500,function(){$(this).hide(),$(".sidebar").removeAttr("style"),$(".nav-masker").hide(),$(this).css("left","auto")})}),$(".bs-sidenav > li > a").live("click",function(){$(this).parent("li").toggleClass("active")}),$(".res-title ").live("click",function(){$(this).parent("div").find(".res-table").toggle("blind"),$(this).parent("div").toggleClass("active")}),$(".nag-tab-ctr").live("click",function(){var a,b;$(this).parents(".nav-tabs").find("li").each(function(){$(this).removeClass("active")}),$(this).parent("li").addClass("active"),a=$(this).parent("li").index()+1,b=$(this).parents(".nav-tabs").index(),$(this).parents(".res-table").find(".nav-tab-views").each(function(){$(this).index()==a+b?$(this).show():$(this).hide()})}),$(".bs-searchnav >li >a").live("click",function(){$(this).parents("ul").find("li").each(function(){$(this).removeClass("active")}),$(this).parent("li").addClass("active"),"fixed"==$(".sidebar").css("position")&&$(".sidebar").animate({left:"-500px"},500,function(){$(this).hide(),$(".sidebar").removeAttr("style"),$(".nav-masker").hide(),$(this).css("left","auto")})}),$("input[name=search]").live("keyup",function(){clearTimeout(c);var a=$(this).val();""!=a?($(".searching").show(),c=setTimeout(function(){b.search(a)},500)):($(".searching").hide(),$(".reset").hide())}),$(".reset").live("click",function(){$(".reset").hide(),$("input[name=search]").val(""),$(".bs-searchnav").html(""),$(".bs-searchnav").hide(),$(".bs-sidenav").show()}),$("#docmentMenu").live("click",function(){$(".sidebar").is(":visible")?alert("a"):($(".sidebar").css("left","-500px"),$(".sidebar").show(),$(".nav-masker").show(),$(".sidebar").animate({left:"0px"},500))}),$(".nav-masker").live("click",function(){$(".nav-masker").hide(),"fixed"==$(".sidebar").css("position")&&$(".sidebar").animate({left:"-500px"},500,function(){$(this).hide(),$(this).css("left","auto"),$(".sidebar").removeAttr("style")})})});