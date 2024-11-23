
<%@page import="com.klef.ep.models.Grievance"%>
<%@page import="java.util.List"%>
<%@page import="com.klef.ep.services.EmployeeServiceImpl"%>
<%@page import="com.klef.ep.services.EmployeeService"%>

<%@include file="empindex.jsp" %>

<%
	Employee em = (Employee) session.getAttribute("employee");

	long id = em.getId();

	if(em==null)
	{
		response.sendRedirect("sessionexpiry.jsp");
	}


    EmployeeService service = new EmployeeServiceImpl();
    List<Grievance> empgrievancelist = service.viewempgrievancelistbyid(id);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Styled Table with Buttons</title>
    <style>
        body {
            font-family: 'Comfortaa', sans-serif;
            margin: 0;
            background-color: #f4f4f4;
            padding: 20px;
        }

       table {
    width: 82%;
    border-collapse: collapse;
    margin: 20px auto; /* Center the table */
    background-color: #fff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #3d22ec;
            color: #fff;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        td {
            color: #333;
        }

        th, td {
            border-radius: 4px;
        }

        table thead th {
            position: sticky;
            top: 0;
        }

        .button-container {
            display: flex;
            gap: 10px; /* Space between buttons */
        }

        .button {
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            color: #fff;
            cursor: pointer;
            font-size: 14px;
            font-weight: bold;
        }

        .forward-btn {
            background-color: #3d22ec;
        }

        .forward-btn:hover {
            background-color: #536bf4;
        }

        .solve-btn {
            background-color: #28a745;
        }

        .solve-btn:hover {
            background-color: #218838;
        }

        .table-container {
            overflow-x: auto;
        }
        .submitted-box {
    		display: inline-block;
    		padding: 5px 10px;
    		background-color: violet;
    		color: black;
    		border-radius: 15px; /* This creates the oval shape */
    		font-size: 14px;
    		text-align: center;
		}
		.forwarded-box {
    		display: inline-block;
    		padding: 5px 10px;
    		background-color: darkorange;
    		color: black;
    		border-radius: 15px; /* This creates the oval shape */
    		font-size: 14px;
    		text-align: center;
		}
		
		.solved-box {
    		display: inline-block;
    		padding: 5px 10px;
    		background-color: green;
    		color: white;
    		border-radius: 15px; /* This creates the oval shape */
    		font-size: 14px;
    		text-align: center;
		}
    </style>
</head>
<body>
    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <th>GRIEVANCE ID</th>
                    <th>Type</th>
                    <th>Subject</th>
                    <th>Description</th>
                    <th>status</th>
                </tr>
            </thead>
            <tbody>
                <!-- Sample data -->
                <%
                	for(Grievance g:empgrievancelist)
                	{
                %>
                <tr>
                    <td><%=g.getGrievanceid() %></td>
                    <td><%=g.getType() %></td>
                    <td><%= g.getSubject() %></td>
                    <td><%= g.getDescription() %></td>
                    <td>
                        	<% if  (g.getGrievancestatus().equals("SUBMITTED")) 
                        	{
                        		%>
                        		<div class="submitted-box">submitted</div>
                        		
                        		<%
                        	}
                        	
                        	 else if(g.getGrievancestatus().equals("FORWARDED"))
                        	{
                        		%>
                        		<div class="forwarded-box">forwarded</div>
                        		
                        		<%
                        	}
                        	 else 
                         	{
                         		%>
                         		<div class="solved-box">solved</div>
                         		
                         		<%
                         	}
                        	
                        	%> 
                        </td>
                    
                </tr>
                
               <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>
