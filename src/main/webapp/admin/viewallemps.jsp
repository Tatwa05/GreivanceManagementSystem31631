<%@page import="com.klef.ep.services.AdminService"%>
<%@ page import="com.klef.ep.models.Employee" %>
<%@ page import="com.klef.ep.services.AdminServiceImpl" %>
<%@ page import="java.util.List" %>



<%@ include file="adminindex.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <title>Employee Details</title>
    <style>
        h1{
            font-size: 24px;
            color: #020202;
            text-transform: uppercase;
            font-weight: 300;
            text-align: center;
            margin-bottom: 15px;
        }
        table{
            width:100%;
            table-layout: fixed;
        }
        .tbl-header{
            background-color: darkgreen;
        }
        .tbl-content{
            height:450px;
            overflow-x:auto;
            margin-top: 0px;
            border: 1px solid rgba(50, 0, 0, 0.3);
        }
        th{
            padding: 20px 15px;
            text-align: left;
            font-weight: 900px;
            font-size: 17px;
            color: white;
            text-transform: uppercase;
        }
        td{
            padding: 15px;
            text-align: left;
            vertical-align: middle;
            font-weight: 400;
            font-size: 15px;
            color: #060000;
            border-bottom: solid 1px rgba(255,255,255,0.1);
        }
        section{
            margin: 50px;
        }
        
        ::-webkit-scrollbar {
            width: 2px;
        } 
        ::-webkit-scrollbar-track {
            -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
        } 
        ::-webkit-scrollbar-thumb {
            -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
        }
        
        .active-box {
    		display: inline-block;
    		padding: 5px 10px;
    		background-color: green;
    		color: white;
    		border-radius: 15px; /* This creates the oval shape */
    		font-size: 14px;
    		text-align: center;
		}
		.inactive-box {
    		display: inline-block;
    		padding: 5px 10px;
    		background-color: darkred;
    		color: white;
    		border-radius: 15px; /* This creates the oval shape */
    		font-size: 14px;
    		text-align: center;
		}
		.rounded-delete-btn {
    		background-color: #d60202;
    		color: white;
    		border: none;
    		padding: 7px;
    		font-size: 24px;
    		border-radius: 50%;
    		cursor: pointer;
    		display: flex;
    		align-items: center;
    		justify-content: center;
		}
		.rounded-delete-btn:hover {
    		background-color: #fb2828;
		}
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(window).on("load resize", function() {
            var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
            $('.tbl-header').css({'padding-right':scrollWidth});
        }).resize();
    </script>
</head>
<body>
    <section>
        <h3 style="text-align: center"><b>EMPLOYEE DETAILS</b></h3>
        <div class="tbl-header">
        
        <%
            AdminService service = new AdminServiceImpl();
            List<Employee> employeeList = service.viewallemps();
        %>
        
            <table cellpadding="0" cellspacing="0" border="0">
                <thead>
                    <tr>
                        <th><b>Employee ID</b></th>
                        <th><b>Name</b></th>
                        <th><b>Gender</b></th>
                        <th><b>Email</b></th>
                        <th><b>Contact No.</b></th>
                        <th><b>Status</</b></th>
                        <th><b>Action</b></th>
                    </tr>
                </thead>
            </table>
        </div>
        <div class="tbl-content">
            <table cellpadding="0" cellspacing="0" border="0">
            
            <%
                    for(Employee emp : employeeList) {
             %>
            
                <tbody>
                    <tr>
                        <td><b><%= emp.getId() %></b></td>
                        <td><b><%= emp.getName() %></b></td>
                        <td><b><%= emp.getGender() %></b></td>
                        <td><b><%= emp.getEmail() %></b></td>
                        <td><b><%= emp.getContact() %></b></td>
                        <td>
                        	<% if  (emp.getStatus().equals("Active")) 
                        	{
                        		%>
                        		<div class="active-box"><%= emp.getStatus() %></div>
                        		
                        		<%
                        	}
                        	
                        	 else 
                        	{
                        		%>
                        		<div class="inactive-box"><%= emp.getStatus() %></div>
                        		
                        		<%
                        	}
                        	
                        	%> 
                        </td>
                        
                        <td>
                        
                        <a href="empdeletion.jsp?id=<%=  emp.getId() %>"><button type="submit" class="rounded-delete-btn"><i class="material-icons">delete</i></button></a>
                                   
                        </td>
                    </tr>
                    
                     
                  
                </tbody>
                
                <% } %>
            </table>
        </div>
    </section>
    
</body>
</html>
