<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Book List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f4f6;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 40px;
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 30px;
        }

        table {
            width: 90%;
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 5px 12px rgba(0, 0, 0, 0.1);
        }

        th, td {
            border: 1px solid #dddddd;
            padding: 12px;
            text-align: center;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        button {
            padding: 8px 14px;
            border: none;
            border-radius: 5px;
            color: white;
            cursor: pointer;
            font-size: 14px;
        }

        .edit-btn {
            background-color: #007bff;
        }

        .edit-btn:hover {
            background-color: #0069d9;
        }

        .delete-btn {
            background-color: #e74c3c;
        }

        .delete-btn:hover {
            background-color: #c0392b;
        }

        .top-button {
            background-color: #2ecc71;
            padding: 10px 16px;
            font-size: 15px;
            margin-right: 10px;
        }

        .top-button:hover {
            background-color: #27ae60;
        }

        .logout-btn {
            background-color: #e67e22;
            padding: 10px 16px;
            font-size: 15px;
            border: none;
            border-radius: 5px;
            color: white;
            cursor: pointer;
        }

        .logout-btn:hover {
            background-color: #d35400;
        }

        .action-buttons {
            margin-top: 20px;
        }

        a {
            text-decoration: none;
        }
    </style>
</head>
<body>

    <h1>Book List</h1>

    <table>
        <tr>
            <th>Book ID</th>
            <th>Book Name</th>
            <th>Author</th>
            <th>Quantity</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="book" items="${books}">
            <tr>
                <td>${book.bookid}</td>
                <td>${book.bookname}</td>
                <td>${book.author}</td>
                <td>${book.quantity}</td>
                <td>
                    <a href="/editbook/${book.id}">
                        <button class="edit-btn">Edit</button>
                    </a>
                </td>
                <td>
                    <a href="/deletebook/${book.id}" onclick="return confirm('Are you sure you want to delete this book?')">
                        <button class="delete-btn">Delete</button>
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <div class="action-buttons">
        <a href="/addbook">
            <button class="top-button">Add New Book</button>
        </a>
        <a href="/login">
            <button class="logout-btn">Logout</button>
        </a>
    </div>

</body>
</html>
