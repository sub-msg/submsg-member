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
		<title>日志 － 我的 SUBMSG</title>
        <link rel="stylesheet" href="${libUrl}PlugIns/jcrop/jquery.Jcrop.min.css?2.5.0"  type="text/css" />
        <link rel="stylesheet" href="${libUrl}zh_cn/styleSheets/account_sys_base.css?2.5.0"  type="text/css" />
        <link rel="stylesheet" href="${libUrl}PlugIns/datapicker_developer/jquery-ui-1.10.4.custom.css?2.5.0"  type="text/css" />
        <link rel="stylesheet" href="${libUrl}PlugIns/jquery.mCustomScrollbar.css?2.5.0"  type="text/css" />
        <link rel="stylesheet" href="${libUrl}zh_cn/styleSheets/logs.css?2.5.0"  type="text/css" />
        <script src="${libUrl}PlugIns/jquery.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/jquery-ui-1.10.4.custom.min.js?2.5.0" type="text/javascript" charset="utf-8" ></script>
        <script src="${libUrl}PlugIns/jquery.placeholder-1.1.9.js?2.5.0" type="text/javascript" charset="utf-8" ></script>
        <script src="${libUrl}PlugIns/jquery.validate.min.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/address.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/menuHold.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/eventdialog.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/jquery.mCustomScrollbar.concat.min.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/base64.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/highcharts/highcharts.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/jquery.rotate.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/jquery-dateFormat.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/countUp.min.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}zh_cn/scripts/sys_base.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}zh_cn/scripts/account.logs.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/submenus/submenus.js" type="text/javascript" charset="utf-8"></script>
        <link rel="stylesheet" href="${libUrl}zh_cn/styleSheets/addTips.css?2.5.0"  type="text/css" />
        <script src="${libUrl}zh_cn/scripts/addTips.js?2.5.0" type="text/javascript" charset="utf-8"></script>
    </head>
    <body id="logs">
       <%@ include file="/member/cmessage/nav.jsp"%>
        
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
                  <%@ include file="/member/cmessage/bottom.jsp"%>
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
                    <li><a href="#/message" ><span>短信日志</span></a></li>
                    <li>
                        <a href="#/buy" ><span>购买日志</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </body>
</html>