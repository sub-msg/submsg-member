<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=1024"/>
        <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7, IE=9" />
        <meta name="Author" content="日志 － 我的 SUBMAIL - submail.cn  - 专注于事务类邮件和短信的云服务" />
        <meta name="description" content="submail.cn 触发邮件和触发短信云端服务平台, 适用于公司的专业事务类邮件和短信发送业务。价格低廉, 品质卓越, 是国内少有的专业邮件和短信服务提供商。SUBMAIL 不仅提供高速的、高稳定性的、高安全性的、电子邮件服务, 还提供更加方便快捷的 A2P 短信发送, 并提供smtp服务和网站集成API, 使中小型企业、网店、电子商务、移动应用、和网站等的触发短信和触发邮件集成更加方便, 成本更低廉。 " />
        <meta name="keywords" content="事务类邮件通道,触发邮件,邮件API,事务类短信通道,触发短信,短信网关,短信接口,短信API,submail " />
        <title>日志 － 我的 SUBMAIL</title>
        <link rel="stylesheet" href="http://libraries.submail.cn/PlugIns/jcrop/jquery.Jcrop.min.css?2.5.0"  type="text/css" />
        <link rel="stylesheet" href="http://libraries.submail.cn//zh_cn/styleSheets/account_sys_base.css?2.5.0"  type="text/css" />
        <link rel="stylesheet" href="http://libraries.submail.cn//PlugIns/datapicker_developer/jquery-ui-1.10.4.custom.css?2.5.0"  type="text/css" />
        <link rel="stylesheet" href="http://libraries.submail.cn//PlugIns/jquery.mCustomScrollbar.css?2.5.0"  type="text/css" />
        <link rel="stylesheet" href="http://libraries.submail.cn//zh_cn/styleSheets/logs.css?2.5.0"  type="text/css" />
        <script src="http://libraries.submail.cn//PlugIns/jquery.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="http://libraries.submail.cn//PlugIns/jquery-ui-1.10.4.custom.min.js?2.5.0" type="text/javascript" charset="utf-8" ></script>
        <script src="http://libraries.submail.cn//PlugIns/jquery.placeholder-1.1.9.js?2.5.0" type="text/javascript" charset="utf-8" ></script>
        <script src="http://libraries.submail.cn//PlugIns/jquery.validate.min.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="http://libraries.submail.cn//PlugIns/address.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="http://libraries.submail.cn//PlugIns/menuHold.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="http://libraries.submail.cn//PlugIns/eventdialog.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="http://libraries.submail.cn//PlugIns/jquery.mCustomScrollbar.concat.min.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="http://libraries.submail.cn//PlugIns/base64.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="http://libraries.submail.cn//PlugIns/highcharts/highcharts.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="http://libraries.submail.cn//PlugIns/jquery.rotate.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="http://libraries.submail.cn//PlugIns/jquery-dateFormat.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="http://libraries.submail.cn//PlugIns/countUp.min.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="http://libraries.submail.cn//zh_cn/scripts/sys_base.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="http://libraries.submail.cn//zh_cn/scripts/account.logs.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="http://libraries.submail.cn//PlugIns/submenus/submenus.js" type="text/javascript" charset="utf-8"></script>
        <link rel="stylesheet" href="http://libraries.submail.cn//zh_cn/styleSheets/addTips.css?2.5.0"  type="text/css" />
        <script src="http://libraries.submail.cn//zh_cn/scripts/addTips.js?2.5.0" type="text/javascript" charset="utf-8"></script>
    </head>
    <body id="logs">
        <div class="header">
            <div class="header_icon">
                <p><a class="account_logo" href="/chs/account/">SubMail System</a></p>
