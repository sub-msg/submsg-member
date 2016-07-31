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
<script src="${libUrl}PlugIns/jquery.validate.min.js" type="text/javascript" charset="utf-8"></script>
	
<script src="${libUrl}zh_cn/scripts/global.base.js"
	type="text/javascript" charset="utf-8"></script>
<script src="${libUrl}zh_cn/scripts/payments.js"
	type="text/javascript" charset="utf-8"></script>
<script src="${libUrl}zh_cn/scripts/cities.js"
	type="text/javascript" charset="utf-8"></script>	
<script src="${libUrl}PlugIns/eventdialog.js?2.5.0" type="text/javascript" charset="utf-8"></script>
	
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
            
            <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12' style='margin-top:40px;'>
                <div class='row pay-top'>
                    <span class='pay-top-left'>安全结账</span>
                    <span class='pay-top-right'>订单合计：￥
                    <span class="pay_top_right_price">${mp.price*num}</span>
                    </span>
                </div>
            </div>
            
            <div class='row'>
                <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12'>
                    <span class='section-title section-title-selected'>购物车</span>
                </div>
                <div>
                    <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12'>
                        <div class='shoplist' id='shoplist' style='float:left;width:100%;'>
                            <div class='shopcart-tr-title' style='padding:0;margin:0;height:40px;'>
                                <div class='col-xs-6 col-sm-3 col-md-3 col-lg-3 shopcart-item-pdd shopcart-item' >
                                    <p class='shopcart-item-ct' style='margin-left:0;font-size:14px;'>商品</p>
                                </div>
                                <div class='col-xs-6  col-sm-3 col-md-3 col-lg-3 shopcart-item-pdd shopcart-item' style='text-align:center;'>
                                    <p class='shopcart-item-ct' style='margin-left:0;font-size:14px;'>单价</p>
                                </div>
                                <div class='col-xs-6  col-sm-3 col-md-3 col-lg-3 shopcart-item-pdd shopcart-item text-center' style='text-align:center;font-size:18px;'>
                                    <p class='shopcart-item-ct' style='margin-left:0;font-size:14px;'>数量</p></div>
                                
                                <div class='col-xs-6  col-sm-3 col-md-3 col-lg-3 shopcart-item-pdd shopcart-item text-center'  style='text-align:center;'>
                                    <p class='shopcart-item-ct' style='margin-left:0;font-size:14px;'>总计</p></span>
                                </div>
                            </div>


                       <div class="shopcart-list" id="${mp.id}">
                       <input type="hidden" name="productId" id="productId" value="${mp.id}"/>
						<div
							class="col-xs-6 col-sm-3 col-md-3 col-lg-3 shopcart-item-pdd shopcart-item">
							<div style="float: left;">
								<svg version="1.1" class="credits_icon"
									xmlns="http://www.w3.org/2000/svg"
									xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
									viewBox="0 0 28.342 28.343"
									enable-background="new 0 0 28.342 28.343" xml:space="preserve">
								<path fill="#aaa"
									d="M14.171,1c7.263,0,13.171,5.908,13.171,13.171s-5.908,13.172-13.171,13.172S1,21.434,1,14.171 S6.908,1,14.171,1 M14.171,0C6.345,0,0,6.345,0,14.171c0,7.827,6.345,14.172,14.171,14.172s14.171-6.345,14.171-14.172 C28.342,6.345,21.997,0,14.171,0L14.171,0z"></path>
								<g>
								<path fill="#aaa"
									d="M9.788,19.858c-0.847,0.266-1.668,0.53-2.7,0.874c0.132-0.557,0.211-0.926,0.291-1.297 c0.106-0.397,0.239-0.793,0.371-1.218c-0.238-0.397-0.476-0.796-0.688-1.191c-1.324-2.436-1.086-5.083,0.661-7.201 c3.125-3.839,9.637-3.892,12.813-0.08c2.118,2.542,2.065,5.982-0.132,8.472c-2.146,2.437-5.797,3.335-9.054,2.251 C10.874,20.283,10.396,20.071,9.788,19.858z"></path></g></svg>
							</div>
							<p class="shopcart-item-ct">${mp.nums}</p>
							<span class="shopcart-item-ex"><c:if test="${mp.nums%10000!=0}"><fmt:formatNumber type="number" value="${mp.nums/10000}" pattern="0.0" maxFractionDigits="1" minFractionDigits="1"/></c:if><c:if test="${mp.nums%10000==0}"><fmt:formatNumber type="number" value="${mp.nums/10000}" pattern="0" maxFractionDigits="0" minFractionDigits="0"/></c:if>万封短信发送服务</span>
						</div>
						<div
							class="col-xs-6  col-sm-3 col-md-3 col-lg-3 shopcart-item-pdd shopcart-item"
							style="text-align: center; line-height: 40px;">
							￥<span class="shopcart-mstyle">${mp.price}</span>
						</div>
						<div
							class="col-xs-6  col-sm-3 col-md-3 col-lg-3 shopcart-item-pdd shopcart-item shopcart-item-count text-center"
							style="font-size: 18px;">${num}</div>
						<div
							class="col-xs-6  col-sm-3 col-md-3 col-lg-3 shopcart-item-pdd shopcart-item text-center"
							style="text-align: center; line-height: 40px;">
							￥<span class="shopcart-mstyle">${mp.price*num}</span>
						</div>
					</div>
                        </div>

					
				</div>
                </div>
            </div>
            <div class='row'>
                <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12'>
                    <span class='section-title section-title-selected'>发票信息</span>
                </div>
                <div id='pay-invoice' class='section-operate' style='float:left;width:100%'>
                    <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12' style='margin-top:30px'>
                        <input id='noinvoice' type='radio' name='invoice' value='0'  style='display:none;' checked/>
                        <label for='noinvoice' class='pay-radio'>无需发票</label>
                        <input id='hasinvoice' type='radio' name='invoice' value='1' style='display:none;'/>
                        <label for='hasinvoice' class='pay-radio'>需要发票</label>
                        <div style='clear:both'></div>
                    </div>
                    <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12 invoice' style='margin-top:30px'>
                        <ul class='inv_addr_list' style='display:none;'>    
                        </ul>
                        <div class='inv_addr_insert'>
                        </div>
                    </div>

                    <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12'>
                        <div class='pay-operate-line' style='margin:30px auto;'> </div>
                        <div style='width:220px;background-color:#fff;'>
                            <a href='javascript:void(0)' class='btn btn-lg btn-primary pay-next order_create_continue'>创建订单并继续</a>
                            <div style='clear:both;'></div>
                        </div>
                         <div style='clear:both;'></div>
                    </div>
                </div>
            </div>
            <div class='row'>
                <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12' style='height:100px;'>
                </div>
            </div>
        </div>
	<%@ include file="/member/common/bottom.jsp"%>
</body>
</html>