<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Page</title>
<%@include file="allCss.jsp"%>

</head>
<body>

<%@include file="adminNavbar.jsp"%>

<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-md-8 text-center">
            <h2>Registered User</h2> <!-- Added heading here -->
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-8">
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>Address</th>
                        <th>City</th>
                        <th>Email</th>
                        <th>Landmark</th>
                        <th>Name</th>
                        <th>Phone</th>
                        <th>Pincode</th>
                        <th>State</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${obj}" var="user">
                        <tr>
                            <td>${user.address}</td>
                            <td>${user.city}</td>
                            <td>${user.email}</td>
                            <td>${user.landmark}</td>
                            <td>${user.name}</td>
                            <td>${user.phone}</td>
                            <td>${user.pincode}</td>
                            <td>${user.state}</td>
                            <td>
                                <a href="deleteUser?id=${user.id}" class="btn btn-success btn-sm">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
