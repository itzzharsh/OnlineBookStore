<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Cart</title>
    <%@include file="allCss.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>

<div class="container">
    <div class="row pt-2">
        <div class="col-md-12">
            <div class="card bg-white">
                <div class="card-body">
                    <h3 class="text-center text-success mb-3">Your Cart Item</h3>
                    <table class="table">
                        <thead>
                        <tr class="bg-info">
                            <th scope="col">Book Name</th>
                            <th scope="col">Author</th>
                            <th scope="col">Price</th>
                            <th scope="col">Remove</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:set var="total" value="0" />
                        <c:set var="bookId" value="" />
                        <c:set var="cartId" value="" />
                        <c:forEach items="${obj}" var="book">
                            <tr>
                                <th scope="row">${book.bookData.bookName}</th>
                                <td>${book.bookData.author}</td>
                                <td>$${book.bookData.price}</td>
                                <c:set var="total" value="${total + book.bookData.price}" />
                                <c:set var="bookId" value="${bookId}${empty bookId ? '' : ','}${book.bookData.id}" />
								<c:set var="cartId" value="${cartId}${empty cartId ? '' : ','}${book.id}" />

                                <td><a href="remove?id=${book.id}" class="btn btn-danger">Remove</a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                        <tfoot>
                        <tr class="bg-secondary text-white">
                            <th scope="col">Total</th>
                            <td></td>
                            <td>$<c:out value="${total}" /></td>
                            <td></td>
                        </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
        <div>
            <h6 class="text-danger">* Only Cash On Delivery Available</h6>
        </div>
    </div>
    <div class="text-center mt-3">
        <a href="completeOrder?email=<%=id%>&bookId=${bookId}&total=${total}&cartId=${cartId}" class="btn btn-success al">Complete Your Order Now</a>
    </div>
</div>

<script>
    function showAlert() {
        alert("Your Order has been Confirmed!");
    }
</script>

</body>
</html>
