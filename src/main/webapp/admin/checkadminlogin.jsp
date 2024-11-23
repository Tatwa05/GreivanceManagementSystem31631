<%@page import="com.klef.ep.services.AdminServiceImpl"%>
<%@page import="com.klef.ep.models.Admin"%>
<%@page import="com.klef.ep.services.AdminService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 

String email = request.getParameter("email");
String password = request.getParameter("password");

InitialContext context = new InitialContext();

AdminService adminService = new AdminServiceImpl();

Admin a = adminService.checkadminlogin(email, password);

if(a!=null)
{
	System.out.println("Admin Found");
	
	HttpSession httpsession = request.getSession();
	httpsession.setAttribute("admin", a);
	
	
	
	
	
	response.sendRedirect("adminhome.jsp");
}
else
{
	System.out.println("Admin Not Found");
}

%>