<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=1024"/>
        <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7, IE=9" />
        <meta name="Author" content="模版列表 - 短信 － 我的 SUBMSG - submsg.cn  - ${siteAuthor}" />
        <meta name="description" content="${siteDesc}" />
        <meta name="keywords" content="${siteKeyWords}" />
        <title>我的模版 - 短信 － 我的 SUBMSG</title>
        <link rel="stylesheet" href="${libUrl}zh_cn/styleSheets/message_sys_base.css?2.5.0"  type="text/css" />
        <link rel="stylesheet" href="${libUrl}zh_cn/styleSheets/message.css?2.5.0"  type="text/css" />
        <script src="${libUrl}PlugIns/jquery.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/jquery-ui-1.10.4.custom.min.js?2.5.0" type="text/javascript" charset="utf-8" ></script>
        <script src="${libUrl}PlugIns/jquery.cookie.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/jquery.placeholder-1.1.9.js?2.5.0" type="text/javascript" charset="utf-8" ></script>
        <script src="${libUrl}PlugIns/jquery.validate.min.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/address.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/menuHold.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/eventdialog.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/jquery.rotate.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/jquery.client.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}zh_cn/scripts/sys_base.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/submenus/submenus.js" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}zh_cn/scripts/message_project.js?2.5.0" type="text/javascript" charset="utf-8"></script>
    </head>
    <body id="project">
        <%@ include file="/member/cmessage/nav.jsp"%>
        
        <div class="body_container">
            <div class="content_container">
                <div class="content" style="overflow:hidden;min-height: 500px;">
<input name="nextpage" id="nextpage" type="hidden" value="1"/>
                        <div class="searchContainer">
                            <input type="text" name="search" placeholder="搜索"/>
                            
                            <span class="reset"></span>
                            <span class="searchSpinner"><img src="${libUrl}images/spinner_11px_fff.gif" /></span>
                            
                        </div>
                        
                        
                        <div class="projectTitle">
                            
                            
                            <h2>所有项目</h2>
                            <a href="javascript:void(0)" class="settingAdvanced"></a>
                            <ul>
                                <li><a href="#/all" class="menu-houlder" title="所有项目">所有</a></li>
                                <li><a href="#/unsendverify" class="menu-houlder" title="未提交审核">未提交审核</a></li>
                                <li><a href="#/verifying" class="menu-houlder" title="正在审核中">正在审核中</a></li>
                                <li><a href="#/verifyed" class="menu-houlder" title="已通过审核">已通过审核</a></li>
                                <li><a href="#/unverifyed" class="menu-houlder" title="未通过审核">未通过审核</a></li>
                                
                            </ul>
                            <span></span>
                            <p class="clear"></p>
                            
                        </div>
                        <div class="messageProject">
                            <ul id="messageProject">
                            </ul>
                        </div>
                        
                </div>
                
                 <%@ include file="/member/cmessage/bottom.jsp"%>
                           </div>
        </div>
    </body>
</html>