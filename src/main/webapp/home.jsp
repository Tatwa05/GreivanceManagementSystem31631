~~~


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="index.jsp" %>

<body>
  <div id="home" class="section">
    <div class="center-content">
    <br><br><br><br>
      <h1>Welcome to ResolveHub</h1>
      <p>Your gateway to solutions</p>
      <div class="image-container">
        <img src="employee/media/img1.jpg" alt="Image 1" />
        <img src="employee/media/img2.jpg" alt="Image 2" />
        <img src="employee/media/img3.jpg" alt="Image 3" />
      </div>
    </div>
  </div>

  <style>
  @import url('https://fonts.googleapis.com/css2?family=Comfortaa:wght@300&display=swap');
       
            
    body, html {
    font-family: 'Comfortaa', sans-serif;
      margin: 0;
      padding: 0;
      height: 100%;
    }

    .center-content {
      max-width: 800px; /* Adjusted max width */
      padding: 20px;
      margin: auto;
      text-align: center;
    }

    .center-content h1 {
      font-size: 3.6em;
      margin: 0 0 20px;
      font-weight: bold;
    }

    .center-content p {
      font-size: 1.2em;
      margin: 0 0 20px; /* Adjusted margin to create space for images */
    }

    .image-container {
      display: flex;
      justify-content: center;
      gap: 20px;
      margin-top: 40px;
    }

    .image-container img {
      width: 40%;
      max-width: 400px;
      height: auto; /* Ensures the aspect ratio is maintained */
      border-radius: 20px;
      height: 240px; /* Added height to increase image length vertically */
    }
  </style>
</body>