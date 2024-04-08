<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All</title>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<div class="container">
		<div class="row pt-2">
			<div class="col-md-6">
				<div class="card bg-white text-center">
					<div class="card-body">
						<img alt="Book Cover" src="books/${obj.image}"
							style="width: 200px; height: 200px"
							class="img-thumbnail mx-auto d-block">
						<p class="mb-1"><b>Book: </b> ${obj.bookName}</p>
						<p class="mb-1"><b>Author: </b> ${obj.author}</p>
						<p class="mb-1"><b>Category: </b> ${obj.category}</p>
						<p class="mb-1"><b>Price: </b> $${obj.price}</p>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="card border-0 shadow">
					<div class="card-body text-center">
						<h3 class="mb-4">${obj.bookName}</h3>
						<h5 class="mb-4">Author: ${obj.author}</h5>
						<p class="mb-4">
							<strong>Description:</strong> ${obj.description}
						</p>
					</div>
				</div>
			</div>




		</div>
	</div>
</body>
</html>
