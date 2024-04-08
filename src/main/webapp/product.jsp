<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Home</title>
    <%@include file="allCss.jsp"%>
    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Add your custom CSS styles here */
        .container-fluid {
            margin-top: 20px;
        }
        .table td, .table th {
            vertical-align: middle;
        }
        .img-thumbnail {
            max-width: 200px;
            max-height: 200px;
        }
        .action-btn {
            width: 80px; /* Set a fixed width for action buttons */
            margin: 5px; /* Add margin */
            padding: 5px 10px; /* Add padding */
        }
    </style>
</head>
<body>

    <%@include file="adminNavbar.jsp"%>

    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-10">
                <table class="table table-bordered text-center">
                    <thead class="thead-light">
                        <tr>
                            <th>Image</th>
                            <th>Book</th>
                            <th>Author</th>
                            <th>Price($)</th>
                            <th>Category</th>
                            <th>Description</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${obj}" var="book">
                            <tr>
                                <td><img alt="" src="books/${book.image}" class="img-thumbnail"></td>
                                <td>${book.bookName}</td>
                                <td>${book.author}</td>
                                <td>${book.price}</td>
                                <td>${book.category}</td>
                                <td>${book.description}</td>
                                <td>
                                    <a href="delete?id=${book.id}" class="btn btn-danger btn-sm action-btn">Delete</a>
                                    <a href="editProduct?id=${book.id}" class="btn btn-primary btn-sm action-btn">Edit</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Include Bootstrap JS (optional) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
