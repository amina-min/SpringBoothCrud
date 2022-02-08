<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

</head>
<body>
	<div class="container">
		<div class=" row col-md-6">
			<form action="/save" method="post">
				<h1>User Form</h1>
				<div class="mb-3">
					<label for="exampleInputEmail1" class="form-label">Name</label> <input
						type="text" class="form-control" id="exampleInputEmail1"
						aria-describedby="emailHelp">					
				</div>
				<div class="mb-3">
					<label for="exampleInputPassword1" class="form-label">Address</label>
					<input type="text" class="form-control"
						id="exampleInputPassword1">
				</div>
					<div class="mb-3">
					<label for="exampleInputPassword1" class="form-label">Email</label>
					<input type="email" class="form-control"
						id="exampleInputPassword1">
				</div>				
				<button  type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>
</body>
</html>