<div class="submenus_container appmenucontainer">
<a href="javascript:void(0)" class="topMenuControllerShow" title="显示/隐藏 菜单"></a>
<div class="submenus_remenu">
<div class="app-menu-container">
<div class="menu-section">
<a href="/chs/mail">
<span class="app-icon"><img src="http://libraries.submail.cn/images/new_main/new_main_icon1.svg" /></span>
<span class="app-name">邮件</span>
</a>
</div>
<div class="menu-section">
<a href="/chs/message">
<span class="app-icon"><img src="http://libraries.submail.cn/images/new_main/new_main_icon2.svg" /></span>
<span class="app-name">短信</span>
</a>
</div>
<div class="menu-section">
<a href="/chs/mobiledata">
<span class="app-icon"><img src="http://libraries.submail.cn/images/new_main/new_main_icon3.svg" /></span>
<span class="app-name">手机流量</span>
</a>
</div>
<div class="menu-section">
<a href="#">
<span class="app-icon"><img src="http://libraries.submail.cn/images/new_main/new_main_icon4.svg" /></span>
<span class="app-name">物联网</span>
</a>
</div>
<div class="menu-section">
<a href="/chs/message">
<span class="app-icon"><img src="http://libraries.submail.cn/images/new_main/new_main_icon5.svg" /></span>
<span class="app-name">语音</span>
</a>
</div>
<div class="menu-section">
<a href="/chs/addressbook">
<span class="app-icon"><img src="http://libraries.submail.cn/zh_cn/images/menus/addressbook_icon.svg" /></span>
<span class="app-name">地址簿</span>
</a>
</div>
<div class="menu-section">
<a href="/chs/developer">
<span class="app-icon"><img src="http://libraries.submail.cn/zh_cn/images/menus/developer_icon.svg" /></span>
<span class="app-name">开发者</span>
</a>
</div>
<div class="menu-section">
<a href="/chs/account">
<span class="app-icon"><img src="http://libraries.submail.cn/zh_cn/images/menus/account_icon.svg" /></span>
<span class="app-name">用户中心</span>
</a>
</div>
<div class="menu-section">
<a href="/">
<span class="app-icon"><img src="http://libraries.submail.cn/zh_cn/images/menus/homepage_icon.svg" /></span>
<span class="app-name">首页</span>
</a>
</div>
</div>
</div>
</div>

<div class="topMenuContainer">
    <ul class="appmenu">
        <li class="logs"><a href="/chs/account/logs">账户日志</a></li>
        <li class="orders"><a href="/chs/account/orders#/buy">订单</a></li>
        <li class="notif"><a href="/chs/account/notification#/notif">通知中心</a></li>
        <li class="feedback"><a href="/chs/feedback">工单</a></li>
        <li class="settings"><a href="/chs/account/settings">偏好设置</a></li>
    </ul>
    <!--
<ul class="topMenu">
    <li><a href="/chs/mail" class="mail"><span class="icon"></span><span>邮件</span></a></li>
    <li><a href="/chs/message" class="message"><span class="icon"></span><span>短信/语音</span></a></li>
    <li><a href="/chs/addressbook" class="addressbook"><span class="icon"></span><span>地址薄</span></a></li>
    <li><a href="/chs/developer" class="developer"><span class="icon"></span><span>应用集成</span></a></li>
    <li><a href="/chs/account" class="account"><span class="icon"></span><span>账户</span></a></li>
