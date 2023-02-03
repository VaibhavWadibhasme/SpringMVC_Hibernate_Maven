<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">


</head>
<body>
	<c:set var="emp" value="${emp}"></c:set>


	<div class="container">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">

				<h1>Update Your Details</h1>

				<form action="/MavenProject1/update" method="post">
					<div class="form-group">
						ID:-<input type="text" name="id" placeholder="Enter Fullname"
							id="fullname" value="${emp.id}" class="form-control">
					</div>
					
					<div class="form-group">
						Full Name:-<input type="text" name="fullname"
							placeholder="Enter fullname" id="fullname"
							value="${emp.fullname}" class="form-control">
					</div>
					
					<div class="form-group">
						Email Id :-<input type="text" name="email" id="email"
							placeholder="Enter Email" value="${emp.email}" class="form-control">
					</div>

					<div class="form-group">
						Password:-<input type="password" name="password" id="password"
							value="${emp.password}" placeholder="Enter password" class="form-control">					
					</div>

					<div class="form-group">
						Phone No :-<input type="text" name="phone" id="phone"
							placeholder="Enter phoneNo" value="${emp.phone}" class="form-control">
					</div>


					<div class="form-group">
						<label>Address:-</label> <input type="text" class="form-control"
							name="address" id="address" placeholder="Enter Adderess Here"
							value="${emp.address}" class="form-control">
					</div>

					<div class="form-group">
						<label>Date of Birth:</label> <input type="text" name="dob"
							value="${emp.dob}" id="date" placeholder="dd-mm-yyyy" class="form-control">
					</div>


					<div class="form-group">
						<label>Select Gender:</label><br>
						<input
							type="radio" class="form-check-input" value="Male" name="gender"
							id="gender" <c:if test="${emp.gender=='Male'}">checked</c:if>>Male<br>
							
						<input type="radio" class="form-check-input" value="Female"
							name="gender" id="gender"
							<c:if test="${emp.gender=='Female'}">checked</c:if>>Female
					</div>


					<div class="form-group">
						<label>Select City:</label> <select class="form-control"
							name="city">
							<option>Select city</option>
							<option <c:if test="${emp.city=='Nagpur'}">selected</c:if>>Nagpur</option>
							<option <c:if test="${emp.city=='Pune'}">selected</c:if>>Pune</option>
							<option <c:if test="${emp.city=='Nashik'}">selected</c:if>>Nashik</option>
							<option <c:if test="${emp.city=='Hyderabad'}">selected</c:if>>Hyderabad</option>
							<option <c:if test="${emp.city=='Mumbai'}">selected</c:if>>Mumbai</option>
						</select>
					</div>

					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
				<div class="col-md-3"></div>
			</div>
		</div>

	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>
</body>
</html>