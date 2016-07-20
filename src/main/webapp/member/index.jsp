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
                                                <div class="title">短信发送许可</div>
                                                <div class="des-title"><a href="/mallIndex.sm">购买发送许可</a></div>
                                                <div class="cretis" id="overview_message_credis">${msgInfo.msgNum}</div>
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
                            <div class="des-title"><a href="/chs/message/project" class="highlight" >查看全部模板</a></div>
                            <ul class="qprojects">
                              <li><a href="/member/create.sm"><img src="${libUrl}images/add-new-message.jpg" /><p></p></a></li>
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
    </body>
</html>