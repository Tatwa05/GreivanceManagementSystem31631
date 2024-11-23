<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
   		session.removeAttribute("admin");
   		response.sendRedirect("http://localhost:2014/EPPROJECT/adminlogin.jsp");
%>