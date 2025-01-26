<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Polling System</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #B4B4B4;
        }
        .container {
            max-width: 800px;
            border-radius: 20px;
            padding: 50px;
        }
        .btn-lg {
            padding: 12px 30px;
            margin: 10px;
        }
    </style>
</head>
<body>
    <div class="container mt-5 bg-white shadow " >
        <h1 class="text-center mb-4">Welcome to the Online Polling System</h1>

        <!-- Action Buttons -->
        <div class="text-center mb-4">
            <a href="create" class="btn btn-primary btn-lg">Create Poll</a>
            <a href="${pageContext.request.contextPath}/polls" class="btn btn-success btn-lg">Poll List</a>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>