</ul>
-->
<div id="menus">
    <a href="javascript:;" class="menu-close">close</a>
    <div class="menus-background"></div>
    <div class="top-background"></div>
    <div class="hmenu-container">
        <ul class="hmenu">
            <li class="animated zoomIn"><a href="/chs/mail" class="mail">邮件</a></li>
            <li class="animated zoomIn"><a href="/chs/message" class="sms">短信</a></li>
            <li class="animated zoomIn"><a href="/chs/mobiledata" class="mobiledata">手机流量</a></li>
            <li class="animated zoomIn"><a href="/chs/iot" class="iot">物联网</a></li>
            <li class="animated zoomIn"><a href="/chs/voice" class="voice">语音</a></li>
            <li class="animated zoomIn"><a href="/chs/addressbook" class="addressbook">地址薄</a></li>
            <li class="animated zoomIn"><a href="/chs/developer" class="developer">开发者</a></li>
            <li class="animated zoomIn"><a href="/chs/account" class="account">账户</a></li>
        </ul>
    </div>
    <div class="smenu-container">
        
        <ul class="s-menu mail">
            <li class=""><a href="/chs/mail/create" class="">创建新邮件</a></li>
            <li class="smenu80"><a href="/chs/mail/project" class="">邮件项目</a></li>
            <li class="smenu60"><a href="/chs/mail/history">分析报告</a></li>
            <li class="smenu40"><a href="/chs/developer/analytics/mail">API 分析报告</a></li>
            <li class="smenu20"><a href="/chs/developer/history/mail">API 历史明细</a></li>
            <li class="smenu0"><a href="/chs/account/mailSettings#/mail">偏好设置</a></li>
        </ul>
        <ul class="s-menu sms">
            <li><a href="/chs/message/create">创建新短信</a></li>
            <li class="smenu80"><a href="/chs/message/project">短信项目</a></li>
            <li class="smenu60"><a href="/chs/message/history">分析报告</a></li>
            <li class="smenu40"><a href="/chs/developer/analytics/message">API 分析报告</a></li>
            <li class="smenu20"><a href="/chs/developer/history/message">API 历史明细</a></li>
            <li class="smenu0"><a href="#">短信上行</a></li>
            <li class="smenu0"><a href="/chs/account/messageSettings#/message">偏好设置</a></li>
        </ul>
        <ul class="s-menu mobiledata">
            <li><a href="#">新建分发任务</a></li>
            <li class="smenu80"><a href="#">流量充值明细</a></li>
            <li class="smenu60"><a href="#">分析报告</a></li>
            <li class="smenu40"><a href="#">偏好设置</a></li>
        </ul>
        <ul class="s-menu iot">
            <li><a href="#">物联网卡管理</a></li>
            <li class="smenu80"><a href="#">历史明细</a></li>
            <li class="smenu60"><a href="#">分析报告</a></li>
            <li class="smenu40"><a href="#">故障排除</a></li>
            <li class="smenu20"><a href="#">偏好设置</a></li>
        </ul>
        <ul class="s-menu voice">
            <li><a href="#">创建语音模板</a></li>
            <li class="smenu80"><a href="#">语音项目</a></li>
            <li class="smenu60"><a href="#">API 分析报告</a></li>
            <li class="smenu40"><a href="#">API 历史明细</a></li>
        </ul>
        <ul class="s-menu addressbook">
            <li><a href="/chs/addressbook">管理地址簿</a></li>
            <li class="smenu80"><a href="/chs/account/addressbookSettings#/addressbook/subscribe">订阅设置</a></li>
        </ul>
        <ul class="s-menu developer">
            <li><a href="/chs/developer/apps">管理 APPID</a></li>
            <li class="smenu80"><a href="/chs/developer/analytics">API 分析报告</a></li>
            <li class="smenu60"><a href="/chs/developer/history">API 历史明细</a></li>
            <li class="smenu40"><a href="/chs/account/logs#/api">API 错误日志</a></li>
            <li class="smenu20"><a href="/chs/account/developerSettings#/developer/subhooks">SUBHOOK</a></li>
            <li class="smenu0"><a href="/chs/account/developerSettings#/developer/general">偏好设置</a></li>
        </ul>
        <ul class="s-menu account">
            <li><a href="/chs/account/logs">消费日志</a></li>
            <li class="smenu80"><a href="/chs/account/orders#/buy">订单</a></li>
            <li class="smenu60"><a href="/chs/account/notification#/notif">通知中心</a></li>
            <li class="smenu40"><a href="/chs/feedback">工单</a></li>
            <li class="smenu20"><a href="/chs/account/settings">账户设置</a></li>
        </ul>
    </div>
</div>
</div>


<div class="headerBg"></div>            </div>
            <div class="accounts">
                
