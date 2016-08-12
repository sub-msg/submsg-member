<%@page import="com.sr178.module.web.session.Session"%>
<%@page import="com.sr178.module.web.session.SessionManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="navbar navbar-default navstyle navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">SUBMSG Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand submail_top_logo" href="/index.sm"  title="首页 | SUBMSG"><span>SUBMSG</span></a>
        </div>
        <hr class="nav-hr visible-xs">
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="sms-nav"><a href="/smsIndex.sm">短信</a></li>
                <li class="store-nav"><a href="/mallIndex.sm"><span class="hidden-sm">在线购买</span><span class="visible-sm">商店</span></a></li>
                <li class="developer-nav"><a href="/doc/index.sm">开发文档</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                  <%
                     Session mySession = SessionManager.ins().getSession(session.getId());
                     if(mySession!=null){
                    	 %>
                      <li><a href="/member/index.sm" style="padding-left:38px;margin-left: 10px;"><img src="${libUrl}images/icon/icon64x64.jpg" width="32" height="32" style="position: absolute;top:8px;left: 0px;border-radius:16px;-webkit-border-radius:16px;-moz-border-radius:16px;-o-border-radius:16px;-khtml-border-radius:16px;" /><%=mySession.getStringAttr("name") %></a></li>
                    	 <%
                     }else{
                    	 %>
                      <li><a href="/account.sm#/login">登录</a></li><li><a href="/account.sm#/signup" class="btn btn-primary navbar-btn" style="font-size: 14px;color:#fff; background: #007ffc;padding:6px 15px;margin-left:10px;margin-right:10px;">注册</a></li></ul>
                    	 <%
                     }
                  %>
        </div>
    </div>
</div> 


