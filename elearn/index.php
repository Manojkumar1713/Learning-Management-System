<?php
session_start();
include 'db.php';
if($_SESSION['register']=="")
{
	echo "<script> location.href = '/login/login/index.php';</script>";
}

$c = $_GET['i'];
$table = "Select the Course";
if($c == 1)
{
	$table = "Java";
	$tab = "java";
}
elseif ($c == 2) {
	// code...
	$table = "CC";
	$tab = "cc";
}
else if($c == 3)
{
	$table = "C";
	$tab = "c";
}
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
		<link rel="icon" type="image/png" href="/login/login/images/icons/klu.png"/>
    <title>KARE</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="style.css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
</head>

<body>
    <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3>LEARNING MANAGEMENT SYSTEM</h3>
            </div>

            <ul class="list-unstyled components">
                <p><?php echo $table; //echo $tab; ?></p>
                <li class="active">
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">UNIT 1</a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                        <?php
													 $res = mysqli_query($db,"select * from $table where unit = 1");
													while($row=mysqli_fetch_array($res))
													{
														?>
														<li>
															<a href="#" id="play1" onclick="myFunction('<?php echo $row['video']; ?>','/Admin/klu/html/uploads/<?php echo $row['files']; ?>')">
																<?php echo $row['chapter'];?>
															</a>
														</li>

													<?php
												}
												$quer = "select * from dates where unit = 1 AND topic ='$tab'";
												$r = mysqli_query($db,$quer);
												while($e = mysqli_fetch_array($r))
												{
													$date = $e['date'];
												}

												$originalDate = strtotime("$date");
												$today = strtotime(date("Y/m/d"));
												$diff = ($today - $originalDate);
												$days = $diff/86400;
												$days = intval($days);
												if ($date == NULL) {
																$url = "/Admin/klu/html/404.html";
															}
												elseif($days <= 0){
												$url = "/elearn/Quiz/uans.php?table=$tab&id=1";
															}
												elseif($days > 0){
																$url = "/elearn/alert.php";
															}
											?>
												<li>
													<a href="<?php echo $url; ?>" target="_blank">QUIZ</a>
												</li>
                    </ul>
                </li>


                <li class="active">
                    <a href="#homeSubmenu2" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">UNIT 2</a>
                    <ul class="collapse list-unstyled" id="homeSubmenu2">
											<?php
												 $res = mysqli_query($db,"select * from $table where unit = 2");
												while($row=mysqli_fetch_array($res))
												{
													?>
													<li>
														<a href="#" id="play1" onclick="myFunction('<?php echo $row['video']; ?>','/Admin/klu/html/uploads/<?php echo $row['files']; ?>')">
															<?php echo $row['chapter'];?>
														</a>
													</li>

												<?php
												}
												$r = mysqli_query($db,"select * from dates where unit = 2 AND topic ='$tab'");
												while($e = mysqli_fetch_array($r))
												{
													$date = $e['date'];
												}
												$url = "http://localhost/elearn/404.html";
												$originalDate = strtotime("$date");
												$today = strtotime(date("Y/m/d"));
												$diff = ($today - $originalDate);
												$days = $diff/86400;
												$days = intval($days);
												if ($date == NULL) {
																$url = "/Admin/klu/html/404.html";
															}
												elseif($days <= 0){
												$url = "/elearn/Quiz/uans.php?table=$tab&id=2";
															}
												elseif($days > 0){
																$url = "/elearn/alert.php";
															}
											?>
												<li>
													<a href="<?php echo $url; ?>" target="_blank">QUIZ</a>
												</li>
                    </ul>
                </li>
                <li class="active">
                    <a href="#homeSubmenu3" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">UNIT 3</a>
                    <ul class="collapse list-unstyled" id="homeSubmenu3">
											<?php
												 $res = mysqli_query($db,"select * from $table where unit = 3");


												while($row=mysqli_fetch_array($res))
												{
													?>
													<li>
														<a href="#" id="play1" onclick="myFunction('<?php echo $row['video']; ?>','/Admin/klu/html/uploads/<?php echo $row['files']; ?>')">
															<?php echo $row['chapter'];?>
														</a>
													</li>

												<?php
												}
												$r = mysqli_query($db,"select * from dates where unit = 3 AND topic ='$tab'");
												while($e = mysqli_fetch_array($r))
												{
													$date = $e['date'];
												}
												$originalDate = strtotime("$date");
												$today = strtotime(date("Y/m/d"));
												$diff = ($today - $originalDate);
												$days = $diff/86400;
												$days = intval($days);
												if ($date == NULL) {
																$url = "/Admin/klu/html/404.html";
															}
												elseif($days <= 0){
												$url = "/elearn/Quiz/uans.php?table=$tab&id=3";
															}
												elseif($days > 0){
																$url = "/elearn/alert.php";
															}
											?>
												<li>
													<a href="<?php echo $url; ?>" target="_blank">QUIZ</a>
												</li>
                    </ul>
                </li>
                <li class="active">
                    <a href="#homeSubmenu4" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">UNIT 4</a>
                    <ul class="collapse list-unstyled" id="homeSubmenu4">
											<?php
												 $res = mysqli_query($db,"select * from $table where unit = 4");


												while($row=mysqli_fetch_array($res))
												{
													?>
													<li>
														<a href="#" id="play1" onclick="myFunction('<?php echo $row['video']; ?>','/Admin/klu/html/uploads/<?php echo $row['files']; ?>')">
															<?php echo $row['chapter'];?>
														</a>
													</li>

												<?php
												}
												$r = mysqli_query($db,"select * from dates where unit = 4 AND topic ='$tab'");
												while($e = mysqli_fetch_array($r))
												{
													$date = $e['date'];
												}
												$originalDate = strtotime("$date");
												$today = strtotime(date("Y/m/d"));
												$diff = ($today - $originalDate);
												$days = $diff/86400;
												$days = intval($days);
												if ($date == NULL) {
																$url = "/Admin/klu/html/404.html";
															}
												elseif($days <= 0){
												$url = "/elearn/Quiz/uans.php?table=$tab&id=4";
															}
												elseif($days > 0){
																$url = "/elearn/alert.php";
															}
											?>
												<li>
													<a href="<?php echo $url; ?>" target="_blank">QUIZ</a>
												</li>
                    </ul>
                </li>
                <li class="active">
                    <a href="#homeSubmenu5" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">UNIT 5</a>
                    <ul class="collapse list-unstyled" id="homeSubmenu5">
											<?php
												 $res = mysqli_query($db,"select * from $table where unit = 5");

												while($row=mysqli_fetch_array($res))
												{
													?>
													<li>
														<a href="#" id="play1" onclick="myFunction('<?php echo $row['video']; ?>','/Admin/klu/html/uploads/<?php echo $row['files']; ?>')">
															<?php echo $row['chapter'];?>
														</a>
													</li>

												<?php
												}
												$r = mysqli_query($db,"select * from dates where unit = 5 AND topic ='$tab'");
												while($e = mysqli_fetch_array($r))
												{
													$date = $e['date'];
												}
												$originalDate = strtotime("$date");
												$today = strtotime(date("Y/m/d"));
												$diff = ($today - $originalDate);
												$days = $diff/86400;
												$days = intval($days);
												if ($date == NULL) {
																$url = "/Admin/klu/html/404.html";
															}
												elseif($days <= 0){
												$url = "/elearn/Quiz/uans.php?table=$tab&id=5";
															}
												elseif($days > 0){
																$url = "/elearn/alert.php";
															}
											?>
												<li>
													<a href="<?php echo $url; ?>" target="_blank">QUIZ</a>
												</li>
                    </ul>
                </li>
								<?php
								$r = mysqli_query($db,"select * from Assign_date where id = 1");
								while($e = mysqli_fetch_array($r))
								{
									$date = $e['date'];
								}
								$originalDate = strtotime("$date");
								$today = strtotime(date("Y/m/d"));
								$diff = ($today - $originalDate);
								$days = $diff/86400;
								$days = intval($days);
								if($date == NULL){
										$url = "/Admin/klu/html/404.html";
								}
								else if($days <= 0){
								$url = "/elearn/Assignment/index4.php?lang=$table";
											}
								elseif($days > 0){
												$url = "/elearn/alert.php";
											}
								?>
									<li>
                    <a href="<?php echo $url; ?>" >Assignment-Section</a>
                </li>
								<li>
									<a href="#" onclick="prog()">Progression Bar</a>
							</li>
							<li>
								<a href="comp/">Online Compiler</a>
						</li>

            </ul>

            <ul class="list-unstyled CTAs">
                <li>
                    <a href="logout.php" class="download">LOGOUT</a>
                </li>

            </ul>
						<!-- <ul>
							<li>
								<a href="http://www.facebook.com/manumagics9">Developed By Manoj & Team</a>
							</li>
						</ul> -->
        </nav>

        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="btn btn-info">
                        <i class="fas fa-align-left"></i>
                        <span>Welcome <?php echo $_SESSION['register']; ?> </span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="index.php?i=1">Java</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="index.php?i=2">C++</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="index.php?i=3">C</a>
                            </li>

                        </ul>
                    </div>
                </div>
            </nav>
						<div id ="graph" style="display:none;">
								<script type="text/javascript">
  									window.onload = function () {
    								var chart = new CanvasJS.Chart("chartContainer",
    									{
      								title:{
        							text: "Progress of Your Results"

      								},
											data: [{
		        type: "column",
		        dataPoints: [
							<?php
							$reg = $_SESSION['register'];
							$A1 ="select user , Round(AVG(marks)) As mm from marks where Number = 'A1' AND user='$reg' group by user;";
							$A11 = mysqli_query($db,$A1);
							while($reo = mysqli_fetch_array($A11))
							{
							 ?>

		          { x: 10, y: <?php echo $reo['mm']; ?> , label:"Assignment"},<?php }

							$A1 ="select user , Round(AVG(marks)) As A2 from marks where Number = 'A2' AND user='$reg' group by user;";
							$A11 = mysqli_query($db,$A1);
							while($reo = mysqli_fetch_array($A11))
							{
							 ?>

		          { x: 20, y: <?php echo $reo['A2']; ?> , label:"Assignment"},<?php }

							$A1 ="select user , Round(AVG(marks)) As A3 from marks where Number = 'A3' AND user='$reg' group by user;";
							$A11 = mysqli_query($db,$A1);
							while($reo = mysqli_fetch_array($A11))
							{ ?>

		        	{ x: 30, y: <?php echo $reo['A3']; ?> , label:"Assignment"},<?php }

							$A1 ="select user , Round(AVG(marks)) As A4 from marks where Number = 'A4' AND user='$reg' group by user;";
							$A11 = mysqli_query($db,$A1);
							while($reo = mysqli_fetch_array($A11))
							{ ?>

		        	{ x: 40, y: <?php echo $reo['A4']; ?> , label:"Assignment" }, <?php }

							$A1 ="select user , Round(AVG(marks)) As A5 from marks where Number = 'A5' AND user='$reg' group by user;";
							$A11 = mysqli_query($db,$A1);
							while($reo = mysqli_fetch_array($A11))
							{ ?>

		        	{ x: 50, y: <?php echo $reo['A5']; ?> , label:"Assignment" } <?php } ?>
		        ]
		      },
						      {
						        type: "column",
						        dataPoints: [
											<?php
											$reg = $_SESSION['register'];
											$Q1 ="SELECT * FROM `uans` WHERE username = '$reg' AND testno = '1' AND topic = '$tab';";
											$Q11 = mysqli_query($db,$Q1);
											while($reo = mysqli_fetch_array($Q11))
											{
											 ?>
						        { x: 10, y: <?php echo $reo['marks']; ?> , label:"Quiz"  }, <?php }

										$Q1 ="SELECT * FROM `uans` WHERE username = '$reg' AND testno = '2' AND topic = '$tab';";
										$Q11 = mysqli_query($db,$Q1);
										while($reo = mysqli_fetch_array($Q11))
										{ ?>
						        { x: 20, y: <?php echo $reo['marks']; ?> },<?php }

										$Q1 ="SELECT * FROM `uans` WHERE username = '$reg' AND testno = '3' AND topic = '$tab';";
										$Q11 = mysqli_query($db,$Q1);
										while($reo = mysqli_fetch_array($Q11))
										{ ?>
						        { x: 30, y: <?php echo $reo['marks']; ?> },<?php }

										$Q1 ="SELECT * FROM `uans` WHERE username = '$reg' AND testno = '4' AND topic = '$tab';";
										$Q11 = mysqli_query($db,$Q1);
										while($reo = mysqli_fetch_array($Q11))
										{ ?>
						        { x: 40, y: <?php echo $reo['marks']; ?> },<?php }

										$Q1 ="SELECT * FROM `uans` WHERE username = '$reg' AND testno = '5' AND topic = '$tab';";
										$Q11 = mysqli_query($db,$Q1);
										while($reo = mysqli_fetch_array($Q11))
										{ ?>
						        { x: 50, y: <?php echo $reo['marks']; ?> }<?php } ?>
						        ]
						      }
						      ]
						    });

						    chart.render();
						  }
  </script>
  <script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	<div id="chartContainer" style="height: 300px; width: 100%;">
   </div>
							</div>
							<div class="embed-responsive embed-responsive-16by9">
								 <iframe id="a_1" width="560" height="315" src="" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
							 </div>
							 <br>
							 <div class="embed-responsive-item">
								 <embed src="" id="pdf" width="300" height="300"></embed>
							 </div>
							 <script>
						 function prog() {
    				 			var x = document.getElementById("graph")	;
    		 					if (x.style.display === "none") {
        				x.style.display = "block";
    							} else {
        					x.style.display = "none";
    						}
							}
							 </script>

							<?php 	//echo $quer;
										//echo"</br>";
										//echo $Q1;
							 		?>
						<!--	<div>
								<a class="btn btn-success" href="">Quiz</a>
							</div>-->



    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
        function myFunction(x,y) {
    		document.getElementById("a_1").src=x;
				document.getElementById("pdf").src=y;
			}

$("#play1").one(function(){
  //as noted in addendum, check for querystring exitence
  var symbol = $("#a_1")[0].src.indexOf("?") > -1 ? "&" : "?";
  //modify source to autoplay and start video
  $("#a_1")[0].src += symbol + "autoplay=1";
 });






    </script>

</body>

</html>
