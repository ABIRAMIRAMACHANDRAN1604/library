<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<style>
    body {
      font-family: Arial, sans-serif;
      background-image: url('images/home.jpg');
      background-size: cover;
      background-repeat: no-repeat;
      background-position: center;
      height: 100vh;
      margin: 0;
      padding: 0;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      position: relative;
    }

    h1 {
      color: #0d47a1;
      background-color: rgba(255, 255, 255, 0.8);
      padding: 10px 20px;
      border-radius: 8px;
      margin: 0;
    }

    p {
      font-size: 18px;
      font-weight: bold;
      background-color: rgba(255, 255, 255, 0.6);
      padding: 8px 16px;
      border-radius: 6px;
      margin-top: 10px;
      color: #333;
      text-align: center;
    }

    .button-group {
      position: absolute;
      top: 30%;
      right: 40px;
      display: flex;
      flex-direction: column;
      align-items: flex-end;
    }

    .button,
    .button-group a {
      margin: 10px;
      padding: 12px 24px;
      background-color: #e57373;
      color: white;
      text-decoration: none;
      border: none;
      border-radius: 6px;
      font-size: 16px;
      cursor: pointer;
      box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.2);
      transition: background-color 0.3s ease, transform 0.2s ease;
      text-align: center;
    }

    .button:hover,
    .button-group a:hover {
      background-color: #d32f2f;
      transform: translateY(-2px);
    }

    .login-link {
      position: absolute;
      bottom: 60px;
    }

    footer {
      position: absolute;
      bottom: 10px;
      width: 100%;
      text-align: center;
      font-size: 14px;
      color: #ffffff;
      background-color: rgba(0, 0, 0, 0.5);
      padding: 6px 0;
    }
</style>
</head>
<body>
  <h1>Welcome to the Library</h1>
  <p>"A Book Is a Silent Friend – Waiting to Be Loved."</p>

  <div class="button-group">
    <a href="/viewbook" class="button">Explore Book</a>
    <a href="/" class="button">login Form</a>
    <a href="/" class="button">Register Form</a>
  </div>

  <a href="/login" class="button login-link">Login Form</a>

  <footer>Designed by Abirami Ramachandran | B.E CSE | © 2025</footer>
</body>
</html>
