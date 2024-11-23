<%@page import="com.klef.ep.services.EmployeeServiceImpl"%>
<%@page import="com.klef.ep.services.EmployeeService"%>
<%@page import="com.klef.ep.models.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

Employee e = (Employee) session.getAttribute("employee");

String pwd = request.getParameter("pwd");
String cpwd = request.getParameter("cpwd");

long eid = e.getId();

if(pwd.equals(cpwd))
{
	EmployeeService service = new EmployeeServiceImpl();
	
	service.changepassword(eid, pwd);
	
	System.out.println("passwords being changed");
	
	session.removeAttribute("employee");
	response.sendRedirect("http://localhost:2014/EPPROJECT/emplogin.jsp");
}
else
{
	%>
		<script type="text/javascript">
				window.alert("check passwords once again ")
        </script>
	<%
}

%>