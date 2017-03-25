<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>jQueryé¼ æ æ¬åå¾çåå½¢è¾¹æ¡ååæ ·å¼</title>
<script src="libraries/PlugIns/jquery.js"></script>
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
	border:solid 5px #B93539;
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
	 -moz-box-shadow: 3px 3px 4px #939393;
    -webkit-box-shadow: 3px 3px 4px #939393;
    box-shadow: 3px 3px 4px #939393;
    /* For IE 8 */
    -ms-filter: "progid:DXImageTransform.Microsoft.Shadow(Strength=4, Direction=135, Color='#939393')";
    /* For IE 5.5 - 7 */
    filter: progid:DXImageTransform.Microsoft.Shadow(Strength=4, Direction=135, Color='#939393');
	
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
	padding:40px 0px 20px 30px;
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
    -moz-box-shadow: 1px 1px 20px 4px #afafaf;
    -webkit-box-shadow:1px 1px 20px 4px #afafaf;
    box-shadow:1px 1px 20px 4px #afafaf;
    -ms-filter: "progid:DXImageTransform.Microsoft.Shadow(Strength=4, Direction=135, Color='#afafaf')";
    filter: progid:DXImageTransform.Microsoft.Shadow(Strength=4, Direction=135, Color='#afafaf');
}
</style>
<body>

<div id="teamcont" >
	<div style="width:780px;margin:200px auto; text-align:center">
			<div class="parinforma cssshadow">
				<div class="closebtn"></div>
				<div class="showRight">
				    <div class="huntitle">商城单价调整</div>
					<div class="huncontent">	
&nbsp;&nbsp;&nbsp;&nbsp;为感谢多年来广大客户的支持，在SUBMSG上线运营5周年之际，商城的商品价格做出如下调整。<br />
（1）5000条短信套餐，单价调整为0.054元/条.<br />
（2）50万短信套餐，单价调整为0.046元/条.<br />
（3）200万短信套餐，单价调整为0.042元/条.<br />
（4）新增5万条短信套餐，单价为0.05元/条.<br />
（5）新增500万短信套餐，单价为0.038元/条.<br />
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
	$("#pichuan").show();
})
</script>

</body>
</html>
