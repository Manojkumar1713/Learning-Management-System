<?php
	session_start();
    include 'db.php';
	if(isset($_POST['signupbtn'])){
		session_start();

		$reg = $_POST['reg'];
		$psw = $_POST['psw'];




			$sql = "Insert into login(register,password) VALUES('$reg','$psw')";

			$i=mysqli_query($db, $sql);
			if($i){
			echo "<script>alert('you have registered succesfully');</script>";
		  echo "<script> location.href ='index.php';</script>";
		}


	}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Registration form</title>
	<style>
	/* Full-width input fields */
  input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #00BFFF;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #4CAF50;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
  margin-top:30px;
  margin-bottom:150px;
  margin-right:150px;
  margin-left:450px;
  padding:9px 35px;
  background:#FFFFFF;
  width:400px;
  border-radius:20px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
    width: 100%;
  }
}
</style>
	</head>
<body>
  <form action="" style="border:1px solid #ccc" method="post">
  <div class="container">
    <h1>Sign Up</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>



    <label for="register"><b>Registration Number</b></label>
    <input type="text" placeholder="Enter Register number" name="reg" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>




    <div class="clearfix">

      <button type="submit" name="signupbtn">Sign Up</button>
    </div>
  </div>
</form>
</body>
</html>
