<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Book - Book Store Registration</title>
    <%@include file="allCss.jsp"%>
</head>
<body>
    <%@include file="adminNavbar.jsp"%>

    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <div class="card">
                    <div class="card-body">
                        <h2 class="text-center mb-4">Add New Book</h2>
                        <form action="submitBook" method="post">
                            <div class="mb-3">
                                <label for="bookName" class="form-label">Book Name <span class="text-danger">*</span></label>
                                <input type="text" name="bookName" class="form-control" id="bookName" required>
                            </div>
                            <div class="mb-3">
                                <label for="author" class="form-label">Author <span class="text-danger">*</span></label>
                                <input type="text" name="author" class="form-control" id="author" required>
                            </div>
                            <div class="mb-3">
                                <label for="category" class="form-label">Category</label>
                                <input type="text" name="category" class="form-control" id="category">
                            </div>
                            <div class="mb-3">
                                <label for="price" class="form-label">Price</label>
                                <input type="number" name="price" class="form-control" id="price" step="any">
                            </div>
                            <div class="mb-3">
                                <label for="description" class="form-label">Description</label>
                                <textarea name="description" class="form-control" id="description" rows="3"></textarea>
                            </div>
                            <div class="mb-3">
                                <label for="image" class="form-label">Image Name <span class="text-danger">*</span></label>
                                <input type="text" name="image" class="form-control" id="image" required>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Add Book</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
