<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7, IE=9" />
            <meta name="Author" content="安全结账 － SUBMAIL - 企业云通讯 - submail.cn  - 专注于事务类邮件和短信的云服务" />
            <meta name="description" content="submail.cn 触发邮件和触发短信云端服务平台, 适用于公司的专业事务类邮件和短信发送业务。价格低廉, 品质卓越, 是国内少有的专业邮件和短信服务提供商。SUBMAIL 不仅提供高速的、高稳定性的、高安全性的、电子邮件服务, 还提供更加方便快捷的 A2P 短信发送, 并提供smtp服务和网站集成API, 使中小型企业、网店、电子商务、移动应用、和网站等的触发短信和触发邮件集成更加方便, 成本更低廉。 " />
            <meta name="keywords" content="事务类邮件通道,触发邮件,邮件API,事务类短信通道,触发短信,短信网关,短信接口,短信API,submail " />
            <title>安全结账 － SUBMAIL - 企业云通讯</title>
            <!--[if lt IE 8 ]>
             <script type="text/javascript" charset="utf-8">
             window.location.href="/chs/welcome/UpgradeYourBrowser";
             </script>
             <![endif]-->
            <link rel="stylesheet" href="http://libraries.submail.cn/PlugIns/dist/css/bootstrap.css?2.5.0"  type="text/css" />
            <link rel="stylesheet" href="http://libraries.submail.cn/zh_cn/styleSheets/global.base.css?2.5.0.1"  type="text/css" />
            <script src="http://libraries.submail.cn/PlugIns/jquery.js" type="text/javascript" charset="utf-8"></script>
            <script src="http://libraries.submail.cn//PlugIns/jquery.validate.min.js" type="text/javascript" charset="utf-8"></script>
            <script src="http://libraries.submail.cn/PlugIns/jquery.cookie.js" type="text/javascript" charset="utf-8"></script>
            <script src="http://libraries.submail.cn/PlugIns/jquery.mobile.custom.min.js" type="text/javascript" charset="utf-8"></script>
            <script src="http://libraries.submail.cn/PlugIns/dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
            <script src="http://libraries.submail.cn/PlugIns/base64.js" type="text/javascript" charset="utf-8"></script>
            <script src="http://libraries.submail.cn/zh_cn/scripts/global.base.js?2.5.0" type="text/javascript" charset="utf-8"></script>
            <script src="http://libraries.submail.cn/zh_cn/scripts/store.payments.js?2.5.0.1" type="text/javascript" charset="utf-8"></script>
            </head>
    <body>
        <div class="navbar navbar-default navstyle navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">SUBMAIL Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand submail_top_logo" href="/"" title="首页 | SUBMAIL"><span>SUBMAIL</span></a>
        </div>
        <hr class="nav-hr visible-xs">
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="mail-nav"><a href="/mail">邮件</a></li>
                <li class="sms-nav"><a href="/sms">短信</a></li>
                <li class="mobiledata-nav"><a href="/mobiledata"><span class="hidden-sm" style="float:left;">手机</span>流量</a></li>
                <li class="iot-nav"><a href="/iot"><span class="hidden-sm">物联网通讯</span><span class="visible-sm">物联网</span></a></li>
                <li class="voice-nav"><a href="/voice">语音</a></li>
                
                <li class="developer-nav"><a href="/chs/documents/developer/index"><span class="hidden-sm">开发文档</span><span class="visible-sm">开发者</span></a></li>
                <li class="store-nav"><a href="/chs/store" ><span class="hidden-sm">在线购买</span><span class="visible-sm">商店</span></a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="help-nav hidden-md hidden-sm"><a href="/chs/documents/help/index" >帮助与支持</a></li>
                <li class="blog-nav hidden-sm"><a href="/chs/blog">博客</a></li>
                <li><p class="nav-lr hidden-xs hidden-sm">|</p></li>
                <li><a href="/chs/account/welcome" style="padding-left:38px;margin-left: 10px;"><img src="http://images.submail.cn/public/397007dce1fc7aaf645fdaad2b30d093/icon/icon64x64.jpg" width="32" height="32" style="position: absolute;top:8px;left: 0px;border-radius:16px;-webkit-border-radius:16px;-moz-border-radius:16px;-o-border-radius:16px;-khtml-border-radius:16px;" />孟 潮</a></li>            </ul>
        </div>
    </div>
