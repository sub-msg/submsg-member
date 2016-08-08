<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7, IE=9" />
            <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7, IE=9" />
            <meta name="Author" content="${siteAuthor}" />
            <meta name="description" content="${siteDesc}" />
            <meta name="keywords" content="${siteKeyWords}" />
                <title>开发者文档 － SUBMSG - 短信云端服务提供商</title>
        <link rel="stylesheet" href="${libUrl}PlugIns/dist/css/bootstrap.css"  type="text/css" />
        <link rel="stylesheet" href="${libUrl}PlugIns/code-prettify/src/prettify.css"  type="text/css" />
        <link rel="stylesheet" href="${libUrl}zh_cn/styleSheets/global.base.css"  type="text/css" />
        <script src="${libUrl}PlugIns/respond/dest/respond.src.js" type="text/javascript" charset="utf-8"></script>
        <link href="${libUrl}PlugIns/respond/cross-domain/respond-proxy.html" id="respond-proxy" rel="respond-proxy" />
        <link href="respond.proxy.gif" id="respond-redirect" rel="respond-redirect" />
        <script src="${libUrl}PlugIns/respond/cross-domain/respond.proxy.js"></script>
        <script src="${libUrl}PlugIns/jquery.js" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}/PlugIns/jquery-ui-1.10.4.custom.min.js" type="text/javascript" charset="utf-8" ></script>
        <script src="${libUrl}PlugIns/jquery.cookie.js" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/address.js" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/eventdialog.js" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/base64.js" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/code-prettify/src/prettify.js" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}zh_cn/scripts/global.base.js" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}zh_cn/scripts/global.developer.documents.js" type="text/javascript" charset="utf-8"></script>
        <%@ include file="/member/common/com_head_element.jsp"%>
    </head>
    <body>
        <%@ include file="/member/common/nav.jsp"%>
           <div id="contents-container" class="container" >
            
            <div class="row">
                <%@ include file="/doc/common/left.jsp"%>
                <div  class="col-xs-12  col-lg-9 col-sm-12 col-md-9">
                     <%@ include file="/doc/common/nav.jsp"%>
                    <div class="row">
                            <div  class="col-xs-12 col-sm-12 col-md-12  col-lg-12 text-center" id="no-results">
                            <h1 style="margin-top:100px;">欢迎使用 SUBMSG 开发者文档</h1>
                            
                            <h4 style="color:#999;">选择目录中的主题或搜索主题。</h4>
                            <img src="${libUrl}images/dev-doc-icon.png" alt="欢迎使用 SUBMSG 开发者帮助文档" style="margin:50px auto;"/>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        

<%@ include file="/member/common/bottom.jsp"%>
        <div class="nav-masker"></div>
    </body>
</html>