<%@page import="com.klef.ep.services.AdminServiceImpl"%>
<%@page import="com.klef.ep.services.AdminService"%>
<%@page import="com.klef.ep.models.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 

long id =  Long.parseLong(request.getParameter("id"));
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String position = request.getParameter("position");
String email = request.getParameter("email");
String pwd = request.getParameter("pwd");
String contactno = request.getParameter("contactno");
String status = "Active";



Employee emp = new Employee();

emp.setId(id);
emp.setName(name);
emp.setGender(gender);
emp.setPosition(position);
emp.setEmail(email);
emp.setPassword(pwd);
emp.setContact(contactno);
emp.setStatus(status);

AdminService service = new AdminServiceImpl();

try
{
	service.addemployee(emp);
	response.sendRedirect("addemp.jsp");
}
catch(Exception e)
{
	System.out.println(e);
}




%>