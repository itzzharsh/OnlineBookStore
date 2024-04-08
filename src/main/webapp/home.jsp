<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Library</title>
    <%@include file="allCss.jsp"%>
    <style type="text/css">
        body {
            background: linear-gradient(to bottom, #ffffff, #f2f2f2); /* Light gradient background */
            font-family: Arial, sans-serif; /* Specify a font for better readability */
            margin: 0; /* Remove default margin */
            padding: 0; /* Remove default padding */
        }

        .container {
            padding: 20px; /* Add padding to the container */
        }

        .card {
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: box-shadow 0.3s;
            background-color: #fff; /* White background for cards */
            margin-bottom: 20px; /* Add some space between cards */
        }

        .card:hover {
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .card img {
            max-width: 100%;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .card-body {
            padding: 20px;
        }

        .book-info {
            text-align: left;
        }

        .btn-group .btn {
            margin-right: 10px; /* Add space between buttons */
        }

        .btn-group .btn:last-child {
            margin-right: 0; /* Remove margin from the last button in each group */
        }

        .btn-success {
            background-color: #17a2b8 !important; /* Turquoise background color */
            border-color: #17a2b8 !important; /* Turquoise border color */
            color: #fff !important; /* White text color */
            font-weight: bold; /* Bold font weight */
        }

        .btn-danger {
            background-color: #dc3545 !important; /* Red background color */
            border-color: #dc3545 !important; /* Red border color */
            color: #fff !important; /* White text color */
            font-weight: bold; /* Bold font weight */
        }

        h2 {
            color: #007bff; /* Blue color for the main heading */
            font-size: 36px; /* Larger font size */
            margin-top: 40px; /* Increased top margin */
            font-weight: bold; /* Bold font weight */
            text-align: center; /* Center align the heading */
        }

        h3 {
            color: #28a745; /* Green color for section headings */
            margin-top: 30px; /* Increased top margin */
            text-decoration: underline; /* Underline decoration */
            text-align: center; /* Center align the heading */
        }
    </style>
</head>
<body>
    <%@include file="navbar.jsp"%>
    <div class="container">
        <h2>Welcome to Our Book Store</h2>
    </div>
    <div class="container">
        <h3 id="fictionBooks">Fiction Books</h3>
        <div class="container-fluid fiction">
            <div class="row">
                <c:forEach items="${object2}" var="fictionBook">
                    <div class="col-md-3 mb-3">
                        <div class="card">
                            <div class="card-body text-center">
                                <img alt="" src="books/${fictionBook.image}" class="img-thumbnail">
                                <div class="book-info">
                                    <p><b>Book: </b>${fictionBook.bookName}</p>
                                    <p><b>Author: </b>${fictionBook.author}</p>
                                    <p><b>Category: </b> ${fictionBook.category}</p>
                                    <p><b>Price: </b> $${fictionBook.price}</p>
                                </div>
                                <div class="btn-group">
                                    <a href="addToCart?id=${fictionBook.id}&email=<%=id%>" class="btn btn-success btn-sm">Add to Cart</a> 
                                    <a href="viewDetail?id=${fictionBook.id}" class="btn btn-success btn-sm">View Details</a> 
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <div class="text-center mt-1 mb-2">
            <a href="viewAll" class="btn btn-danger btn-sm text-white px-4">View All</a>
        </div>
        <hr>
        <h3 id="nonFictionBooks">Non Fiction Books</h3>
        <div class="container-fluid non-fiction">
            <div class="row">
                <c:forEach items="${object3}" var="nonFictionBook">
                    <div class="col-md-3 mb-3">
                        <div class="card">
                            <div class="card-body text-center">
                                <img alt="" src="books/${nonFictionBook.image}" class="img-thumbnail">
                                <div class="book-info">
                                    <p><b>Book:</b>${nonFictionBook.bookName}</p>
                                    <p><b>Author:</b>${nonFictionBook.author}</p>
                                    <p><b>Category:</b> ${nonFictionBook.category}</p>
                                    <p><b>Price:</b> $${nonFictionBook.price}</p>
                                </div>
                                <div class="btn-group">
                                    <a href="addToCart?id=${nonFictionBook.id}&email=<%=id%>" class="btn btn-success btn-sm">Add to Cart</a> 
                                    <a href="viewDetail?id=${nonFictionBook.id}" class="btn btn-success btn-sm">View Details</a> 
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
    <div class="text-center mt-1 mb-2">
        <a href="viewAll" class="btn btn-danger btn-sm text-white px-4">View All</a>
    </div>
    <div id="ContactUs">
        <%@include file="footer.jsp"%>
    </div>
</body>
</html>
