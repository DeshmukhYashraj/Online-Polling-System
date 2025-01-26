<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vote Confirmation</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #B4B4B4;
            font-family: 'Arial', sans-serif;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0;
        }
        .confirmation-card {
            background: white;
            padding: 2.5rem;
            border-radius: 10px;
            box-shadow: 0 2px 15px rgba(0,0,0,0.1);
            max-width: 500px;
            width: 90%;
            text-align: center;
        }
        .check-icon {
            width: 80px;
            height: 80px;
            background: #28a745;
            border-radius: 50%;
            margin: 0 auto 1.5rem;
            position: relative;
        }
        .check-icon::after {
            content: "";
            position: absolute;
            left: 25%;
            top: 45%;
            width: 25%;
            height: 50%;
            border: solid white;
            border-width: 0 4px 4px 0;
            transform: rotate(45deg) translate(-50%, -50%);
        }
        .confirmation-title {
            color: #2c3e50;
            font-size: 1.8rem;
            margin-bottom: 1rem;
            font-weight: 600;
        }
        .confirmation-text {
            color: #6c757d;
            font-size: 1.1rem;
            margin-bottom: 2rem;
            line-height: 1.6;
        }
        .back-btn {
            background: #3498db;
            color: white;
            padding: 0.8rem 2.5rem;
            border-radius: 25px;
            text-decoration: none;
            font-size: 1.1rem;
            transition: all 0.3s ease;
            border: none;
            cursor: pointer;
            display: inline-block;
        }
        .back-btn:hover {
            background: #2980b9;
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>
    <div class="confirmation-card">
        <div class="check-icon"></div>
        <h1 class="confirmation-title">Vote Confirmation</h1>
        <div class="confirmation-text">
            <p>Thank you for voting!</p>
            <p>Your vote has been successfully submitted.</p>
        </div>
        <a href="${pageContext.request.contextPath}/" class="back-btn">Back to Poll List</a>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>