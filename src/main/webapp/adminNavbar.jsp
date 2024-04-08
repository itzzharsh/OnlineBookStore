<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Book Store</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	integrity="sha384-+iD5eZ5o23RS1jOr+hEtJu+NkQ1PxZ7nEKtk5IqZcXjlfXnRRN5XNK3YPta4+PQI"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f8f9fa;
}

.book-link {
	text-decoration: none; /* Remove underline */
	color: #343a40;
}

.book-link:hover {
	color: #212529;
}

.book-text {
	font-size: 1.5rem;
	font-weight: bold;
}

.search-form {
	display: flex;
	align-items: center;
}

.search-input {
	flex: 1;
	margin-right: 10px;
}

.cardc {
	background-color: #fff;
	padding: 20px;
	margin-top: 20px;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

.checkOutc {
	margin-top: 20px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.total {
	font-weight: bold;
	font-size: 1.2rem;
}

.closeShopping {
	cursor: pointer;
	padding: 8px 16px;
	background-color: #dc3545;
	color: #fff;
	border: none;
	border-radius: 5px;
	font-weight: bold;
}

.closeShopping:hover {
	background-color: #c82333;
}
</style>

</head>
<body>
	<div class="container-fluid p-3">
		<div class="row">
			<div class="col-md-3">
				<a href="userDetails" class="book-link"> <span class="book-text">
						<i class="fas fa-book"></i> Book Store Admin
				</span>
				</a>
			</div>
			<div class="col-md-6">
				<form class="search-form" action="/search" method="get">
					<input class="form-control search-input" type="search" name="query"
						placeholder="Search Your Books" aria-label="Search">
					<button class="btn btn-outline-dark" type="submit">Search</button>
				</form>

			</div>
			<div class="col-md-3">
				<%
				String id = (String) session.getAttribute("uid");
				if (id != null) {
				%>
				<a href="logout" class="btn btn-success"><i
					class="fas fa-sign-out-alt"></i> Logout</a>
				<%
				} else {
				%>
				<a href="login" class="btn btn-success"><i
					class="fas fa-sign-in-alt"></i> LogIn</a>
				<%
				}
				%>
				<a href="addBook" class="btn btn-primary"><i
					class="fas fa-user-plus"></i> Add Book</a>
			</div>
		</div>
	</div>

	<div class="cardc">
		<h1>Card</h1>
		<ul class="listCardc"></ul>
		<div class="checkOutc">
			<div class="total">0</div>
			<div class="closeShopping">Close</div>
		</div>
	</div>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active p-2"
						aria-current="page" href="userDetails"><i class="fas fa-home"></i></a></li>
					<li class="nav-item"><a class="nav-link active p-2"
						aria-current="page" href="userDetails">User</a></li>
					<li class="nav-item"><a class="nav-link" href="productDetails">Products</a></li>
					<li class="nav-item"><a class="nav-link" href="orderDetails">Orders</a></li>
				</ul>
			</div>
			<form class="d-flex gap-2">
				<a href="#ContactUs" class="btn btn-outline-dark"> <i
					class="fas fa-id-card"></i> Contact Us
				</a>
			</form>
		</div>
	</nav>

	<!-- Add your JavaScript code or scripts here -->
	<script src="https://kit.fontawesome.com/a076d05399.js"></script>
</body>
</html>
