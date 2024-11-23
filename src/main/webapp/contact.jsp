<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="index.jsp" />

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
        <h1>Contact Us</h1>
        <form class="w-75 mx-auto">
            <div class="form-group">
                <div class="input-group">
                    <input type="text" class="form-control" id="name" placeholder="Name" required>
                </div>
            </div>
            <div class="form-group">
                <div class="input-group">
                    <input type="email" class="form-control" id="email" placeholder="Email address" required>
                </div>
            </div>
            <div class="form-group">
                <div class="input-group">
                    <textarea class="form-control" id="message" placeholder="Message" rows="3" required></textarea>
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>
