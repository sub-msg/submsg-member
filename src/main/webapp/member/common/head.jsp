<%@page import="com.sr178.game.framework.config.ConfigLoader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>   
<%
	response.setCharacterEncoding("utf-8");
	response.setHeader("Cache-Control", "no-cache"); //HTTP 1.1
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	response.setDateHeader("Expires", 0); //prevents caching at the proxy server
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("basePath", basePath);
	request.setAttribute("libUrl", ConfigLoader.getStringValue("lib_url", "/"));
	request.setAttribute("imgUrl", ConfigLoader.getStringValue("img_url", "/"));
	request.setAttribute("siteTitle", ConfigLoader.getStringValue("site_title", ""));
	request.setAttribute("siteAuthor", ConfigLoader.getStringValue("site_author", ""));
	request.setAttribute("siteKeywords", ConfigLoader.getStringValue("site_keywords", ""));
	request.setAttribute("siteDesc", ConfigLoader.getStringValue("site_desc", ""));
	request.setAttribute("siteCall", ConfigLoader.getStringValue("site_call", ""));
	request.setAttribute("siteIcp", ConfigLoader.getStringValue("site_icp", ""));
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN" >
        <head>
        <!--<base href="${basePath}">-->
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7, IE=9" />
            <meta name="Author" content="${siteAuthor}" />
            <meta name="description" content="${siteDesc}" />
            <meta name="keywords" content="${siteKeyWords}" />
            <title>${siteTitle}</title>
            <!--[if lt IE 8 ]>
             <script type="text/javascript" charset="utf-8">
             window.location.href="/chs/welcome/UpgradeYourBrowser";
             </script>
             <![endif]-->
            <link rel="stylesheet" href="${libUrl}/PlugIns/dist/css/bootstrap.css" type="text/css" />
            <link rel="stylesheet" href="${libUrl}/PlugIns/code-prettify/src/prettify.css" type="text/css" />
            <link rel="stylesheet" href="${libUrl}/zh_cn/styleSheets/global.base.css" type="text/css" />
            <link rel="stylesheet" href="${libUrl}/zh_cn/styleSheets/action.css" type="text/css" />
            <link rel="stylesheet" href="${libUrl}/zh_cn/styleSheets/new_main-12.css" type="text/css" />
            <link href="${imgUrl}/video-js.css" rel="stylesheet" />
            

<script type="text/javascript">
  document.write=function() {};
  document.writeln=function() {};
</script>

            <script src="${libUrl}/PlugIns/jquery.js" type="text/javascript" charset="utf-8"></script>
            <script src="${libUrl}/PlugIns/code-prettify/src/prettify.js" type="text/javascript" charset="utf-8"></script>
            <script src="${libUrl}/PlugIns/jquery.mobile.custom.min.js" type="text/javascript" charset="utf-8"></script>
            <script src="${libUrl}/PlugIns/dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
            <script src="${libUrl}/zh_cn/scripts/global.base.js" type="text/javascript" charset="utf-8"></script>
            <script src="${libUrl}/zh_cn/scripts/global.welcome.js" type="text/javascript" charset="utf-8"></script>
            </head>
