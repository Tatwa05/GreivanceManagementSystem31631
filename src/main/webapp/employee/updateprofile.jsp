<!DOCTYPE html>
<%@page import="com.klef.ep.models.Employee"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Profile</title>
   
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Comfortaa:wght@300&amp;display=swap');
        body {
    font-family: 'Comfortaa', cursive;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    background-color: #ffffff;
    border-radius: 10px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    padding: 20px;
    max-width: 400px;
    width: 100%;
}

h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

form {
    display: flex;
    flex-direction: column;
}

label {
    margin-bottom: 5px;
    color: #666;
}

input[type="text"],
input[type="email"] {
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}

input[type="text"]:focus,
input[type="email"]:focus {
    border-color: #333;
}

.update-button {
    text-align: center;
    display: block;
    background-color: #333;
    color: #fff;
    padding: 10px;
    border-radius: 5px;
    text-decoration: none;
    font-size: 18px;
    margin-top: 10px;
    transition: background-color 0.3s ease;
}

.update-button:hover {
    background-color: #555;
}

    </style>
</head>
<body>

<%
Employee e = (Employee) session.getAttribute("employee");

%>
    <div class="container">
        <h2>Update Profile</h2>
        <form method="post" action="profileupdate.jsp">
            <label for="employeeId">Employee ID</label>
            <input type="text" id="employeeId" name="empid" value="<%= e.getId() %>" readonly required>

            <label for="name">Name</label>
            <input type="text" id="name" name="name" value="<%= e.getName() %>" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" value="<%= e.getEmail() %>" required>

            <label for="contact">Contact</label>
            <input type="text" id="contact" name="contact" value="<%= e.getContact() %>" required>

           <button type="submit" class = "update-button">Update</button> 
        </form>
    </div>
</body>
</html>
