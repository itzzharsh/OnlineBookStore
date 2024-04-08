<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Online Book Store</title>
    <%@include file="allCss.jsp"%>
    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Add your custom CSS styles here */
        body {
            background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwsu3YYJNmTlqnviDRdN5Lab721g0BjyX6yw&s");
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        .card {
            border-radius: 10px;
            background-color: rgba(0, 0, 0, 0.5);
            color: white;
        }
        .card-title {
            color: #28a745; /* Change form title color */
        }
        .form-container {
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 form-container">
                <div class="card">
                    <div class="card-body">
                        <h3 class="text-center text-success card-title mb-3">Create Your Account and Start Exploring!</h3>
                          <form action="submitUser" method="get">
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <label for="inputName" class="form-label">Name</label>
                                    <input type="text" name="name" class="form-control" id="inputName">
                                </div>   
                                <div class="col-md-6">
                                    <label for="inputEmail4" class="form-label">Email</label>
                                    <input type="email" name="email" class="form-control" id="inputEmail4">
                                </div>
                                <div class="col-md-6">
                                    <label for="inputPhone" class="form-label">Phone Number</label>
                                    <input type="number" name="phone" class="form-control" id="inputPhone">
                                </div>
                                <div class="col-md-6">
                                    <label for="inputAddress" class="form-label">Address</label>
                                    <input type="text" name="address" class="form-control" id="inputAddress">
                                </div>
                                <div class="col-md-6">
                                    <label for="inputLandmark" class="form-label">Landmark</label>
                                    <input type="text" name="landmark" class="form-control" id="inputLandmark">
                                </div>
                                <div class="col-md-6">
                                    <label for="inputCity" class="form-label">City</label>
                                    <input type="text" name="city" class="form-control" id="inputCity">
                                </div>
                                <div class="col-md-6">
                                    <label for="inputState" class="form-label">State</label>
                                    <input type="text" name="state" class="form-control" id="inputState">
                                </div>
                                <div class="col-md-6">
                                    <label for="inputPin" class="form-label">Pin Code</label>
                                    <input type="text" name="pincode"class="form-control" id="inputPin">
                                </div>
                            </div>
                            <div class="text-center mt-3">
                                <button type="submit" class="btn btn-primary">Create Account</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Include Bootstrap JS (optional) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>




