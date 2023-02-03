<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--Bootsrap 4 CDN-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<body>

	<h3 style="text-align: center;">Welcome to Login Form</h3>

	${msg}
	<div class="container-fluid">
		<div class="row">
			<div class="col col-lg-4"></div>
			<div class="col col-lg-4">
				<form action="dologin" method="post">
					<div class="form-group">
						<label>User Name </label> <input type="text" name="email"
							class="form-control">
					</div>
					<div class="form-group">
						<label>Password </label> <input type="password" name="password"
							class="form-control">
					</div>
					<div class="form-group">
						<button class="btn btn-primary" type="submit">Login</button>
					</div>
				</form>
			</div>
			<div class="col col-lg-4"></div>
		</div>

	</div>
</body>
</body>
</html>