<ul>
    <li class="icon_account submenus_container">
        <a href="javascript:void(0)" id="accountbtn">
            <img src="http://images.submail.cn/public/397007dce1fc7aaf645fdaad2b30d093/icon/icon64x64.jpg" width="32" height="32" />
            <span>孟 潮</span>
            <div id="overview_alert">0</div>
        </a>
        <div class="submenus_remenu">
            <div class="account_overview">
                <div class="credits emailCreditsContainer" >
                    <div class="creditsCount">
                        <div>
                            <p>邮件发送余额</p>
                            <p class="creditsCountNum emailCredits"><span style="font-size:12px;">正在加载</span></p>
                        </div>
                    </div>
                    <div class="creditsIcon" style="border-radius: 0px 5px 0px 0px;">
                        <svg version="1.1" class="credits_icon"  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                            width="45px" height="45px" viewBox="0 0 28.342 28.343" enable-background="new 0 0 28.342 28.343" xml:space="preserve">
                            <path fill="#FFFFFF" d="M14.171,1c7.263,0,13.171,5.908,13.171,13.171s-5.908,13.172-13.171,13.172S1,21.434,1,14.171
                            S6.908,1,14.171,1 M14.171,0C6.345,0,0,6.345,0,14.171c0,7.827,6.345,14.172,14.171,14.172s14.171-6.345,14.171-14.172
                            C28.342,6.345,21.997,0,14.171,0L14.171,0z"/>
                            <g>
                                <g>
                                    <path fill="#FFFFFF" d="M13.113,14.818c1.034,0.614,1.55,0.614,2.492-0.006l7.081-5.303c-0.183-0.851-0.949-1.501-1.849-1.501
                                    H7.899c-0.9,0-1.667,0.651-1.849,1.502L13.113,14.818z"/>
                                    <path fill="#FFFFFF" d="M15.786,15.068c-0.53,0.349-0.955,0.524-1.392,0.524c-0.434,0-0.881-0.172-1.456-0.515L6.009,9.871
                                    c0,0.009-0.001,0.019-0.001,0.028v8.02c0,1.035,0.857,1.893,1.891,1.893h12.939c1.033,0,1.891-0.857,1.891-1.893v-8.02
                                    c0-0.01-0.001-0.019-0.002-0.029L15.786,15.068z"/>
                                </g>
                            </g>
                        </svg>
                    </div>
                </div>
                
                
                <div class="freeCredits">
                    <div class="wrip">
                        <div class="text" style="width:40%">每日免费发送余额</div>
                        <div class="text"  style="text-align:right;width:60%; font-size:10px; color:#ccc;">此发送许可仅限触发类邮件</div>
                        <p class="clear"></p>
                        <div class="freeCrediter">
                            <div class="used"></div>
                        </div>
                        <div class="text free_used">350</div>
                        <div class="text" style="text-align:right;" id="free_ent">500</div>
                    </div>
                </div>
                <div class="credits messageCreditsContainer">
                    <div class="creditsCount">
                        <div>
                            <p>短信/语音发送余额</p>
                            <p class="creditsCountNum messageCredits"><span style="font-size:12px;">正在加载</span></p>
                        </div>
                    </div>
                    <div class="creditsIcon">
                        <svg version="1.1" class="credits_icon"  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                            width="45px" height="45px" viewBox="0 0 28.342 28.343" enable-background="new 0 0 28.342 28.343" xml:space="preserve">
                            <path fill="#FFFFFF" d="M14.171,1c7.263,0,13.171,5.908,13.171,13.171s-5.908,13.172-13.171,13.172S1,21.434,1,14.171
                            S6.908,1,14.171,1 M14.171,0C6.345,0,0,6.345,0,14.171c0,7.827,6.345,14.172,14.171,14.172s14.171-6.345,14.171-14.172
                            C28.342,6.345,21.997,0,14.171,0L14.171,0z"/>
                            <path id="XMLID_27_" fill="#FFFFFF" d="M9.788,19.858c-0.847,0.266-1.668,0.53-2.7,0.874c0.132-0.557,0.211-0.926,0.291-1.297
                            c0.106-0.397,0.239-0.793,0.371-1.218c-0.238-0.397-0.476-0.796-0.688-1.191c-1.324-2.436-1.086-5.083,0.661-7.201
                            c3.125-3.839,9.637-3.892,12.813-0.08c2.118,2.542,2.065,5.982-0.132,8.472c-2.146,2.437-5.797,3.335-9.054,2.251
                            C10.874,20.283,10.396,20.071,9.788,19.858z"/>
                        </svg>
                    </div>
                </div>
                <div class="credits mobiledataCreditsContainer">
                    <div class="creditsCount">
                        <div>
                            <p>流量/物联网余额</p>
                            <p class="creditsCountNum mobiledataCredits"><span style="font-size:12px;">正在加载</span></p>
                        </div>
                    </div>
                    <div class="creditsIcon">
                        <svg version="1.1" class="credits_icon"  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                            width="45px" height="45px" viewBox="0 0 28.342 28.343" enable-background="new 0 0 28.342 28.343" xml:space="preserve">
                            <path fill="#FFFFFF" d="M14.171,1c7.263,0,13.171,5.908,13.171,13.171s-5.908,13.172-13.171,13.172S1,21.434,1,14.171
                            S6.908,1,14.171,1 M14.171,0C6.345,0,0,6.345,0,14.171c0,7.827,6.345,14.172,14.171,14.172s14.171-6.345,14.171-14.172
                            C28.342,6.345,21.997,0,14.171,0L14.171,0z"/>
                            <g>
                                <path fill="#FFFFFF" d="M8.499,19.959v-2.245h3.889v-1.178l-0.301-0.63H8.499v-2.245h2.52L7.129,5.309h3.998l2.93,7.367h0.055
                                l3.067-7.367h3.943l-3.971,8.353h2.52v2.245h-3.588l-0.301,0.63v1.178h3.889v2.245h-3.889v4.354h-3.396v-4.354H8.499z"/>
                            </g>
                        </svg>
                    </div>
                </div>
                <ul>
                   <li> <a href="/chs/feedback" style="position: relative;"><span>在线支持(工单)</span><div class="feedback_alert">0</div></a></li>
                 <li> <a href="/chs/account/logs" ><span >账户日志</span></a></li>
                 <li> <a href="/chs/account/settings"><span>账户设置</span></a></li>
                 <li> <a href="/chs/account/logout" class="logout">登出</a></li>
                </ul>
            </div>
        </div>
    </li>
    <li class="lr"></li>
    
    <li><a href="/chs/store">商店</a></li>
    <li class="lr"></li>
    
    <li><a href="/chs/">首页</a></li>
    <li class="help"><a href="javaScript:;" target="_blank">帮助</a></li>
