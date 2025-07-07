<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book - My Library</title>
<style>
  body {
    margin: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-image: url('images/home.jpg'); 
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    background-color: #f9f7f3;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    backdrop-filter: blur(2px);
  }

  .form-container {
    background-color: rgba(255, 255, 255, 0.92);
    padding: 40px;
    border-radius: 16px;
    box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
    width: 420px;
    text-align: center;
    position: relative;
    border: 1px solid #ddd;
  }

  .home-link {
    position: absolute;
    top: 15px;
    right: 15px;
    text-decoration: none;
    background-color: #e84a5f; /* red from book cover */
    color: white;
    padding: 8px 14px;
    border-radius: 8px;
    font-size: 14px;
    transition: background-color 0.3s ease;
  }

  .home-link:hover {
    background-color: #c0392b;
  }

  h1 {
    color: #333;
    margin-bottom: 24px;
    font-size: 26px;
  }

  label {
    display: block;
    margin-top: 18px;
    font-size: 15px;
    color: #555;
    text-align: left;
  }

  input[type="text"],
  input[type="number"] {
    width: 100%;
    padding: 10px;
    margin-top: 6px;
    font-size: 15px;
    border: 1px solid #ccc;
    border-radius: 6px;
    background-color: #fffefc;
    box-sizing: border-box;
  }

  input:focus {
    border-color: #ffb347; /* light orange highlight */
    outline: none;
    box-shadow: 0 0 5px rgba(255, 179, 71, 0.5);
  }

  button[type="submit"] {
    margin-top: 25px;
    width: 100%;
    padding: 12px;
    background-color: #4caf50;
    color: white;
    font-size: 16px;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  button[type="submit"]:hover {
    background-color: #3e8e41;
  }

  .views-button {
    display: inline-block;
    margin-top: 20px;
    background-color: #2980b9; /* blue from book */
    color: white;
    padding: 12px 20px;
    border-radius: 6px;
    font-size: 16px;
    text-decoration: none;
    font-weight: bold;
    transition: background-color 0.3s ease;
    width: 100%;
    box-sizing: border-box;
  }

  .views-button:hover {
    background-color: #21618c;
  }
</style>
</head>
<body>
  <div class="form-container">
    <a href="/home" class="home-link">🏠 Home Page</a>

    <h1>Add Book</h1>

    <form action="/books/add" method="post">
      <label for="bookid">Book ID</label>
      <input type="number" id="bookid" name="bookid" required />

      <label for="bookname">Book Name</label>
      <input type="text" id="bookname" name="bookname" required />

      <label for="author">Author</label>
      <input type="text" id="author" name="author" required />

      <label for="quantity">Quantity</label>
      <input type="text" id="quantity" name="quantity" required />

      <button type="submit">Add Book</button>
    </form> 

    <a href="/viewbook" class="views-button">📖 View All Books</a>
  </div>
</body>
</html>
