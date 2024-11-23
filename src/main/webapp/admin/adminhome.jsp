<%@page import="com.klef.ep.services.AdminServiceImpl"%>
<%@page import="com.klef.ep.services.AdminService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@include file="adminindex.jsp"  %>
    
<%@page import="com.klef.ep.models.Admin"%>

<%
	AdminService service = new AdminServiceImpl();
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
    background-color: #2a9d8f; /* Dark green */
}

.card:nth-child(2) {
    background-color: #e76f51; /* Dark red */
}

.card:nth-child(3) {
    background-color: #264653; /* Dark blue */
}

.card:nth-child(4) {
    background-color: #6a4c93; /* Dark purple */
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
<%

Admin admin = (Admin) session.getAttribute("admin");

%>

<div class="cards">
    <div class="card">
        <h5 class="card-title">Total Employees</h5>
        <p class="card-text"><%= service.gettotalemps() %></p>
    </div>
    <div class="card">
        <h5 class="card-title">Total Grievances</h5>
        <p class="card-text"><%= service.gettotalgrievances() %></p>
    </div>
    <div class="card">
        <h5 class="card-title">Grievances Solved</h5>
        <p class="card-text"><%= service.getgrievanvessolved() %></p>
    </div>
    <div class="card">
        <h5 class="card-title">Grievances Forwarded</h5>
        <p class="card-text"><%= service.getgreviancesforwarded() %></p>
    </div>
</div>
</body>
</html>
