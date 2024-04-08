<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Search</title>
    <%@include file="allCss.jsp"%>
</head>
<body>
    <%@include file="navbar.jsp"%>
    <div class="row">
        <c:forEach items="${object4}" var="find">
            <div class="col-md-3 mb-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="books/${find.image}"
                            style="width: 200px; height: 200px" class="img-thumblin">
                        <p>${find.bookName}</p>
                        <p>${find.author}</p>
                        <p>Categories: ${find.category}</p>
                        <div class="columns">
                            <a href="addToCart?id=${find.id}&email=<%=id%>" class="btn btn-primary btn-sm">Add to Cart</a>
                            <a href="viewDetail?id=${find.id}" class="btn btn-primary btn-sm">View Details</a>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>   
    </div>
</body>
</html>
