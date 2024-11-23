<%@page import="com.klef.ep.models.Employee"%>
<%@page import="com.klef.ep.services.EmployeeServiceImpl"%>
<%@page import="com.klef.ep.services.EmployeeService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
    <%
    	long id = Long.parseLong(request.getParameter("empid"));
    	String name = request.getParameter("name");
    	String email = request.getParameter("email");
    	String  contact = request.getParameter("contact");
    	
    	EmployeeService service = new EmployeeServiceImpl();
    	
    	service.updateprofile(id, name, email, contact);
    	
    	Employee e = service.viewempbyid(id);
    	
    	
    	
    	session.setAttribute("employee", e);
    	
     	System.out.println("Employee Profile updated");
    	
    	response.sendRedirect("employeehome.jsp");
    %>