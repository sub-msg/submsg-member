<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7, IE=9" />
<meta name="Author" content="在线购买 － ${siteAuthor}" />
<meta name="description" content="${siteDesc}" />
<meta name="keywords" content="事务类短信通道,触发短信,短信网关,短信接口,短信API,submsg" />
<title>在线购买 － SUBMSG - 企业云通讯</title>

<link rel="stylesheet"
	href="${libUrl}PlugIns/dist/css/bootstrap.css?2.5.0" type="text/css" />
<link rel="stylesheet"
	href="${libUrl}zh_cn/styleSheets/global.base.css?2.5.0" type="text/css" />
<script src="${libUrl}PlugIns/jquery.js" type="text/javascript"
	charset="utf-8"></script>
<script src="${libUrl}PlugIns/address.js" type="text/javascript"
	charset="utf-8"></script>
<script src="${libUrl}PlugIns/jquery.cookie.js" type="text/javascript"
	charset="utf-8"></script>
<script src="${libUrl}PlugIns/dist/js/bootstrap.min.js"
	type="text/javascript" charset="utf-8"></script>
<script src="${libUrl}zh_cn/scripts/global.base.js"
	type="text/javascript" charset="utf-8"></script>
     <script type="text/javascript" charset="utf-8">
                $(function(){
                  $('.store-nav').addClass('active');
                  });
                </script>
<%@ include file="/member/common/com_head_element.jsp"%>
</head>
<body>
	<%@ include file="/member/common/nav.jsp"%>
	<div class='section d-sas-homeAds'>
		<div class='container d-sas-selections'>
			<div class='row store-title'>
				<div class='col-lg-12 col-xs-12 col-sm-12 col-md-12'>
					<p style="font-size: 44px; margin-bottom: -5px;">商店</p>
					<p style="font-size: 14px; margin-bottom: -5px;">购买发送服务</p>
					<p style="font-size: 44px">STORE</p>
				</div>
			</div>
			<div class='row'>
				<div class='col-lg-3 col-xs-12 col-sm-3 col-md-3'>
					<a href='/mallIndex.sm#/all'
						class=' d-sas-section d-sas-selected' id='d-sas-section'
						title='all'>短信</a>
				</div>

				<div class='col-lg-3 col-xs-12 col-sm-3 col-md-3'>
					<div class='d-sas-count' style='display: none;'></div>
				</div>
			</div>
		</div>
		<div id="topCarousel" class="carousel">
			<div class='carousel-inner'>
				<div class='d-sas-item active'>
					<img src="${libUrl}images/store-background.jpg"
						class="hero-img hidden-xs" alt="submsg" />
				</div>
			</div>
		</div>
	</div>
	<div class='container d-sas-presents'>

		<div id='d-sas-message' class='d-sas-depart'>
			<div id='title' class='d-sas-parts'>
				<div class='d-sas-img-title'>
					<img style='width: 120px; height: 64px; margin-right: 10px;'
						src="${libUrl}images/store/sms.svg" />
				</div>
				<div class='d-sas-text-title'>
					<p style="margin-top: -3px;">短信</p>
					<p class='d-sas-title-ex'>购买发送服务</p>
				</div>
			</div>
			<div class='d-sas-line2'></div>
			<div id='message_presents' class='presents'>
			<s:iterator var="data" value="productList">
				<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2 d-sas-part">
					<div class="d-sas-bgc">
						<img src="${libUrl}${data.icon}" />
					</div>
					<div class="d-sas-inline"></div>
					<div class="d-sas-ptcolor">
						<p class="d-sas-present-title">${data.nums}</p>
						<p><c:if test="${data.nums%10000!=0}"><fmt:formatNumber type="number" value="${data.nums/10000}" pattern="0.0" maxFractionDigits="1" minFractionDigits="1"/></c:if><c:if test="${data.nums%10000==0}"><fmt:formatNumber type="number" value="${data.nums/10000}" pattern="0" maxFractionDigits="0" minFractionDigits="0"/></c:if>万 次短信发送服务</p>
					</div>
					<div class="d-sas-inline"></div>
					<div class="d-sas-pp">
						<p>
							￥<span class="d-sas-ppcolor"><fmt:formatNumber type="number" value="${data.price}" pattern="0" maxFractionDigits="0" minFractionDigits="0"/></span>
						</p>
					</div>
					<div class="d-sas-inline"></div>
					<div class="d-sas-price-pers">
						<p>单价 ￥<fmt:formatNumber type="number" value="${data.price/data.nums}" pattern="0.000" maxFractionDigits="3" minFractionDigits="3"/></p>
					</div>
					<div class="d-sas-underline"></div>
					<div class="d-sas-buycount">
						<div class="d-sas-buyinput">
							<div
								class="col-xs-12 col-sm-4 col-md-4 col-lg-4 d-sas-pdd d-sas-right">数量</div>
							<div
								class="col-xs-12 col-sm-8 col-md-8 col-lg-8 d-sas-pdd d-sas-left">
								<div style="display: inline-block">
									<input type="text" value="1" name="d-sas-input"
										class="d-sas-input" readonly="readonly" />
										<input type="hidden" value="${data.id}" name="d-sas-input-id"
										class="d-sas-input-id" readonly="readonly" />
									<div class="d-sas-dpam">
										<a href="javascript:void(0)" class="d-sas-pam" id="d-sas-plus">+</a><a
											href="javascript:void(0)" class="d-sas-pam" id="d-sas-minus">-</a>
									</div>
								</div>
							</div>
						</div>
						<div class="">
							<a href="javascript:void(0)" class="d-sas-buybutton"
								id="d-sas-buybutton"><img
								src="${libUrl}images/store-buyicon.png" class="d-sas-buyicon"
								alt="submsg" />购买</a>
						</div>
					</div>
				</div>
	        </s:iterator>
				<div></div>
				<div class="d-sas-underline d-sas-underline1"></div>
				<div class="d-sas-buycount">
					<div class=""></div>
				</div>
			</div>
		</div>

	</div>
<script  type="text/javascript"
	charset="utf-8">
$("#d-sas-plus").live("click",function(){
	var a=parseInt($(this).parents(".d-sas-buyinput").find("input[name=d-sas-input]").val())+1;
	$(this).parents(".d-sas-buyinput").find("input[name=d-sas-input]").val(a);
})

$("#d-sas-minus").live("click",function(){
	var a=parseInt($(this).parents(".d-sas-buyinput").find("input[name=d-sas-input]").val())-1;
	if(a<1){
		a=1;
	}
	$(this).parents(".d-sas-buyinput").find("input[name=d-sas-input]").val(a);
})


$("#d-sas-buybutton").live("click",function(){
	var num=parseInt($(this).parent().prev(".d-sas-buyinput").find("input[name=d-sas-input]").val());
	var id = parseInt($(this).parent().prev(".d-sas-buyinput").find("input[name=d-sas-input-id]").val());
    var action = "/member/payMent.sm";  
    // 创建Form  
    var form = $('<form></form>');  
    // 设置属性  
    form.attr('action', action);  
    form.attr('method', 'post');  
    // form的target属性决定form在哪个页面提交  
    // _self -> 当前页面 _blank -> 新页面  
    form.attr('target', '_self');  
    // 创建Input  
    var num_input = $('<input type="text" name="num" />');  
    num_input.attr('value', num);  
    form.append(num_input);  
    var id_input = $('<input type="text" name="id" />');  
    id_input.attr('value', id);  
    form.append(id_input);
    // 提交表单  
    form.submit();  
})

</script>
	<%@ include file="/member/common/bottom.jsp"%>
</body>
</html>