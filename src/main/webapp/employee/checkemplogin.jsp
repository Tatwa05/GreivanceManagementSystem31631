<%@page import="com.klef.ep.models.Employee"%>
<%@page import="com.klef.ep.services.EmployeeServiceImpl"%>
<%@page import="com.klef.ep.services.EmployeeService"%>
<%@page import="com.klef.ep.services.AdminService"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<% 

long id = Long.parseLong(request.getParameter("id"));
String password = request.getParameter("password");



EmployeeService empService = new EmployeeServiceImpl();

Employee e = empService.checkemplogin(id, password);

if(e!=null)
{
	System.out.println("Employee Found");
	
	HttpSession httpsession = request.getSession();
	httpsession.setAttribute("employee", e);
	
	Employee emp = (Employee) session.getAttribute("employee");
	
	if(emp.getStatus().equals("Active"))
	{
		response.sendRedirect("employeehome.jsp");
	}
	
	else
	{
		response.sendRedirect("unabletoaccess.jsp");
	}
	
	
	
}
else
{
	System.out.println("Employee Not Found");
}

%>