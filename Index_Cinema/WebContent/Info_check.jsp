<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String s = request.getParameter("Info");

    if (s != null){	
    	out.print("1");	// 0 代表沒有重複可以新增
    	    }else{
    	out.print("0");
    }

    
    %>
