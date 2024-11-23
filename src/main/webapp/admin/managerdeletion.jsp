<%@page import="com.klef.ep.services.AdminServiceImpl"%>
<%@page import="com.klef.ep.services.AdminService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<% 


long id =  Long.parseLong(request.getParameter("id")); 

AdminService service = new AdminServiceImpl();

try
{
	service.deleteemp(id);
	response.sendRedirect("viewallmanagers.jsp");
}
catch(Exception e)
{
	System.out.println(e);
}




%>