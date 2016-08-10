<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Map.Entry"%>
<%@page import="cn.submsg.member.bo.Doc"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="com.sr178.game.framework.context.ServiceCacheFactory"%>
<%@page import="cn.submsg.member.service.DocService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

                <div  class="col-xs-9 col-lg-3 col-sm-6 col-md-3 sidebar">
                    <div class="search_form">
                        <input type="text" name="search" class="search" placeholder="搜索">
                            <span class="searching"></span>
                            <a class="reset" href="javascript:void(0)">reset</a>
                            </div>
 
		
                            
	<ul class="nav bs-sidenav">
	<%
	 DocService docService = ServiceCacheFactory.getService(DocService.class);
	 Object typeObject = request.getAttribute("type");
	 int type =  typeObject==null?0:(Integer)typeObject;
	 List<Doc> first = docService.getListByTypeAndLevel(type, 0);
	 List<Doc> second = docService.getListByTypeAndLevel(type, 1);
     StringBuffer html = new StringBuffer();
	 for(Doc fdoc:first){
		 html.append("<li><a href='javascript:void(0)'  title='"+fdoc.getDocTitle()+"' id='"+fdoc.getDocId()+"'>"+fdoc.getDocTitle()+"</a>");
		 html.append("<ul class='nav nav-list'>");
		 for(Doc sdoc:second){
			 if(fdoc.getId().intValue()==sdoc.getParentId()){
				 html.append("<li><a href='javascript:void(0)' title='"+sdoc.getDocTitle()+"' id='"+sdoc.getDocId()+"'>"+sdoc.getDocTitle()+"</a></li>");
			 }
		 }
		 html.append("</ul>");
		 html.append("</li>");
	 }
	%>
	<%=html%>
	</ul>
	<ul class="nav bs-searchnav">
                    </ul>
                    
                </div>