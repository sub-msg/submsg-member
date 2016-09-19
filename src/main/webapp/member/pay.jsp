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
<script src="${libUrl}zh_cn/scripts/store.payments.js"
	type="text/javascript" charset="utf-8"></script>
<script src="${libUrl}PlugIns/jquery.validate.min.js?2.5.0" type="text/javascript" charset="utf-8"></script>

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
                    <c:if test="${porder.status==0}"><span class='pay-top-left'>安全结账</span></c:if>
                    <c:if test="${porder.status==1}"><span class='pay-top-center' style="padding: 0px 300px;">恭喜您！订单已支付成功。</span></c:if>
                </div>
            </div>
            <div class='row'>
                <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12'>
                     <c:if test="${porder.status==1}">
                      <span class='section-title section-title-selected' style='align:center;'>订单详情</span>
                     </c:if>
                    <c:if test="${porder.status==0}">
                    <span class='section-title section-title-selected'>支付</span>
                    </c:if>
                </div>
                <div id='pay-pay' class='section-operate'>
                    <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12'>
                        <div style='color:#666;margin-top:40px;'>
                            <div style='float:left;margin-left:40px;'>
                                <p style='font-size:24px'>订单编号：${porder.orderId}</p>
                                <p style='font-size:14px'>订单日期：<fmt:formatDate value="${porder.createdTime}" pattern="yyyy/MM/dd HH:mm:ss"/></p>
                            </div>
                            <div style='float:right;margin-right:40px;'>
                                <div style='float:right;font-size:18px;'>商品合计：￥${porder.productAmount}</div></br>
                                <!-- <div style='float:right;color:#ff0000'>优惠券减免：￥0</div>-->
                                <div class='pay-operate-line' style='margin-top:28px;'></div>
                                <div style='float:right;font-size:20px;'>应支付金额：￥${porder.productAmount}</div>
                            </div>
                        </div>
                    </div>
                                       
                    <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12'>
                        <div class='pay-operate-line' style='margin:40px 40px 0;'></div>
                    </div>
                    <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12'>
                        <div style='margin:40px 40px 0;font-size:20px'>商品清单</div>
                    </div>
                    <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12'>
                        <div id='order_store_shoppinglist' style='margin:40px 40px 0;'>
                            <div>
                                <div class='col-xs-6 col-sm-3 col-md-3 col-lg-3 shopcart-item-pdd shopcart-item'>
                                    <p class='shopcart-item-ct' style='margin-left:0;'>商品</p>
                                </div>
                                <div class='col-xs-6  col-sm-3 col-md-3 col-lg-3 shopcart-item-pdd shopcart-item' style='text-align:center;line-height: 40px;'>
                                    <p class='shopcart-item-ct' style='margin-left:0;'>单价</p>
                                </div>
                                <div class='col-xs-6  col-sm-3 col-md-3 col-lg-3 shopcart-item-pdd shopcart-item shopcart-item-count text-center' style='font-size:18px;'>
                                    <p class='shopcart-item-ct' style='margin-left:0;'>数量</p></div>
                                
                                <div class='col-xs-6  col-sm-3 col-md-3 col-lg-3 shopcart-item-pdd shopcart-item text-center'  style='text-align:center;line-height: 40px;'>
                                    <p class='shopcart-item-ct' style='margin-left:0;'>总计</p></span>
                                </div>
                            </div>
                                                        <div class='shopcart-list'>
                                <div class='col-xs-6 col-sm-3 col-md-3 col-lg-3 shopcart-item-pdd shopcart-item'>
                                                                        <div style='float:left;'><svg version='1.1' class='credits_icon'  xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' x='0px' y='0px' viewBox='0 0 28.342 28.343' enable-background='new 0 0 28.342 28.343' xml:space='preserve'><path fill='#aaa' d='M14.171,1c7.263,0,13.171,5.908,13.171,13.171s-5.908,13.172-13.171,13.172S1,21.434,1,14.171 S6.908,1,14.171,1 M14.171,0C6.345,0,0,6.345,0,14.171c0,7.827,6.345,14.172,14.171,14.172s14.171-6.345,14.171-14.172 C28.342,6.345,21.997,0,14.171,0L14.171,0z'/><g><path fill='#aaa' d='M9.788,19.858c-0.847,0.266-1.668,0.53-2.7,0.874c0.132-0.557,0.211-0.926,0.291-1.297 c0.106-0.397,0.239-0.793,0.371-1.218c-0.238-0.397-0.476-0.796-0.688-1.191c-1.324-2.436-1.086-5.083,0.661-7.201 c3.125-3.839,9.637-3.892,12.813-0.08c2.118,2.542,2.065,5.982-0.132,8.472c-2.146,2.437-5.797,3.335-9.054,2.251 C10.874,20.283,10.396,20.071,9.788,19.858z'/></g></svg></div>                                        
                                                                                                                        <p class='shopcart-item-ct'>${mp.nums}短信</p>
                                        <span class='shopcart-item-ex'>${mp.nums}次短信发送服务</span>
                                                                                                                        </div>
                                                                <div class='col-xs-6  col-sm-3 col-md-3 col-lg-3 shopcart-item-pdd shopcart-item' style='text-align:center;line-height: 40px;font-size:18px;'>
                                                                                                                                                   ￥<span class='shopcart-mstyle'>${mp.price}元</span>
                                                                                                               
                                                                     </div>
                                                                <div class='col-xs-6  col-sm-3 col-md-3 col-lg-3 shopcart-item-pdd shopcart-item shopcart-item-count text-center' style='font-size:18px;'>
                                                                                                            ${porder.productNum}                                                                        
                                                                        </div>
                                
                                <div class='col-xs-6 col-sm-3 col-md-3 col-lg-3 shopcart-item-pdd shopcart-item text-center'  style='text-align:center;line-height: 40px;font-size:18px;'>
                                                                         ￥<span class='shopcart-mstyle'>${porder.productAmount}元</span>
                                                                         
                                </div>
                            </div>
                                                    </div>
                    </div>
                    <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12'>
                        <div class='pay-operate-line' style='margin:40px 40px 0;'></div>
                    </div>
                    <c:if test="${porder.status==0}">
              <form id="alipayment" role="form" novalidate="novalidate">
                    <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12'>
                        <div class='banks'>
                            <p style='font-size:28px;color:#666;'>选择支付方式</p>
                            <div class="paybank">
                                <span>
                                    <input type="radio" name="payBank" value="ALIPAY" id="ALIPAY"/>
                                </span>
                                <label for="ALIPAY">
                                    <img src="${libUrl}images/zhifubao.jpg" alt="支付宝"/>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12'>
                        <div class='pay-operate-line' style='margin:40px;'></div>
                    </div>
                    
                        <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12'>
                            <div class='banks'>
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="3080" id="3080"/>
                                    </span>
                                    <label for="3080">
                                        <img src="${libUrl}images/bank1.jpg" alt="招商银行"/>
                                    </label>
                                </div>
                               <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="104" id="104"/>
                                    </span>
                                    <label for="104">
                                        <img src="${libUrl}images/bank17.jpg" alt="中国银行"/>
                                    </label>
                                </div>
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="1051" id="1051" />
                                    </span>
                                    <label for="1051">
                                        <img src="${libUrl}images/bank2.jpg" alt="中国建设银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="1025" id="1025"/>
                                    </span>
                                    <label for="1025">
                                        <img src="${libUrl}images/bank3.jpg" alt="中国工商银行"/>
                                    </label>
                                </div>
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="103" id="103" />
                                            </span>
                                    <label for="103">
                                        <img src="${libUrl}images/bank8.jpg" alt="中国农业银行"/>
                                    </label>
                                </div>
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="307" id="307"/>
                                    </span>
                                    <label for="307">
                                        <img src="${libUrl}images/bank4.jpg" alt="平安银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="305" id="305"/>
                                    </span>
                                    <label for="305">
                                        <img src="${libUrl}images/bank5.jpg" alt="中国民生银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="309" id="309"/>
                                    </span>
                                    <label for="309">
                                        <img src="${libUrl}images/bank6.jpg" alt="兴业银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="310" id="310"/>
                                    </span>
                                    <label for="310">
                                        <img src="${libUrl}images/bank11.jpg" alt="北京银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="3407" id="3407" />
                                            </span>
                                    <label for="3407">
                                        <img src="${libUrl}images/bank10.jpg" alt="交通银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="314" id="314"/>
                                    </span>
                                    <label for="314">
                                        <img src="${libUrl}images/bank12.jpg" alt="浦发银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="312" id="312"/>
                                    </span>
                                    <label for="312">
                                        <img src="${libUrl}images/bank13.jpg" alt="中国光大银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="335" id="335"/>
                                    </span>
                                    <label for="335">
                                        <img src="${libUrl}images/bank14.jpg" alt="北京农村商业银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="313" id="313"/>
                                    </span>
                                    <label for="313">
                                        <img src="${libUrl}images/bank16.jpg" alt="中信银行"/>
                                    </label>
                                </div>
                                

                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="326" id="326"/>
                                    </span>
                                    <label for="326">
                                        <img src="${libUrl}images/bank22.jpg" alt="上海银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="3061" id="3061"/>
                                    </span>
                                    <label for="3061">
                                        <img src="${libUrl}images/bank9.jpg" alt="广发银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="324" id="324"/>
                                    </span>
                                    <label for="324">
                                        <img src="${libUrl}images/bank23.jpg" alt="杭州银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="302" id="302"/>
                                    </span>
                                    <label for="302">
                                        <img src="${libUrl}images/bank24.jpg" alt="宁波银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="3230" id="3230"/>
                                    </span>
                                    <label for="3230">
                                        <img src="${libUrl}images/bank26.jpg" alt="中国邮政储蓄银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank"><span>
                                    <input type="radio" name="payBank" value="343" id="343"/>
                                </span>
                                <label for="343">
                                    <img src="${libUrl}images/bank21.jpg" alt="上海农商银行"/>
                                </label>
                                </div>
                                
                                 <div class="paybank"><span>
                                    <input type="radio" name="payBank" value="311" id="311"/>
                                </span>
                                <label for="311">
                                    <img src="${libUrl}images/bank-hx.gif" alt="华夏银行"/>
                                </label>
                                </div>
                                
                              <div class="paybank"><span>
                                    <input type="radio" name="payBank" value="317" id="317"/>
                                </span>
                                <label for="317">
                                    <img src="${libUrl}images/bank-bh.gif" alt="渤海银行"/>
                                </label>
                                </div>
                                
                               <div class="paybank"><span>
                                    <input type="radio" name="payBank" value="342" id="342"/>
                                </span>
                                <label for="342">
                                    <img src="${libUrl}images/bank-cqncsy.gif" alt="重庆农商银行"/>
                                </label>
                                </div>
                                
                                                              <div class="paybank"><span>
                                    <input type="radio" name="payBank" value="316" id="316"/>
                                </span>
                                <label for="316">
                                    <img src="${libUrl}images/bank-nj.gif" alt="南京银行"/>
                                </label>
                                </div>
                                
                                <div class="paybank"><span>
                                    <input type="radio" name="payBank" value="336" id="336"/>
                                </span>
                                <label for="336">
                                    <img src="${libUrl}images/bank-cd.gif" alt="成都银行"/>
                                </label>
                                </div>
                                
                                <div class="paybank"><span>
                                    <input type="radio" name="payBank" value="3341" id="3341"/>
                                </span>
                                <label for="3341">
                                    <img src="${libUrl}images/bank-qd.gif" alt="青岛银行"/>
                                </label>
                                </div>
                                
                                                              <div class="paybank"><span>
                                    <input type="radio" name="payBank" value="344" id="344"/>
                                </span>
                                <label for="344">
                                    <img src="${libUrl}images/bank-hf.gif" alt="恒丰银行"/>
                                </label>
                                </div>
                            </div>
                        </div>
                        <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12'>
                            <div class='pay-operate-line' style='margin:40px 40px;'></div>
                        </div>
                        <div style="margin:0 40px;">
                            <div class='col-lg-4 col-lg-offset-8 col-xs-12 col-sm-6 col-sm-offset-6 col-md-4 col-md-offset-8' >
                                <input type="hidden" name="orderNumber" value="${porder.orderId}" />
                                <input type="submit" class='btn btn-lg btn-block btn-success' id="pay" value="立即支付" />
                            </div>
                        </div>
                    </form>
                    
                    <div class="clearfix"></div>
                    <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12'>
                        <div class='pay-operate-line' style='margin:40px;'></div>
                    </div>
                                        <div class='col-xs-12' style='margin-bottom:60px;'>
                        <div  style='margin:0px 40px;'>

                             <h3>银行转账支付</h3>
                                                          <h5 style="color:#ff0000;">增值税专用发票订单请使用银行转账支付</h5>
                             <p>请将您的订单款项使用您的公司对公账户转账至：</p>
                             <p class="pay-operate-line" style="margin-top:10px;background:#ccc;"></p>
                             <h5>银行开户名：欣明信息科技（深圳）有限公司<br />银行账号：4420 50100 0024 0000 0240<br />开户银行：中国建设银行 深圳罗岗支行</h5>
                             <p class="pay-operate-line" style="margin-top:10px;background:#ccc;"></p>
                             <p>请将本页的订单号附在转账备注上</span>，我们在收到您的转账后对该订单自动进行处理，</p>
                             <p><br /></p>

                        </div>
                       
                    </div>
                    </c:if>
                </div>
            </div>
            
        </div>
        
        <div class="sections sections-signupnow">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-sm-12 col-xs-12">
                        <div class="col-lg-4 col-sm-3 col-xs-0"></div>
                        <div class="col-lg-4 col-sm-6 col-xs-12">
                        </div>
                    </div>
                </div>
            </div>
        </div>
	<%@ include file="/member/common/bottom.jsp"%>
</body>
</html>