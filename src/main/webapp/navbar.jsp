<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Book Store</title>
<!-- Add your CSS links or styles here -->
<style>
/* Add your custom styles here */
.book-link {
	text-decoration: none;
	color: black;
}

.book-text {
	font-size: 18px;
}

.shopping {
	position: relative;
	display: inline-block;
	margin-left: 10px;
}

.quantity {
	position: absolute;
	top: -10px;
	right: -10px;
	background-color: red;
	border-radius: 50%;
	padding: 5px 8px;
	font-size: 12px;
}

.cardc {
	margin-top: 20px;
	padding: 20px;
	background-color: #f9f9f9;
	border-radius: 5px;
}

.listCardc {
	list-style: none;
	padding: 0;
}

.total {
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 10px;
}

.checkOutc {
	text-align: right;
}

.closeShopping {
	cursor: pointer;
	background-color: #007bff;
	color: white;
	padding: 10px 20px;
	border-radius: 5px;
}
</style>
</head>
<body>

	<div class="container-fluid p-3">
		<div class="row">
			<div class="col-md-3">
				<a href="home" class="book-link"> <span class="book-text">
						<i class="fa-solid fa-book"></i>Online Book Library
				</span>
				</a>
			</div>
			<div class="col-md-6">
				<form action="/search" method="get" class="d-flex">
					<input class="form-control me-2" name="query" type="search"
						placeholder="Search Your Books" aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>

			</div>
			<div class="col-md-3">
				<%
				String id = (String) session.getAttribute("uid");
				if (id != null) {
				%>
				<a href="logout" class="btn btn-success"><i
					class="fa-solid fa-arrow-right-to-bracket"></i> Logout</a>
				<%
				} else {
				%>
				<a href="Book Store login" class="btn btn-success"><i
					class="fa-solid fa-arrow-right-to-bracket"></i> LogIn</a>
				<%
				}
				%>
				<div class="shopping">
					<a href="allCart?email=<%=id%>"> <img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCPs3bGrkMmD8AmAM8Ly0bphP8zOj746L07qCOXEpTiA&s">
						<%-- Check if quantity is not null and greater than 0 --%> <c:if
							test="${quantity > 0}">
							<span class="quantity">${quantity}</span>
						</c:if>
					</a>
				</div>
			</div>
		</div>
	</div>

	<div class="cardc">
		<h1>Card</h1>
		<ul class="listCardc">
		</ul>
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
						aria-current="page" href="home"> <i class="fas fa-home"></i>
							Home
					</a></li>
					<li class="nav-item"><a class="nav-link p-2"
						href="#fictionBooks">Fiction</a></li>
					<li class="nav-item"><a class="nav-link p-2"
						href="#nonFictionBooks">Non Fiction</a></li>
				</ul>

			</div>


			<form class="d-flex gap-2">
				<a href="contactUs.jsp" class="btn btn-outline-success"> <i
					class="fa-solid fa-id-card"></i> Contact Us
				</a>
			</form>
		</div>
	</nav>
</body>
</html>
