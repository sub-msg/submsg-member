<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="row" style="margin-top:20px;">
                        <a href="javascript:void(0)" class="btn btn-primary  pull-left hidden-lg hidden-md" id="docmentMenu" style="margin-top:10px; padding-bottom:10px;">
                            <span class="glyphicon glyphicon-align-justify"></span>
                        </a>
                        <ol class="breadcrumb pull-left">
                            <li><a href="/">SUBMSG</a></li>
                            <% 
                             String str = "";
                            Object typeObjectF = request.getAttribute("type");
                       	    int typeF =  typeObjectF==null?0:(Integer)typeObjectF;
                             if(typeF==1){
                            	 str = "<li><a href='/doc/index.sm'>开发者</a></li><li class='active'>文档</li>";
                             }else if(typeF==2){
                            	 str = "<li class='active'>关于 SUBMSG</li>";
                             }else if(typeF==3){
                            	 str = "<li class='active'>帮助与支持</li>";
                             }
                            
                            %>
                            <%=str%>
                        </ol>
                        <div class="clearfix"></div>
                        
                    </div>