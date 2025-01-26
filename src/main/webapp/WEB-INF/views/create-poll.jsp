<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Create Poll</title>
<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #B4B4B4;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    .form-container {
        max-width: 600px;
        margin: 2rem auto;
        padding: 2rem;
        background: white;
        border-radius: 8px;
        box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    }
    .form-header {
        color: #2c3e50;
        font-weight: 600;
        margin-bottom: 1.5rem;
        text-align: center;
    }
    .form-label {
        font-weight: 500;
        color: #34495e;
        margin-bottom: 0.5rem;
    }
    .form-control {
        border-radius: 6px;
        padding: 0.75rem 1rem;
        border: 2px solid #e0e0e0;
    }
    .form-control:focus {
        border-color: #3498db;
        box-shadow: none;
    }
    .create-btn {
        background: #3498db;
        padding: 0.75rem 2rem;
        font-size: 1.1rem;
        font-weight: 500;
        border-radius: 6px;
        border: none;
        width: 100%;
        margin-top: 1rem;
        transition: all 0.3s ease;
    }
    .create-btn:hover {
        background: #2980b9;
        transform: translateY(-2px);
    }
</style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <h2 class="form-header">Create a New Poll</h2>
            
            <form action="${pageContext.request.contextPath}/create" method="post">
                <div class="form-group">
                    <label class="form-label" for="title">Poll Title:</label>
                    <input type="text" id="title" name="title" 
                           class="form-control" value="${poll.title}" required>
                </div>

                <div class="form-group">
                    <label class="form-label" for="description">Description:</label>
                    <textarea id="description" name="description" 
                              class="form-control" rows="3" required>${poll.description}</textarea>
                </div>

                <div class="form-group">
                    <label class="form-label" for="option1">Option 1:</label>
                    <input type="text" id="option1" name="options[0]" 
                           class="form-control" value="${poll.options[0]}" required>
                </div>

                <div class="form-group">
                    <label class="form-label" for="option2">Option 2:</label>
                    <input type="text" id="option2" name="options[1]" 
                           class="form-control" value="${poll.options[1]}" required>
                </div>

                <button type="submit" class="btn btn-primary create-btn">Create Poll</button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>