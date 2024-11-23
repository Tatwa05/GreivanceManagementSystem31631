<%@page import="com.klef.ep.services.EmployeeServiceImpl"%>
<%@page import="com.klef.ep.services.EmployeeService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="com.klef.ep.models.Employee"%>
<%@include file="empindex.jsp" %> 
<%

Employee e = (Employee)session.getAttribute("employee");

if(e==null)
{
	response.sendRedirect("sessionexpiry.jsp");
}


long empid = e.getId();

EmployeeService service = new EmployeeServiceImpl();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.cards {
    display: flex;
    justify-content: center;
    margin: 20px;
    margin-top: 100px;
}

.card {
    background-color: white;
    border: 1px solid #ddd;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    margin: 10px;
    padding: 20px;
    width: 250px;
    text-align: center;
    color: white; /* Text color to white */
}

.card:nth-child(1) {
    background-color: #f4a261; /* Bright orange */
}

.card:nth-child(2) {
    background-color: #2a9d8f; /* Bright teal */
}


.card-title {
    font-size: 2em; /* Smaller font size for titles */
    margin-bottom: 10px;
    font-weight: bold; /* Bold text */
}

.card-text {
    font-size: 5em; /* Larger font size for numbers */
    font-weight: bold; /* Bold text */
}
</style>
</head>
<body>


<div class="cards">
    <div class="card">
        <h5 class="card-title">Tickets Raised</h5>
        <p class="card-text"><%= service.gettotalticketsraised(empid) %></p>
    </div>
    <div class="card">
        <h5 class="card-title">Total Grievances</h5>
        <p class="card-text">5</p>
    </div>
    
</div>
</body>
</html>
