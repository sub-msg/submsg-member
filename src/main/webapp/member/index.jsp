<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=1024"/>
        <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7, IE=9" />
        <meta name="Author" content="短信/语音 － 我的 SUBMSG - submsg.cn  - ${siteAuthor}" />
        <meta name="description" content="${siteDesc}" />
        <meta name="keywords" content="${siteKeyWords}" />
        <title>短信 - 我的 SUBMSG</title>
        <link rel="stylesheet" href="${libUrl}zh_cn/styleSheets/message_sys_base.css?2.5.0"  type="text/css" />
        <link rel="stylesheet" href="${libUrl}zh_cn/styleSheets/message.overview.css?2.5.0"  type="text/css" />
        <script src="${libUrl}PlugIns/jquery.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/jquery-ui-1.10.4.custom.min.js?2.5.0" type="text/javascript" charset="utf-8" ></script>
        <script src="${libUrl}PlugIns/jquery.placeholder-1.1.9.js?2.5.0" type="text/javascript" charset="utf-8" ></script>
        <script src="${libUrl}PlugIns/jquery.validate.min.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/address.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/menuHold.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/eventdialog.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/jquery.rotate.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}zh_cn/scripts/sys_base.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/submenus/submenus.js" type="text/javascript" charset="utf-8"></script>
        <style>


#teamcont{
	width: 1000px;
	height: 650px;
	margin: 0 auto;
	padding:0 auto;
	font-family: 'Microsoft Yahei', sans-serif;
    font-size: 62.5%;
    font-family: 'Microsoft Yahei', sans-serif;
}
#teamcont .partener{
	
	margin-left:30px;
	margin-top:30px;
	
}
#teamcont #pichuan .partener{
	float:left;
}
.pname{
	padding:25px 0 10px 0;
	font-weight:bold;
	color:black;
}
.pinfo{
	color:black;
}
.parinforma{
	position:absolute;
	z-index:10;
	width:710px;
	color:black;
	display:none;
	border:solid 5px #00bc7c;
	-moz-border-radius:12px;
	-webkit-border-radius:12px;
	border-radius:12px;
	background:#FFFFFF;
}
#teamcont .partener .row1{
	background-color:#0000CC;
	filter:alpha(opacity=90); 
	-moz-opacity:0.9; 
	opacity:0.9;
	-moz-border-radius:60px;
	-webkit-border-radius:60px;
	border-radius:60px;
	cursor:pointer;
	 -moz-box-shadow: 3px 3px 4px #efefef;
    -webkit-box-shadow: 3px 3px 4px #efefef;
    box-shadow: 3px 3px 4px #00bc7c;
    /* For IE 8 */
    -ms-filter: "progid:DXImageTransform.Microsoft.Shadow(Strength=4, Direction=135, Color='#00bc7c')";
    /* For IE 5.5 - 7 */
    filter: progid:DXImageTransform.Microsoft.Shadow(Strength=4, Direction=135, Color='#00bc7c');
	
}

.showRight{
	float:left;
	
}
.showRight  .huntitle{
	padding:10px 0px 10px 10px;
	font-size:30px;
	line-height:0px;
	width:650px;
	text-align:center;
}
.showRight  .huncontent{
	padding:15px 0px 20px 30px;
	font-size:18px;
	line-height:35px;
	width:650px;
	text-align:left;
}
.closebtn{
	clear:both;
	position:relative;
	top:3px;
	left:670px;
	width:36px;
	height:36px;
	background-image:url(/images/close-n.png);
	cursor:pointer;
}
.cssshadow {
    -moz-box-shadow: 1px 1px 20px 4px #00bc7c;
    -webkit-box-shadow:1px 1px 20px 4px #00bc7c;
    box-shadow:1px 1px 20px 4px #b93539;
    -ms-filter: "progid:DXImageTransform.Microsoft.Shadow(Strength=4, Direction=135, Color='#00bc7c')";
    filter: progid:DXImageTransform.Microsoft.Shadow(Strength=4, Direction=135, Color='#00bc7c');
}
</style>
        <%@ include file="/member/common/com_head_element.jsp"%>
    </head>
    <body id="message">
	<%@ include file="/member/cmessage/nav.jsp"%>

	<div class="body_container">
            <div class="content_container">
                <div class="content_header">
                    <div class="warp_container">
                        <div class="warp">
                            <div class="user_icon_container">
                                <img src="${libUrl}images/icon/icon192x192.jpg" width="96" height="96" class="user_icon" id="user_icon"/>
                            </div>
                            <div class="overview_container">
                                <div class="warp">
                                    <div class="sections">
                                        <div class="overview_section">
                                            <div class="warp">
                                                <div class="title">短信发送服务</div>
                                                <div class="des-title"><a href="/mallIndex.sm">去商城购买</a></div>
                                                <div class="cretis" id="overview_message_credis">${msgInfo.msgNum}</div>
                                                <div class="title">国际短信余额</div>
                                                <div class="cretis" id="overview_message_credis">￥${msgInfo.msgBalance}</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="content_body">
                    <div class="warp_container">
                        <div class="warp">
                            <div class="title">最近使用的模板</div>
                            <div class="des-title"><a href="/member/enterTempList.sm" class="highlight" >查看全部模板</a></div>
                            <ul class="qprojects">
                              <li><a href="/member/enterCreateTemp.sm"><img src="${libUrl}images/add-new-message.jpg" /><p></p></a></li>
                              <s:iterator var="data" value="msgTempList">
                                 <li><a href="#"><div class="message_container_warp"><div class="warp">【${data.signContent}】${data.tempContent}</div></div><p></p></a></li>
                              </s:iterator>
                             </ul>
                        </div>
                    </div>
                </div>
<%@ include file="/member/cmessage/bottom.jsp"%>
                       </div>
                       </div>
<c:if test="${not empty notice}">
                       <div id="teamcont" >
	<div style="width:780px;margin:200px auto; text-align:center">
			<div class="parinforma cssshadow">
				<div class="closebtn"></div>
				<div class="showRight">
				    <div class="huntitle">${notice.title}</div>
					<div class="huncontent">	
					${notice.content}
</div>
				</div>
				<div style="clear:both"></div>
			</div>

	</div>		
</div>
<script type="text/javascript">
$(".parinforma").slideDown("normal");
//$("#pichuan .row1").click(function(){
//	var picIndex=$("#pichuan .row1").index($(this));
//	$(".parinforma").hide();
//	$("#pichuan").hide();
//	$(".parinforma").eq(picIndex).slideDown("normal");
//})
$("#teamcont .closebtn").mouseenter(function(){
	$(this).css({'background':'url(/images/close-s.png)'});
}).mouseleave(function(){
	$(this).css({'background':'url(/images/close-n.png)'});
})
$("#teamcont .closebtn").click(function(){
	$(".parinforma").hide();
	  $.post("/member/readNotice.sm", {
		  noticeId: ${notice.id},
          tim: Math.random()
      },
      function(d) {
      	 
      });
})
</script>
</c:if>
    </body>
</html>