</div>        <div class='section d-sas-homeAds'>
            <div class='container d-sas-selections'>
                <div class='row store-title'>
                    <div  class='col-lg-12 col-xs-12 col-sm-12 col-md-12'>
                        <p style="font-size:44px;margin-bottom:-5px;">商店</p>
                        <p style="font-size:14px;margin-bottom:-5px;">购买发送许可</p>
                        <p style="font-size:44px">STORE</p>
                    </div>
                </div>
                <div class='row'>
                    <div class='col-lg-3 col-xs-12 col-sm-3 col-md-3'>
                        <a href='/chs/store#/all' class=' d-sas-section d-sas-section-c' id='d-sas-section' title='all'>全部</a>
                    </div>
                    <div class='col-lg-2 col-xs-12 col-sm-2 col-md-2'>
                        <a href='/chs/store#/mail' class=' d-sas-section' id='d-sas-section' title='mail'>触发和推广邮件
                        </a>
                    </div>
                    <div class='col-lg-2 col-xs-12 col-sm-2 col-md-2'>
                        <a href='/chs/store#/message' class=' d-sas-section' id='d-sas-section' title='message'>短信/语音
                        </a>
                    </div>
                    <div class='col-lg-2 col-xs-12 col-sm-2 col-md-2'>
                        <a href='/chs/store#/mobiledata' class=' d-sas-section' id='d-sas-section' title='mobiledata'>手机流量
                        </a>
                    </div>
                    <div class='col-lg-3 col-xs-12 col-sm-3 col-md-3'>
                        <a href='/chs/store/shopcart' class='d-sas-section d-sas-section-b'><img src="http://libraries.submail.cn/images/store-buyicon1.png" class="d-sas-buyicon1" alt="submail" style='width:40px;'/>购物车</a>
                        <div class='d-sas-count' style='display:none;'></div>
                    </div>
                </div>
            </div>
            <div id="topCarousel" class="carousel">
                <div class='carousel-inner'>
                    <div class='d-sas-item active'><img src="http://libraries.submail.cn/images/store-background.jpg" class="hero-img hidden-xs" alt="submail"></div>
                </div>
            </div>
        </div>
        <div class='container d-sas-presents'>
            
            <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12' style='margin-top:40px;'>
                <div class='row pay-top'>
                    <span class='pay-top-left'>安全结账</span>
                </div>
            </div>
            <div class='row'>
                <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12'>
                    <span class='section-title section-title-selected'>支付</span>
                </div>
                <div id='pay-pay' class='section-operate'>
                    <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12'>
                        <div style='color:#666;margin-top:40px;'>
                            <div style='float:left;margin-left:40px;'>
                                <p style='font-size:24px'>订单编号：CS2383645155                                </p>
                                <p style='font-size:14px'>订单日期：2016-07-29 03:11:22</p>
                            </div>
                            <div style='float:right;margin-right:40px;'>
                                <div style='float:right;font-size:18px;'>商品合计：￥1059.00</div></br>
                                <!-- <div style='float:right;color:#ff0000'>优惠券减免：￥0</div>-->
                                <div class='pay-operate-line' style='margin-top:28px;'></div>
                                <div style='float:right;font-size:20px;'>应支付金额：￥1059.00</div>
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
                                                                                                                        <p class='shopcart-item-ct'>20000短信</p>
                                        <span class='shopcart-item-ex'>20000短信发送许可</span>
                                                                                                                        </div>
                                                                <div class='col-xs-6  col-sm-3 col-md-3 col-lg-3 shopcart-item-pdd shopcart-item' style='text-align:center;line-height: 40px;font-size:18px;'>
                                                                                                                                                   ￥<span class='shopcart-mstyle'>1059.00元</span>
                                                                                                               
                                                                     </div>
                                                                <div class='col-xs-6  col-sm-3 col-md-3 col-lg-3 shopcart-item-pdd shopcart-item shopcart-item-count text-center' style='font-size:18px;'>
                                                                                                            1                                                                        
                                                                        </div>
                                
                                <div class='col-xs-6 col-sm-3 col-md-3 col-lg-3 shopcart-item-pdd shopcart-item text-center'  style='text-align:center;line-height: 40px;font-size:18px;'>
                                                                         ￥<span class='shopcart-mstyle'>1,059.00元</span>
                                                                         
                                </div>
                            </div>
                                                    </div>
                    </div>
                    <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12'>
                        <div class='pay-operate-line' style='margin:40px 40px 0;'></div>
                    </div>
                                        <form id="alipayment" role="form" novalidate="novalidate">
                    <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12'>
                        <div class='banks'>
                            <p style='font-size:28px;color:#666;'>选择支付方式</p>
                            <div class="paybank">
                                <span>
                                    <input type="radio" name="payBank" value="ALIPAY" id="ALIPAY"/>
                                </span>
                                <label for="ALIPAY">
                                    <img src="http://libraries.submail.cn/images/zhifubao.jpg" alt="支付宝"/>
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
                                        <input type="radio" name="payBank" value="CMB" id="CMB"/>
                                    </span>
                                    <label for="CMB">
                                        <img src="http://libraries.submail.cn/images/bank1.jpg" alt="招商银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="CCB"id="CCB" />
                                    </span>
                                    <label for="CCB">
                                        <img src="http://libraries.submail.cn/images/bank2.jpg" alt="中国建设银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="ICBCB2C" id="ICBCB2C"/>
                                    </span>
                                    <label for="ICBCB2C">
                                        <img src="http://libraries.submail.cn/images/bank3.jpg" alt="中国工商银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="SPABANK" id="SPABANK"/>
                                    </span>
                                    <label for="SPABANK">
                                        <img src="http://libraries.submail.cn/images/bank4.jpg" alt="平安银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="CMBC" id="CMBC"/>
                                    </span>
                                    <label for="CMBC">
                                        <img src="http://libraries.submail.cn/images/bank5.jpg" alt="中国民生银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="CIB" id="CIB"/>
                                    </span>
                                    <label for="CIB">
                                        <img src="http://libraries.submail.cn/images/bank6.jpg" alt="兴业银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="ABC" id="ABC">
                                            </span>
                                    <label for="ABC">
                                        <img src="http://libraries.submail.cn/images/bank8.jpg" alt="中国农业银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="BJBANK" id="BJBANK"/>
                                    </span>
                                    <label for="BJBANK">
                                        <img src="http://libraries.submail.cn/images/bank10.jpg" alt="北京银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="COMM-DEBIT" id="COMM-DEBIT">
                                            </span>
                                    <label for="COMM-DEBIT">
                                        <img src="http://libraries.submail.cn/images/bank11.jpg" alt="交通银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="SPDB-DEBIT" id="SPDB-DEBIT"/>
                                    </span>
                                    <label for="SPDB-DEBIT">
                                        <img src="http://libraries.submail.cn/images/bank12.jpg" alt="浦发银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="CEB-DEBIT" id="CEB-DEBIT"/>
                                    </span>
                                    <label for="CEB-DEBIT">
                                        <img src="http://libraries.submail.cn/images/bank13.jpg" alt="中国光大银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="BJRCB" id="BJRCB"/>
                                    </span>
                                    <label for="BJRCB">
                                        <img src="http://libraries.submail.cn/images/bank14.jpg" alt="北京农村商业银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="CITIC" id="CITIC"/>
                                    </span>
                                    <label for="CITIC">
                                        <img src="http://libraries.submail.cn/images/bank16.jpg" alt="中信银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="BOCB2C" id="BOCB2C"/>
                                    </span>
                                    <label for="BOCB2C">
                                        <img src="http://libraries.submail.cn/images/bank17.jpg" alt="中国银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="SHBANK" id="SHBANK"/>
                                    </span>
                                    <label for="SHBANK">
                                        <img src="http://libraries.submail.cn/images/bank22.jpg" alt="上海银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="GDB" id="GDB"/>
                                    </span>
                                    <label for="GDB">
                                        <img src="http://libraries.submail.cn/images/bank9.jpg" alt="广发银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="HZCBB2C" id="HZCBB2C"/>
                                    </span>
                                    <label for="HZCBB2C">
                                        <img src="http://libraries.submail.cn/images/bank23.jpg" alt="杭州银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="NBBANK" id="NBBANK"/>
                                    </span>
                                    <label for="NBBANK">
                                        <img src="http://libraries.submail.cn/images/bank24.jpg" alt="宁波银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="FDB" id="FDB"/>
                                    </span>
                                    <label for="FDB">
                                        <img src="http://libraries.submail.cn/images/bank25.jpg" alt="富滇银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank">
                                    <span>
                                        <input type="radio" name="payBank" value="POSTGC" id="POSTGC"/>
                                    </span>
                                    <label for="POSTGC">
                                        <img src="http://libraries.submail.cn/images/bank26.jpg" alt="中国邮政储蓄银行"/>
                                    </label>
                                </div>
                                
                                <div class="paybank"><span>
                                    <input type="radio" name="payBank" value="SHRCB" id="SHRCB"/>
                                </span>
                                <label for="SHRCB">
                                    <img src="http://libraries.submail.cn/images/bank21.jpg" alt="上海农商银行"/>
                                </label>
                                </div>
                            </div>
                        </div>
                        <div class='col-lg-12 col-xs-12 col-sm-12 col-md-12'>
                            <div class='pay-operate-line' style='margin:40px 40px;'></div>
                        </div>
                        <div style="margin:0 40px;">
                            <div class='col-lg-4 col-lg-offset-8 col-xs-12 col-sm-6 col-sm-offset-6 col-md-4 col-md-offset-8' >
                                <input type="hidden" name="orderNumber" value="CS2383645155" />
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
                             <h5>银行开户名：创邮信息科技（上海）有限公司<br />银行账号：3669 0188 0001 51447<br />开户银行：光大银行 上海市西支行</h5>
                             <p class="pay-operate-line" style="margin-top:10px;background:#ccc;"></p>
                             <p>请将本页的订单号附在转账备注上</span>，我们在收到您的转账后对该订单自动进行处理，您还可以在转账成功后，前往<a href="/chs/feedback">工单页面</a>向我们提交您的转账凭证,以便我们加速处理您的转账。</p>
                             <p><img src="http://libraries.submail.cn/zh_cn/images/bank-ex.jpg" /></p>
                             <p><br /></p>

                        </div>
                       
                    </div>
                    
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
        

