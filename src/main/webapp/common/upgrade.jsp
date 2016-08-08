<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7, IE=9" />
            <meta name="Author" content="${siteAuthor}" />
            <meta name="description" content="${siteDesc}" />
            <meta name="keywords" content="${siteKeyWords}" />
             <title>你的浏览器不被支持访问 submsg.cn － SUBMSG - 短信云端服务提供商</title>
            
            <link rel="stylesheet" href="${libUrl}PlugIns/dist/css/bootstrap.css"  type="text/css" />
            <link rel="stylesheet" href="${libUrl}zh_cn/styleSheets/global.base.css"  type="text/css" />
            
            </head>
    <body>
       <%@ include file="/member/common/nav.jsp"%>
            <div style="width:998px;height:600px;background-color:#fff;margin:40px auto; display:block;">
            <div style="margin:40px;">
                
                <h1>您当前的浏览器不被支持</h1>
                <hr />
                 <img src="${libUrl}images/html5.png" style="float:right;"/>
                <p>要继续访问 submsg.cn, 你的网页浏览器需要支持 HTML5<p>
                <p>请尝试下载你当前浏览器的最新版本，或选择一款 SUBMSG 推荐的浏览器</p>
                
                <p></p>
                <p style="clear:both;"></p>
                <hr />
                <h3 style="color:#007ffc;">推荐浏览器下载：</h3>
                <div style="width:auto;margin:20px auto;">
                    <div style="float:left;width:20%; text-align:center; display:block;">
                        <a href="https://www.google.com/intl/zh-CN/chrome/browser/" style="width:128px;height:128px;display:block;overflow:hidden;" target="_blank">
                            <img src="${libUrl}images/chrome.png" />
                        </a>
                        <p style="margin:10px 0;"><a href="https://www.google.com/intl/zh-CN/chrome/browser/" target="_blank">Google Chrome</a></p>
                    </div>
                    
                    <div style="float:left;width:20%; text-align:center; display:block;">
                        <a href="https://www.mozilla.org/zh-CN/firefox/" style="width:128px;height:128px;display:block;overflow:hidden;" target="_blank">
                            <img src="${libUrl}images/firefox.png" />
                        </a>
                        <p style="margin:10px 0;"><a href="https://www.mozilla.org/zh-CN/firefox/" target="_blank">Firefox</a></p>
                    </div>
                    
                    <div style="float:left;width:20%; text-align:center; display:block;">
                        <a href="http://www.opera.com/" style="width:128px;height:128px;display:block;overflow:hidden;" target="_blank">
                            <img src="${libUrl}images/Opera.png" />
                        </a>
                        <p style="margin:10px 0;"><a href="http://www.opera.com/" target="_blank">Opera</a></p>
                    </div>
                    
                    <div style="float:left;width:20%; text-align:center; display:block;">
                        <a href="http://www.apple.com/safari/" style="width:128px;height:128px;display:block;overflow:hidden;" target="_blank">
                            <img src="${libUrl}images/safari.png" />
                        </a>
                        <p style="margin:10px 0;"><a href="http://www.apple.com/safari/" target="_blank">Safari</a></p>
                    </div>
                    
                    <div style="float:left;width:20%; text-align:center; display:block;">
                        <a href="http://windows.microsoft.com/zh-cn/internet-explorer" style="width:128px;height:128px;display:block;overflow:hidden;" target="_blank">
                            <img src="${libUrl}images/ie.png" />
                        </a>
                        <p style="margin:10px 0;"><a href="http://windows.microsoft.com/zh-cn/internet-explorer" target="_blank">IE 10 以上版本</a></p>
                    </div>
                </div>
            </div>
            
        </div>
        


<%@ include file="/member/common/bottom.jsp"%>
    </body>
</html>