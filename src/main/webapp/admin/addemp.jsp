<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="adminindex.jsp" />

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
        padding: 14px; /* Increased padding for better touch targets */
        border: 1px solid #ccc;
        border-radius: 5px;
        font-family: 'Comfortaa', cursive;
        font-size: 16px; /* Increased font size */
        color: #0a0000; /* Darker text color */
        
    }
    
     .form-control::placeholder {
        color: #e70707; /* Placeholder text color */
        font-weight: 800;
    }

    .optionplaceholder{
        color: #e70707; /* Placeholder text color */
        font-weight: 200;
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

<div id="employee" class="section">
    <div class="container text-center">
        <h2>Employee Form</h2>
        <form class="w-75 mx-auto" method="post" action="addemployee.jsp">
        
        <div class="form-group">
                <div class="input-group">
                    <input type="number" class="form-control" id="id" name="id" placeholder="Enter Employee ID" maxlength="10" required >
                </div> 
         </div>
            
            
            <div class="form-group">
                <div class="input-group">
                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name" required>
                </div> 
            </div>
            
            
            
            <div class="input-group">
       			 <select class="form-control" id="gender" name="gender"  required>
            		<option class= "optionplaceholder" value=""><b style="color: red">Select Gender</b></option>
            		<option value="MALE">Male</option>
            		<option value="FEMALE">Female</option>
           			<option value="OTHERS">Others</option>
        		</select>
         	</div>
         
         
    
    <br/>
    
    
            <div class="form-group">
     			<div class="input-group">
        			<select class="form-control" id="position" name="position" required>
            			<option class= "optionplaceholder" value=""><b style="color: red">Select Position</b></option>
            			<option value="MANAGER">Manager</option>
            			<option value="EMPLOYEE">Employee</option>
        			</select>
    			</div>
  			</div>            


			<div class="form-group">
                <div class="input-group">
                    <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email address" required>
                </div>
            </div>
            
            
            <div class="form-group">
                <div class="input-group">
                    <input type="password" class="form-control" id="pwd" name="pwd" placeholder="Enter Password" required>
                </div>
            </div>
            
            
            <div class="form-group">
                <div class="input-group">
                    <input type="text" class="form-control" id="contactno" name="contactno" placeholder="Enter Contact No." required>
            	</div>
            </div>
            
            <button type="submit" class="btn btn-primary" >Submit</button>
        </form>
    </div>
</div>
