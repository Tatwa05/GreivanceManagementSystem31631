<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Navbar</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Comfortaa:wght@300&display=swap');
        body {
            font-family: 'Comfortaa', sans-serif;
            margin: 0;
            background-color: #f4f4f4;
        }
        .navbar {
            display: flex;
            justify-content: center; /* Center align items */
            align-items: center; /* Center vertically */
            background-color: #3d22ec;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .navbar a, .dropdown-btn {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }
        .navbar a:hover, .dropdown:hover .dropdown-btn {
            background-color: #575757;
        }
        
    </style>
</head>
<body>
    <h1><center>Resolve Hub</center></h1>
    <div class="navbar">
        <a href="home.jsp"><b>Home</b></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="about.jsp">About</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="adminlogin.jsp">Admin</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="emplogin.jsp">Employee</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="contact.jsp">Contact Us</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>

    <script>
        // JavaScript to show dropdown on hover
        document.querySelectorAll('.dropdown').forEach(dropdown => {
            dropdown.addEventListener('mouseenter', function() {
                this.querySelector('.dropdown-content').style.display = 'block';
            });

            dropdown.addEventListener('mouseleave', function() {
                this.querySelector('.dropdown-content').style.display = 'none';
            });
        });
    </script>
</body>
</html>

           