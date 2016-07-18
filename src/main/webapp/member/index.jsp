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
        <link rel="stylesheet" href="${libUrl}zh_cn/styleSheets/addTips.css?2.5.0"  type="text/css" />
        <script src="${libUrl}PlugIns/jquery.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/jquery-ui-1.10.4.custom.min.js?2.5.0" type="text/javascript" charset="utf-8" ></script>
        <script src="${libUrl}PlugIns/jquery.placeholder-1.1.9.js?2.5.0" type="text/javascript" charset="utf-8" ></script>
        <script src="${libUrl}PlugIns/jquery.validate.min.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/address.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/menuHold.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/eventdialog.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/jquery.rotate.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}zh_cn/scripts/sys_base.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}zh_cn/scripts/message.overview.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}zh_cn/scripts/addTips.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/submenus/submenus.js" type="text/javascript" charset="utf-8"></script>
    </head>
    <body id="message">
	<div class="header">
		<div class="header_icon">
			<p>
				<a class="message_logo">SubMsg System</a>
			</p>
			<div class="topMenuContainer">
				<ul class="appmenu">
					<li class="create"><a href="/chs/message/applist">应用管理</a></li>
					<li class="create"><a href="/chs/message/create">新建模板</a></li>
					<li class="project"><a href="/chs/message/project">模板列表</a></li>
					<li><a href="/chs/account/logs#/message">计费日志</a></li>
				</ul>
			</div>
			<div class="headerBg"></div>
		</div>
		<div class="accounts">
			<ul>
				<li class="icon_account submenus_container"><a
					href="javascript:void(0)" id="accountbtn"> <img
						src="${libUrl}images/icon/icon64x64.jpg"
						width="32" height="32" /> <span>孟 潮</span>
				</a>
					<div class="submenus_remenu">
						<div class="account_overview">
							<ul>
								<li><a href="/chs/account/settings"><span>账户设置</span></a></li>
								<li><a href="/chs/account/logout" class="logout">登出</a></li>
							</ul>
						</div>
					</div></li>
				<li class="lr"></li>
				<li><a href="/chs/store">商店</a></li>
				<li class="lr"></li>
				<li><a href="/chs/">首页</a></li>
			</ul>
		</div>
	</div>

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
                                                <div class="des-title"><a href="/chs/store">购买发送许可</a></div>
                                                <div class="cretis" id="overview_message_credis">0</div>
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
                            <div class="title">最近使用的项目</div>
                            <div class="des-title"><a href="/chs/message/project" class="highlight" >查看全部模板</a></div>
                            <ul class="qprojects">
                             </ul>
                        </div>
                    </div>
                </div>
                 <div class="footer">
                    <div class="bottomNav">
                        <ul><li class="backhome"><a href="/chs/account/" title="返回我的 SubMail">返回我的 SubMSG</a></li>
                            <li class="lr"></li>
                            <li><a href="/chs/mail" title="Mail">邮件</a></li>
                            <li class="lr"></li>
                            <li><a href="/chs/message" title="Message">短信/语音</a></li>
                            <li class="lr"></li>
                            <li><a href="/chs/addressbook"  title="地址簿">地址簿</a></li>
                            <li class="lr"></li>
                            <li><a href="/chs/developer"  title="应用集成">应用集成</a></li>

                        </ul>
                    </div>
                    
                    <a class="submailfooter" href="http://submail.cn" title="Submail"></a>
                    <div class="footerContainer">
                        <p class="telHelp">需要任何协助，请致电 4008－753－365，SUBMAIL 的工程师将为您提供协助 <a href="/chs/feedback#/create" class="highLinkHack">在线交谈（工单）</a></p><p class="copyright"> Copyright © SUBMAIL  2016  |   <a href="http://submail.cn/chs/documents/info/8Ah141" target="_blank">使用条款</a>    |   <a href="http://submail.cn/chs/documents/info/dTHNB3" target="_blank">关于 SUBMAIL</a>
                        </p>
                    </div>

                </div>
                       </div>
    </body>
</html>