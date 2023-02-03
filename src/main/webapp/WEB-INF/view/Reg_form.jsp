<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">

<title>Registration page!</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<h1 style="text-align:center;">Registration Form</h1>
			
				<form action="register" method="post">
					<div class="form-group">
						Full Name:-<input type="text" name="fullname"
							placeholder="Enter Fullname" id="fullname" class="form-control"> 
					</div>
					
					<div class="form-group">
						Email Id :-<input type="text" name="email" id="email"
							placeholder="Enter Email" class="form-control">

					</div>

					<div class="form-group">
						Password:-<input type="password" name="password" id="password"
							placeholder="Enter Password" class="form-control">

					</div>

					<div class="form-group">
						Phone No :-<input type="text" name="phone" id="phone"
							placeholder="Enter Phone No" class="form-control">

					</div>

					<div class="form-group">
						<label>Address:-</label> <input type="text" class="form-control"
							name="address" id="address" placeholder="Enter Adderess">

					</div>

					<div class="form-group">
						<label>Date of Birth:</label> <input type="text" name="dob"
							id="date" placeholder="dd-mm-yyyy" class="form-control">
					</div>
					
					<div class="form-group">
						<label>Select Gender:</label><br>
						<input type="radio" class="form-check-input" value="Male"
							name="gender" id="gender">Male<br>
						<input type="radio" class="form-check-input" value="Female"
							name="gender" id="gender">Female
					</div>

					<div class="form-group">
						<label>Select City:</label> <select class="form-control"
							name="city">
							<option>Select city</option>
							<option>Nagpur</option>
							<option>Pune</option>
							<option>Nashik</option>
							<option>Hyderabad</option>
							<option>Mumbai</option>
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