<%@page import="com.klef.ep.services.ManagerServiceImpl"%>
<%@page import="com.klef.ep.services.ManagerService"%>
<%@page import="com.klef.ep.services.EmployeeServiceImpl"%>
<%@page import="com.klef.ep.services.EmployeeService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

int gid = Integer.parseInt(request.getParameter("gid"));  // Ensure parameter name matches the JSP link

ManagerService sr = new ManagerServiceImpl();

try {
    sr.onforward(gid);
    response.sendRedirect("viewgrievancesbymanager.jsp"); 
} catch(Exception e) {
    System.out.println(e);
}

%>
