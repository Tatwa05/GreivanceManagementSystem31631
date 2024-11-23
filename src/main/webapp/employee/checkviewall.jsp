<%@page import="com.klef.ep.models.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

Employee emp = (Employee)session.getAttribute("employee");

if(emp.getPosition().equals("MANAGER"))
{
	response.sendRedirect("viewgrievancesbymanager.jsp");
}
else
{
	response.sendRedirect("unauthorisedaccess.jsp");
}

System.out.println("check view all page");
%>