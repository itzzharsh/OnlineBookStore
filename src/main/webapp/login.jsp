<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Store - Login</title>
<%@include file="allCss.jsp"%>
<style>
body {
	background-image:
		url("https://media.istockphoto.com/id/1503372066/photo/many-books-stacked-with-blurred-background-of-bookstore-full-of-books-photo-with-copyspace.webp?b=1&s=170667a&w=0&k=20&c=5hhwIae45aYJzxa4_t0LqyLkHumPmMLbxt0IwtGPGY0=");
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
}

.container {
	margin-top: 50px;
}

.card {
	border-radius: 10px;
	background-color: rgba(0, 0, 0, 0.5);
	color: white;
}
</style>
</head>
<body>


	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">

						<div class="text-center">
							<h4 class="mb-4">User Login</h4>
						</div>

						<form action="login" method="post">

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									Address*</label> <input type="email" name="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required">
							</div>

							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password*</label>
								<input type="password" name="password" class="form-control"
									id="exampleInputPassword1" required="required">
							</div>

							<div class="mb-3 form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1" required> <label
									class="form-check-label" for="exampleCheck1">Remember
									me</label>
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-primary">Log In</button>
							</div>

						</form>
						<div class="text-center mt-3">
							<p>
								If not registered <a href="register">Click Here</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