</ul>            </div>
        </div>
        
        <div class="body_container">
            <div class="noresults">
                <div class="logsNoneSelect">
                </div>
            </div>
            <div class="content_container">
                <div class="content" style="display:block;">
                    <h2 class="trackingtitle">日志</h2>
                    <div class="analyticsDataOptions">
                        <div id='loader'></div>
                        <div id="dataSelector">
                            <a href="javascript:void(0)" id="dateSelecter">
                                <span class="date">2014年4月11日 - 2014年5月11日</span>
                                <span class="icon"></span>
                                <span class="link"></span>
                            </a>
                            <div id="dataSelectorContainer">
                                <div id="dataPickerContainer">
                                    <div id="dataPicker"></div>
                                </div>
                                <div id="dataOptions">
                                    <div class="dateSelect">日期范围:
                                        <div class="dropdown" style="width:70px;">
                                            <select id="defindDate" class="dropdown-select">
                                                <option value="none">自定义</option>
                                                <option value="today">今天</option>
                                                <option value="yesterday">昨天</option>
                                                <option value="thisweek">本周</option>
                                                <option value="lastweek">上周</option>
                                                <option value="thismonth">本月</option>
                                                <option value="lastmonth">上月</option>
                                                <option value="thisquarter">本季度</option>
                                                <option value="lastquarter">上季度</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="dateInputContainer">
                                        开始日期: <input type="text" id="fromDate" class="dateInput" />
                                    </div>
                                    <div class="dateInputContainer">
                                        结束日期: <input type="text"  id="toDate" class="dateInput" />
                                    </div>
                                    <div class="options">
                                        <input type="button" id="submitDatePicker" class="confirmBtn datesubmit" value="应用" disabled/>
                                        <a href="javascript:void(0)" id='cancelDatePicker' class='cancelBtn datecancel'>取消</a>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" name="fromDate" />
                            <input type="hidden" name="toDate" />
                        </div>
                    </div>
                    
                    <p class="clear"></p>
                    <div id="logsView">
                    </div>
                </div>
                
                
                
                
                 <div class="footer">

                    <div class="bottomNav">
                        <ul><li class="backhome"><a href="/chs/account/" title="返回我的 SubMail">返回我的 SubMail</a></li>
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
        </div>
        <div class="historySidebar">
            <div class="historyContainer">
                <ul>
  <!--                   <li>
                        <a href="javascript:void(0)"><span>消费日志</span></a>
                        <ul>
                            <li><a href="#/mail" ><span>邮件消费日志</span></a></li>
                            <li><a href="#/message" ><span>短信消费日志</span></a></li>
                            <li><a href="#/mobiledata" ><span>语音消费日志</span></a></li>
                            <li><a href="#/voice" ><span>语音消费日志</span></a></li>

                        </ul>
                    </li> -->
                    <li><a href="#/mail" ><span>邮件消费日志</span></a></li>
                    <li><a href="#/message" ><span>短信消费日志</span></a></li>
                    <li><a href="#/mobiledata" ><span>手机流量消费日志</span></a></li>
                    <li><a href="#/voice" ><span>语音消费日志</span></a></li>
                    <li>
                        <a href="/chs/developer/history#/mail" ><span>邮件 API 发送历史明细</span></a>
                    </li>
                    <li>
                        <a href="/chs/developer/history#/message" ><span>短信 API 发送历史明细</span></a>
                    </li>
                    <li>
                        <a href="/chs/developer/history#/voice" ><span>语音 API 发送历史明细</span></a>
                    </li>
                    <li>
                        <a href="#/api" ><span>API 错误日志</span></a>
                    </li>
                    <li>
                        <a href="#/login" ><span>登录日志</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </body>
</html>