<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Poll List</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #B4B4B4;
            font-family: 'Arial', sans-serif;
            
        }
        .main-container {
            max-width: 800px;
            margin: 2rem auto;
            padding: 0 15px;
          
        }
        .poll-header {
            color: #2c3e50;
            font-weight: 600;
            margin-bottom: 2rem;
            text-align: center;
        }
        .poll-item {
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 2px 15px rgba(0,0,0,0.08);
            margin-bottom: 1.5rem;
            padding: 1.5rem;
            transition: transform 0.2s ease;
        }
        .poll-item:hover {
            transform: translateY(-3px);
        }
        .poll-title {
            color: #3498db;
            font-size: 1.4rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }
        .poll-description {
            color: #7f8c8d;
            font-size: 1rem;
            line-height: 1.6;
            margin-bottom: 1.2rem;
        }
        .vote-button {
            background: #2ecc71;
            border: none;
            border-radius: 25px;
            color: white;
            font-weight: 500;
            padding: 0.6rem 1.8rem;
            transition: all 0.3s ease;
        }
        .vote-button:hover {
            background: #27ae60;
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(46,204,113,0.25);
        }
    </style>
</head>
<body>
    <div class="main-container">
        <h1 class="poll-header">Poll List</h1>
        
        <c:forEach items="${polls}" var="poll">
            <div class="poll-item">
                <h2 class="poll-title">${poll.title}</h2>
                <p class="poll-description">${poll.description}</p>
                <div class="text-right">
                    <a href="${pageContext.request.contextPath}/poll/${poll.id}" 
                       class="vote-button">Vote →</a>
                </div>
            </div>
        </c:forEach>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>