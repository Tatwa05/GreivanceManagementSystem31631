<!DOCTYPE html>
<%@page import="com.klef.ep.models.Employee"%>
<html lang="en">

<%@include file="empindex.jsp" %>

<%

Employee e = (Employee) session.getAttribute("employee");

if(e==null)
{
	response.sendRedirect("sessionexpiry.jsp");
}


%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Profile</title>
    <style>
    
        @keyframes backgroundAnimation {
            0% { background-color: #fcfafb; }
            25% { background-color: #fcfafb; }
            50% { background-color: #fcfafb; }
            75% { background-color: #fcfafb; }
            100% { background-color: #fcfafb; }
        }

        
        .profile-container {
            width: 70%;
            max-width: 900px;
            display: flex;
            flex-direction: column;
            background-color: #fcfafb;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
            margin-top: 80px;
            margin-left: 230px;
        }
        .profile-header {
            display: flex;
            flex-direction: row; /* Ensure horizontal layout */
            align-items: center; /* Align items vertically */
        }
        .profile-details {
            flex: 2;
            padding: 40px;
            animation: backgroundAnimation 10s infinite;
            color: #333;
        }
        .profile-container h1 {
            color: #00186f;
            font-size: 28px;
            margin-left: 410px;
        }
        .profile-details table {
            width: 100%;
            border-collapse: collapse;
            margin-left: 100px;
        }
        .profile-details th, .profile-details td {
            padding: 15px;
            text-align: left;
        }
        .profile-details th {
            color: #333;
        }
        .profile-logo {
            flex: 1;
            background-color: #fcfafb;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }
        .profile-logo img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            border: 5px solid #ffffff;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }
        .profile-actions {
            display: flex;
            justify-content: space-evenly;
            padding: 20px;
            background-color: #f2f2f2;
        }
        .profile-actions button {
            padding: 15px 25px;
            font-size: 16px;
            font-family: 'Comfortaa', sans-serif;
            border: 2px solid #00186f;
            border-radius: 5px;
            background-color: #ffffff;
            color: #00186f;
            cursor: pointer;
            transition: background-color 0.3s, color 0.3s;
        }
        .profile-actions button:hover {
            background-color: #00186f;
            color: #ffffff;
        }
    </style>
</head>
<body>
    <div class="profile-container">
        <h1 style="">My Profile</h1>
        <div class="profile-header">
            <div class="profile-logo">
                <img src="https://openclipart.org/download/247319/abstract-user-flat-3.svg" alt="User Logo">
            </div>
            <div class="profile-details">
                
                <table>
                    <tr>
                        <th><b>ID</b></th>
                        <td><%= emp.getId() %></td>
                    </tr>
                    <tr>
                        <th><b>Name</b></th>
                        <td><%= emp.getName() %></td>
                    </tr>
                    <tr>
                        <th><b>Email</b></th>
                        <td><%= emp.getEmail() %></td>
                    </tr>
                    <tr>
                        <th><b>Gender</b></th>
                        <td><%= emp.getGender() %></td>
                    </tr>
                    <tr>
                        <th><b>Position</b></th>
                        <td><%= emp.getPosition() %></td>
                    </tr>
                    <tr>
                        <th><b>Contact</b></th>
                        <td><%= emp.getContact() %></td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="profile-actions">
            <button><a href="updateprofile.jsp">Update Profile</a></button>
            <button><a href="forgotpassword.jsp">Change Password</a></button>
        </div>
    </div>
</body>
</html>
