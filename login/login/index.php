<?php
	session_start();
	include 'db.php';
	if(isset($_POST['button']))
	{
		$register = $_POST['register'];
		$password = $_POST['pass'];

		$sql = "select * from login where register = '$register' and password = '$password'";

		$result = mysqli_query($db,$sql);
		$r = mysqli_num_rows($result);

		if($r > 0)
		{
			$_SESSION['message']="you have logged in";
			$_SESSION['register'] = $register;
			echo "<script>location.href='/elearn/index.php';</script>";

	}else
	{
		echo "<script type='text/javascript'>alert('Incorrect registration number/password');</script>";

	}
	}
?>







<!DOCTYPE html>
<html lang="en">
<head>
	<title>KARE</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/klu.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>

	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/klu1.jpg');">
			<div class="wrap-login100 p-t-190 p-b-30">
				<form class="login100-form validate-form" method="POST">
					<div class="login100-form-avatar">
						<img src="images/klu.png" alt="AVATAR">
					</div>

					<span class="login100-form-title p-t-20 p-b-45">
						Kalasalingam Academy of Research and Education
					</span>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required">
						<input class="input100" type="text" name="register" placeholder="Registrtion Number">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock"></i>
						</span>
					</div>

					<div class="container-login100-form-btn p-t-10">

					<input type="submit" class="login100-form-btn" name="button" value="Login">
					</div>

					<div class="text-center w-full p-t-25 p-b-230">
						<a href="#" class="txt1">
							Forgot Username / Password?
						</a>
						<a href="/login/login/admin/admin/" class="txt1">
							Faculty login
						</a>
					</div>

					<div class="text-center w-full">
						<a class="txt1" href="reg.php">
							Create new account
							<i class="fa fa-long-arrow-right"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>




<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
