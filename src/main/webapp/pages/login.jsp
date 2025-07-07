<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - Library Management</title>

    <style>
        body {
            margin: 0;
            font-family: 'Georgia', serif;
            background-image: url('images/home.jpg'); 
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            backdrop-filter: blur(4px);
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
            width: 380px;
            text-align: center;
            position: relative;
        }

        .home-link {
            position: absolute;
            top: 20px;
            right: 20px;
            text-decoration: none;
            background-color: #d9b99b;
            color: #fff;
            padding: 8px 14px;
            border-radius: 8px;
            font-size: 14px;
            font-family: 'Segoe UI', sans-serif;
            transition: background-color 0.3s ease;
        }

        .home-link:hover {
            background-color: #c29d7c;
        }

        h1 {
            color: #3b3b3b;
            margin-bottom: 24px;
            font-size: 26px;
        }

        label {
            display: block;
            margin-top: 18px;
            font-size: 15px;
            color: #444;
            text-align: left;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            font-size: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
            background-color: #fdfcfb;
            transition: border 0.3s ease, box-shadow 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #a67c52;
            box-shadow: 0 0 5px rgba(166, 124, 82, 0.4);
            outline: none;
        }

        button[type="submit"] {
            margin-top: 25px;
            width: 100%;
            padding: 12px;
            background-color: #a67c52;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color: #916c45;
        }

        .error-message {
            color: #d8000c;
            background-color: #ffbaba;
            padding: 10px;
            border-radius: 6px;
            margin-top: 16px;
            font-size: 14px;
            text-align: center;
        }
    </style>
</head>

<body>
    <div class="form-container">
        <a href="/home" class="home-link">🏠 Home Page</a>

        <h1>Login</h1>

        <form action="/login" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required />

            <label for="password">Password</label>
            <input type="password" id="password" name="password" required />

            <button type="submit">Login</button>
        </form>

        <c:if test="${not empty error}">
            <div class="error-message">${error}</div>
        </c:if>
    </div>
</body>
</html>
