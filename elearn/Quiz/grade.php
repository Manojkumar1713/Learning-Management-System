<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link rel="icon" type="image/png" href="/login/login/images/icons/klu.png"/>
	<title>Answers</title>

	<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>

<body>
	<?php
	session_start();
	if($_SESSION['register']=="")
	{
		echo "<script> location.href = '/login/login/index.php';</script>";
	}

	?>

	<div id="page-wrap">

		<h1>Results</h1>

		<form method="post" id="quiz">
			<?php
	    include 'db.php';
	    $tab = $_GET['table'];

	    $get = $_GET['id'];
	 //    $user = $_SESSION['register'];
		// $ss = "select $user form uans where testno = $get;";
		// $r = mysqli_query($db,$ss);
		// if(mysqli_num_rows($r)<0)
		// {
		// 	echo "<script> location.href = '/elearn/';</script>";
		// }

	    $query="select * from `$tab` where `Test_name`='$get'";

	    $sql = mysqli_query($db,$query);
	    $i=0;
	    $user1 = $_SESSION['register'];
	    //$query3="select * from uans where topic='$tab' & (testno='$get' & username = '$user1'); ";
			$query3="select * from uans where testno='$get' AND (topic='$tab' AND username = '$user1'); ";
	    $sql2=mysqli_query($db,$query3);

	   while($row1=mysqli_fetch_array($sql2))
	   {
	   $ans=$row1['ans'];
	   $marks=$row1['marks'];
	   }
		 echo "you have got ".$marks. " marks";

		 echo "<br>";
		   while ($row = mysqli_fetch_array($sql)) {
				 ?>
            <ol>

                <li>

                    <h3><?php echo $i+1; echo ")"; echo $row['Qname']; ?></h3>
										<?php
										if($ans[$i]==$row['correct'])
									  $val="<img src='pictures/right.png' width=20px; height=20px;>";
									  else
									  $val="<img src='pictures/wrong1.jpg' width=20px; height=20px;>";
									  ?>
                    <div>
											<?php if($ans[$i]=='A')
											{ echo $val;
												echo $row['opA'];
											}
											else {
													echo "A."; echo $row['opA'];
												}
												?>
                    </div>

                    <div>
											<?php if($ans[$i]=='B')
											{ echo $val;
												echo $row['opB'];
											}
											else {
												echo "B.";  echo $row['opB'];
												}
												?>
                    </div>

                    <div>
											<?php if($ans[$i]=='C')
									    { echo $val;
									      echo $row['opC'];
									    }
									    else {
									        echo "C."; echo $row['opC'];
									      }?>
                    </div>

                    <div>
											<?php if($ans[$i]=='D')
											{ echo $val;
												echo $row['opD'];
											}
											else {
													echo "D."; echo $row['opD'];
												}?>
                    </div>
										<div id="quiz" style="display:block ;">
								      <b>Correct Answer:</b><?php echo $row['correct'];?>
								    </br>
								      <b>Reason:</b>&emsp;<?php echo $row['reason']; ?>
								    </div>
                </li>



            </ol>

						<?php
						$i++;
						}
						   ?>

		</form>

	</div>

	<script type="text/javascript">
	var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
	document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
	</script>
	<script type="text/javascript">
	var pageTracker = _gat._getTracker("UA-68528-29");
	pageTracker._initData();
	pageTracker._trackPageview();
	</script>

</body>

</html>
