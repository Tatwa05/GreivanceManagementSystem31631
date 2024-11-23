<%@page import="com.klef.ep.services.ManagerServiceImpl"%>
<%@page import="com.klef.ep.services.ManagerService"%>
<%@page import="com.klef.ep.models.Grievance"%>
<%@page import="java.util.List"%>
<%@page import="com.klef.ep.services.EmployeeServiceImpl"%>
<%@page import="com.klef.ep.services.EmployeeService"%>
<%@ include file="empindex.jsp" %>

<%
  
Employee e = (Employee)session.getAttribute("employee");
ManagerService service = new ManagerServiceImpl();
List<Grievance> grievancelist =   grievancelist = service.viewallgrievancesbymanager();

if(e==null)
{
	response.sendRedirect("sessionexpiry.jsp");
}

    
    
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grievance Management</title>
    <style>
        .wrapper {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }

        .card {
            background: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin: 20px;
            max-width: 600px;
            width: 100%;
            text-align: center;
        }

        .card h2 {
            margin-top: 0;
        }

        .card table {
            width: 100%;
            border-collapse: collapse;
        }

        .card table, .card th, .card td {
            border: none;
        }

        .card th, .card td {
            padding: 12px 15px;
            text-align: center;
        }

        .card th {
            background: #f0f0f0;
        }

         .buttons {
            display: flex;
            justify-content: center;
            margin-top: 30px;
        }

        .buttons a {
            text-decoration: none;
            margin: 0 10px;
        }

        .buttons button {
            background: #007bff;
            border: none;
            color: white;
            padding: 12px 25px;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s;
        }
        
         .buttons button {
            background: #007bff;
            border: none;
            color: white;
            padding: 12px 25px;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .buttons button:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <% for(Grievance g : grievancelist) { %>
            <div class="card">
                <h3><%= g.getGrievanceid() %></h3>
                <table>
                    <tr>
                        <th><strong>Field</strong></th>
                        <th>Details</th>
                    </tr>
                    <tr>
                        <td><strong>Employee ID</strong></td>
                        <td><%= g.getEmpid() %></td>
                    </tr>
                    <tr>
                        <td><strong>Type</strong></td>
                        <td><%= g.getType() %></td>
                    </tr>
                    <tr>
                        <td><strong>Subject</strong></td>
                        <td><%= g.getSubject() %></td>
                    </tr>
                    <tr>
                        <td><strong>Description</strong></td>
                        <td><%= g.getDescription() %></td>
                    </tr>
                    <tr>
                        <td><strong>Status</strong></td>
                        <td><%= g.getGrievancestatus() %></td>
                    </tr>
                </table>
                <div class="buttons">
                    <a href="forwardgrievance.jsp?gid=<%= g.getIndentityid() %>">
                        <button>Forward</button>
                    </a>
                    <a href="solvegrievance.jsp?gid=<%= g.getIndentityid() %>">
                        <button >Solve</button>
                    </a>
                </div>
            </div>
        <% } %>
    </div>
</body>
</html>
