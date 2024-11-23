<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navbar Example</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Comfortaa:wght@300&display=swap');
        body {
            font-family: 'Comfortaa', sans-serif;
            margin: 0;
            background-color: white;
        }

        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #3d22ec;
            display: flex;
            justify-content: center; /* Center align the navbar items */
        }

        li {
            float: left;
        }

        li a, .dropbtn {
            display: inline-block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li a:hover, .dropdown:hover .dropbtn {
            background-color: #536bf4;
        }

        li.dropdown {
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #beccf7;
            min-width: 120px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: black;
            padding: 14px 10px;
            text-decoration: none;
            display: block;
            text-align: center;
        }

        .dropdown-content a:hover {
            background-color: #7590f4;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }
    </style>
</head>
<body>
    <center><h2 style="font-size: 29px">Resolve Hub</h2></center>
    <nav class="navbar">
        <ul class="navbar-menu">
            <li class="navbar-item">
                <a href="adminhome.jsp" class="dropdown-link" ><b>Home</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </li>
            
            <li class="navbar-item dropdown">
                
                <a href="#" class="navbar-link"><b>Employee</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="dropdown-content">
                    <a href="addemp.jsp" class="dropdown-link"><b>Add</b></a>
                    <a href="viewallemps.jsp" class="dropdown-link"><b>View Employees</b></a>
                    <a href="viewallmanagers.jsp" class="dropdown-link"><b>View Managers</b></a>
                  
                </div>
            </li>
            <li class="navbar-item">
                <a href="viewforwardedgrievances.jsf" class="navbar-link"><b>Grievances</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </li>
            <li class="navbar-item">
                <a href="adminlogout.jsp" class="navbar-link"><b>Logout</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </li>
        </ul>
    </nav>
</body>
</html>
