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

            <link rel="stylesheet" href="${libUrl}PlugIns/dist/css/bootstrap.css?2.5.0"  type="text/css" />
            <link rel="stylesheet" href="${libUrl}zh_cn/styleSheets/global.base.css?2.5.0"  type="text/css" />
            <script src="${libUrl}PlugIns/jquery.js" type="text/javascript" charset="utf-8"></script>
            <script src="${libUrl}PlugIns/address.js" type="text/javascript" charset="utf-8"></script>
            <script src="${libUrl}PlugIns/jquery.cookie.js" type="text/javascript" charset="utf-8"></script>
            <script src="${libUrl}PlugIns/dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
            <script src="${libUrl}zh_cn/scripts/global.base.js?2.5.0" type="text/javascript" charset="utf-8"></script>
            <script src="${libUrl}zh_cn/scripts/global.store.js?2.5.0" type="text/javascript" charset="utf-8"></script>
            <%@ include file="/member/common/com_head_element.jsp"%>
            </head>
    <body>
   <%@ include file="/member/common/nav.jsp"%>
   <div class='section d-sas-homeAds'>
            <div class='container d-sas-selections'>
                <div class='row store-title'>
                    <div  class='col-lg-12 col-xs-12 col-sm-12 col-md-12'>
                    <p style="font-size:44px;margin-bottom:-5px;">商店</p>
                    <p style="font-size:14px;margin-bottom:-5px;">购买发送服务</p>
                    <p style="font-size:44px">STORE</p>
                    </div>
                </div>
                <div class='row'>
                    <div class='col-lg-3 col-xs-12 col-sm-3 col-md-3'>
                        <a href='/index!mallIndex.sm#/all' class=' d-sas-section d-sas-selected' id='d-sas-section' title='all'>短信</a>
                    </div>

                    <div class='col-lg-3 col-xs-12 col-sm-3 col-md-3'>
                        <div class='d-sas-count' style='display:none;'></div>
                    </div>
                </div>
            </div>
            <div id="topCarousel" class="carousel">
            <div class='carousel-inner'>
                <div class='d-sas-item active'><img src="${libUrl}images/store-background.jpg" class="hero-img hidden-xs" alt="submsg" /></div>
            </div>
            </div>
        </div>
            <div class='container d-sas-presents'>
                
                <div id='d-sas-message' class='d-sas-depart'>
                    <div id='title' class='d-sas-parts'>
                        <div class='d-sas-img-title'><img style='width:120px;height:64px;margin-right:10px;'  src="${libUrl}images/store/sms.svg" /></div>
                        <div class='d-sas-text-title'>
                            <p style="margin-top:-3px;">短信</p>
                            <p class='d-sas-title-ex'>购买发送许可</p>
                        </div>
                    </div>
                    <div class='d-sas-line2'></div>
                    <div id='message_presents' class='presents'></div>
                </div>
   
            </div>
     <div class="sections sections-signupnow">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-sm-12 col-xs-12">
                <div class="col-lg-4 col-sm-3 col-xs-0"></div>
                <div class="col-lg-4 col-sm-6 col-xs-12">
                    <a href="/chs/account/login#/signup" class="btn btn-primary btn-lg btn-block">立即免费试用</a>
                </div>
            </div>
        </div>
    </div>
</div>        
<%@ include file="/member/common/bottom.jsp"%>
    </body>
</html>