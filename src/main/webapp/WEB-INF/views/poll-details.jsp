<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Poll Details</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #B4B4B4;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .poll-container {
            max-width: 600px;
            margin: 3rem auto;
            padding: 2rem;
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }
        .poll-title {
            color: #2c3e50;
            font-weight: 600;
            margin-bottom: 1rem;
            text-align: center;
        }
        .poll-description {
            color: #7f8c8d;
            text-align: center;
            margin-bottom: 2rem;
        }
        .option-list {
            margin: 1.5rem 0;
        }
        .option-item {
            display: flex;
            align-items: center;
            margin-bottom: 1rem;
            padding: 1rem;
            border: 2px solid #e0e0e0;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.2s ease;
        }
        .option-item:hover {
            border-color: #3498db;
            background-color: #f8fbff;
        }
        .option-item.selected {
            border-color: #3498db;
            background-color: #e3f2fd;
        }
        .radio-indicator {
            width: 20px;
            height: 20px;
            border: 2px solid #7f8c8d;
            border-radius: 50%;
            margin-right: 1rem;
            position: relative;
        }
        input[type="radio"] {
            display: none;
        }
        input[type="radio"]:checked + .radio-indicator::after {
            content: "";
            position: absolute;
            top: 3px;
            left: 3px;
            width: 10px;
            height: 10px;
            background: #3498db;
            border-radius: 50%;
        }
        .vote-btn {
            background: #3498db;
            color: white;
            padding: 0.75rem 2rem;
            border: none;
            border-radius: 6px;
            font-size: 1.1rem;
            width: 100%;
            transition: all 0.3s ease;
        }
        .vote-btn:hover {
            background: #2980b9;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
    <div class="poll-container">
        <h1 class="poll-title">${poll.title}</h1>
        <p class="poll-description">${poll.description}</p>

        <form action="${pageContext.request.contextPath}/vote" method="post">
            <input type="hidden" name="pollId" value="${poll.id}">
            
            <div class="option-list">
                <c:forEach var="option" items="${poll.options}" varStatus="status">
                    <label class="option-item">
                        <input type="radio" name="selectedOption" 
                               value="${option}" id="option${status.index}" required>
                        <span class="radio-indicator"></span>
                        <span class="option-text">${option}</span>
                    </label>
                </c:forEach>
            </div>

            <button type="submit" class="vote-btn">Submit Vote</button>
        </form>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <script>
        // Add selection styling
        document.querySelectorAll('.option-item').forEach(item => {
            item.addEventListener('click', () => {
                document.querySelectorAll('.option-item').forEach(i => 
                    i.classList.remove('selected'));
                item.classList.add('selected');
            });
        });
    </script>
</body>
</html>