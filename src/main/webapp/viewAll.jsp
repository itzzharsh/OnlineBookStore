<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All</title>
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
        <div class="row">
            <c:forEach items="${object}" var="book">
                <div class="col-md-3 mb-3">
                    <div class="card">
                        <div class="card-body text-center">
                            <img alt="" src="books/${book.image}" style="width: 200px; height: 200px" class="img-thumbnail">
                            <div class="book-info">
                                <p><b>Book:</b> ${book.bookName}</p>
                                <p><b>Author:</b> ${book.author}</p>
                                <p><b>Category:</b> ${book.category}</p>
                            </div>
                            <div class="btn-group">
                                <a href="addToCart?id=${book.id}&email=<%=id%>" class="btn btn-success btn-sm">Add to Cart</a>
                                <a href="viewDetail?id=${book.id}" class="btn btn-success btn-sm">View Details</a>
                                <!-- <button class="btn btn-success btn-sm">$${book.price}</button> -->
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <div id="ContactUs">
        <%@include file="footer.jsp"%>
    </div>
</body>
</html>
