<%@page import="com.sr178.module.web.session.SessionManager"%>
<%@page import="com.sr178.module.web.session.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% Session bottomSession = SessionManager.ins().getSession(session.getId()); %>
                 <div class="footer">
                    <div class="bottomNav">
                       <!-- 
                        <ul><li class="backhome"><a href="/chs/account/" title="返回我的 SubMail">返回我的 SubMSG</a></li>
                            <li class="lr"></li>
                            <li><a href="/index.sm" title="SUBMSG">首页</a></li>
                            <li class="lr"></li>
                            <li><a href="/member/index.sm" title="Message">账户</a></li>
                        </ul> -->
                    </div>
                    
                    <a class="submailfooter" href="http://submsg.cn" title="SubMsg"></a>
                    <div class="footerContainer">
                        <p class="telHelp">需要任何协助，请联系【<a id="mibew-agent-button" href="http://customer-service.submsg.cn:8787/index.php/chat?locale=zh-cn&name=<%=bottomSession.getStringAttr("name") %>" target="_blank" onclick="Mibew.Objects.ChatPopups['57db5b064912484f'].open();return false;">在线客服</a><script type="text/javascript" src="http://customer-service.submsg.cn:8787/js/compiled/chat_popup.js"></script><script type="text/javascript">Mibew.ChatPopup.init({"id":"57db5b064912484f","url":"http:\/\/customer-service.submsg.cn:8787\/index.php\/chat?locale=zh-cn&name=<%=bottomSession.getStringAttr("name") %>","preferIFrame":true,"modSecurity":false,"width":640,"height":480,"resizable":true,"styleLoader":"http:\/\/customer-service.submsg.cn:8787\/index.php\/chat\/style\/popup"});</script>】，SUBMSG 的工程师将为您提供协助 </p><p class="copyright"> Copyright © SUBMSG  2016 
                        </p>
                    </div>

                </div>
