<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
    <style>
@import url('https://fonts.googleapis.com/css2?family=Comfortaa:wght@300&amp;display=swap');
body {
    font-family: 'Comfortaa', sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    background-color: #f0f0f0;
}

.container {
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 450px;
    display: flex;
    flex-direction: column;
    align-items: center;
}

h2 {
    margin-bottom: 20px;
    text-align: center;
}

.form-group {
    width: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
}

.input-group {
    position: relative;
    margin-bottom: 15px;
    width: 80%;
}

label {
    margin-bottom: 5px;
}

input {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

.toggle-password {
    position: absolute;
    right: 1px;
    top: 25px;
    cursor: pointer;
}

button {
font-family: 'Comfortaa', sans-serif;
    width: 80%;
    padding: 10px;
    border: none;
    border-radius: 4px;
    background-color: #4CAF50;
    color: white;
    font-size: 16px;
    cursor: pointer;
    display: block;
    margin: 0 auto;
}

button:hover {
    background-color: #45a049;
}

    </style>
    
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa&display=swap" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h2>Forgot Password</h2>
        <br>
        <form class="form-group" method="post" action="checkforgotpassword.jsp">
            <div class="input-group">
                <label for="password">New Password</label>
                <input type="password" id="password" name="pwd" required>
                <span class="toggle-password" onclick="togglePassword('password')">👁️</span>
            </div>
            <br>
            <div class="input-group">
                <label for="confirm-password">Confirm Password</label>
                <input type="password" id="confirm-password" name="cpwd" required>
                <span class="toggle-password" onclick="togglePassword('confirm-password')">👁️</span>
            </div>
            <button type="submit">Reset Password</button>
        </form>
    </div>
    <script>
        function togglePassword(id) {
            const passwordField = document.getElementById(id);
            if (passwordField.type === "password") {
                passwordField.type = "text";
            } else {
                passwordField.type = "password";
            }
        }
    </script>
</body>
</html>
