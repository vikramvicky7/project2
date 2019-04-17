
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<style>
.container {
	max-width: 503px;
	color: white;
	padding-top: 50px;
	padding-bottom: 50px;
	padding-left: 25px;
	text-align: center;
	margin-left: 400px;
	width: 500px;
	margin-bottom: 10px;
	box-shadow: 0px 0px 25px rgb(216, 176, 176);
	border-radius: 20px;
	margin-top: 85px;
}

.bg-img {
	background-image: url("x.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
}
</style>
</head>

<body class="bg-img">


	<form action="/app/signIn" method="post">

		<div class="container">

			<p class="display-3 text-center">Login Form</p>
		</div>

		<div class="container">
			<div class="form-group">
				<label for="username">username</label> <input type="text"
					class="form-control" id="email" placeholder="Enter email"
					name="email">
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					class="form-control" id="pwd" placeholder="Enter password"
					name="password">
			</div>

			<div class="container-login100-form-btn">
				<input type="submit" class="login100-form-btn" value="Login">

			</div>
			<div class="text-center p-t-90">
				<a class="txt1"
					href="http://localhost:8080/app/resources/signUp.jsp"> Don't
					have an account? </a>
			</div>



		</div>

	</form>

</body>
</html>