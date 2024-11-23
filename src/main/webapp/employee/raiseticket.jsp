<%@page import="com.klef.ep.models.Employee"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="empindex.jsp" />
<% 
Employee e = (Employee) session.getAttribute("employee");

if(e==null)
{
	response.sendRedirect("sessionexpiry.jsp");
}

%>

<style>
    .container {
        background: white;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        width: 90%;
        margin: 50px auto; /* Updated margin for centering */
        max-width: 600px; /* Adjusted maximum width */
    }
    h1 {
        margin-bottom: 30px;
        font-size: 24px;
        color: #333;
    }
    .form-group {
        margin-bottom: 20px;
    }
    .input-group {
        display: flex;
        align-items: center;
    }
    .input-group-prepend,
    .input-group-append {
        background: #f0f2f5;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        margin-right: 10px;
    }
    .input-group-prepend {
        margin-right: -1px;
    }
    .input-group-append {
        margin-left: -1px;
    }
    .input-group-text {
        font-size: 16px;
    }
    .form-control {
        flex: 1;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-family: 'Comfortaa', cursive;
    }
    .btn {
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        font-family: 'Comfortaa', cursive;
    }
    .btn-primary {
        background: #007bff;
        color: white;
    }
    .btn-primary:hover {
        background: #0056b3;
    }
</style>

<div id="contact" class="section">
    <div class="container text-center">
        <h1>Raise Ticket</h1>
        <form class="w-75 mx-auto" method="post" action="checkraiseticket.jsp">
            <div class="form-group">
                <div class="input-group">
                    <input type="text" class="form-control" id="types" name="types" placeholder="Enter Grievance Type" required>
                </div>
            </div>
            <div class="form-group">
                <div class="input-group">
                    <input type="text" class="form-control" id="subject" name="subject" placeholder="Enter subject" required>
                </div>
            </div>
            <div class="form-group">
                <div class="input-group">
                    <textarea class="form-control" id="description" name="description" placeholder="Give a description in about 100 words" rows="3" required></textarea>
                </div>
            </div>
            
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>
