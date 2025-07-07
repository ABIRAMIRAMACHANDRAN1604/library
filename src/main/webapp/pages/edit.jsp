<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Book</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f3f4f6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .form-container {
            background-color: #ffffff;
            padding: 40px 30px;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
            width: 400px;
        }
        h2 {
            text-align: center;
            color: #333333;
            margin-bottom: 25px;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555555;
        }
        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #cccccc;
            border-radius: 6px;
            box-sizing: border-box;
        }
        button {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 12px;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Edit Book</h2>
        <!-- ✅ Correct Spring Form Binding -->
        <form:form method="POST" action="/updatebook" modelAttribute="book">

            <!-- ✅ Form fields must use form tags to bind properly -->
            <form:hidden path="id" />

            <label>Book ID</label>
            <form:input path="bookid" readonly="true" />

            <label>Book Name</label>
            <form:input path="bookname" />

            <label>Author</label>
            <form:input path="author" />

            <label>Quantity</label>
            <form:input path="quantity" type="number" />

            <button type="submit">Update Book</button>
        </form:form>
    </div>
</body>
</html>