<div class="sections sections-buttom-nav">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-sm-3 col-xs-6 text-center">
                <a href="/chs/documents/info/index" class="btn btn-default btn-block">关于 SUBMAIL</a>
                <a href="/chs/documents/info/7Zm1y2" class="btn btn-default btn-child btn-block">联系我们</a>
                <a href="/chs/documents/info/pOjYF4" class="btn btn-default btn-child btn-block">大客户服务</a>
                <a href="/chs/documents/info/xwFOk3" class="btn btn-default btn-child btn-block">加入我们</a>
            </div>
            
            <div class="col-lg-3 col-sm-3 col-xs-6 text-center">
                <a href="/chs/store" class="btn btn-default btn-block">购买与付款</a>
                <a href="/chs/documents/info/VozyF" class="btn btn-default btn-child btn-block">支付方式</a>
                <a href="/chs/documents/info/6utoQ2" class="btn btn-default btn-child btn-block">关于发票</a>
                <a href="/chs/documents/help/suYXk3" class="btn btn-default btn-child btn-block">定价与计费</a>
                
            </div>
            <div class="clearfix visible-xs"></div>
            <div class="col-lg-3 col-sm-3 col-xs-6 text-center">
                <a href="/chs/documents/help/index" class="btn btn-default btn-block">帮助与支持</a>
                <a href="/chs/documents/help/sRZDd2" class="btn btn-default btn-child btn-block">视频指导</a>
                <a href="/chs/documents/developer/index" class="btn btn-default btn-child btn-block">开发者文档</a>
                <a href="/chs/feedback" class="btn btn-default btn-child btn-block">在线技术支持</a>
            </div>
            <div class="col-lg-3 col-sm-3 col-xs-6 text-center">
                <a href="/chs/blog" class="btn btn-default btn-block">关注我们</a>
                <a href="/chs/blog" class="btn btn-default btn-child btn-block">官网博客</a>
                <a href="http://weibo.com/submail" class="btn btn-default btn-child btn-block" target='_blank'>新浪微博</a>
                <a href="/chs/documents/info/0o64G" class="btn btn-default btn-child btn-block">微信公众平台</a>
            </div>
        </div>
    </div>
</div>



<div class="sections sections-buttom-nav">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-sm-12 col-xs-12 text-center">
                <a href="/" title="SUBMAIL 触发邮件和短信云端服务提供商">
                    <img src="http://libraries.submail.cn/zh_cn/images/buttom-nav-logo-2x.png" width="250" height="42" alt="SUBMAIL 触发邮件和短信云端服务提供商"/>
                </a>
                
            </div>
        </div>
    </div>
</div>
<div class="sections sections-buttom-rights">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 rights-text">
                <p>© 2014 SUBMAIL All Rights reserved. 保留所有权利</p>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 icp-text">
                <p>沪ICP备14046074号</p>
            </div>
        </div>
    </div>
</div>
    </body>
</html>