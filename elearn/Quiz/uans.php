<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link rel="icon" type="image/png" href="/login/login/images/icons/klu.png"/>
	<title>QUIZ</title>

	<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>

<body>

	<div id="page-wrap">

		<h1>ANSWER THE FOLLOWING</h1>

		<form method="post" id="quiz">
			<?php
	    session_start();
	    if($_SESSION['register']=="")
	    {
	    	echo "<script> location.href = '/login/login/index.php';</script>";
	    }

	    include 'db.php';
	    $tab = $_GET['table'];
	  //  echo $tab;
	    $get = $_GET['id'];

			$user1=$_SESSION['register'];
	    $query3="select * from uans where testno='$get' AND (topic='$tab' AND username = '$user1'); ";
	    $sql2=mysqli_query($db,$query3);
			//echo $query3;
	    if(mysqli_num_rows($sql2)>0)
	    echo "<script> alert('You Have Taken Test Already'); location.href='/elearn/Quiz/grade.php?table=$tab&id=$get';</script> ";
	    else {
					$query="select * from `$tab` where `Test_name`='$get'";
						//echo $query;
						$sql = mysqli_query($db,$query);
						$i=0;
						while ($row = mysqli_fetch_array($sql)) {

							if($row['fname']!="")
							{
								$ff = 1;
							}
							?>
            <ol>

                <li>

                    <h3><?php echo $row['Qname']; ?></h3>

										<?php
										if($ff == 1){
										?>
										<img src="/Admin/klu/html/uploads/quiz/<?php echo $row['fname']; ?>" id = "im" height="100%" width="110%"></img>
									<?php } ?>
										<div>
                        <input type='radio' name='<?php echo $i;?>' value='A' />
                        <label for="<?php echo $i+1;echo ")"; ?>">a) <?php echo $row['opA']; ?></label>
                    </div>

                    <div>
                        <input type='radio' name='<?php echo $i;?>' value='B' />
                        <label for="<?php echo $i+1;echo ")"; ?>">b) <?php echo $row['opB']; ?></label>
                    </div>

                    <div>
                        <input type='radio' name='<?php echo $i;?>' value='C' />
                        <label for="<?php echo $i+1;echo ")"; ?>">c) <?php echo $row['opC']; ?></label>
                    </div>

                    <div>
                          <input type='radio' name='<?php echo $i;?>' value='D' />
                        <label for="<?php echo $i+1;echo ")"; ?>">d) <?php echo $row['opD']; ?></label>
                    </div>
										<div id="quiz" style="display:none;">
								      <?php echo $row['reason']; ?>
								    </div>
                </li>


            </ol>
						<?php
						$i++;

						}

						     ?>

            <input type="submit" value="Submit Quiz" name="submit" />
						<?php //echo $query3; ?>
		</form>

	</div>
	<?php
	if(isset($_POST['submit']))
	{
	  $query="select * from `$tab` where `Test_name`='$get'";

	  $sql = mysqli_query($db,$query);
	  $j=0;
	  $marks=0;
	  $ans="";
	  while ($row = mysqli_fetch_array($sql)) {
	    // code...
	  $A=$_POST[$j];
	//  echo $A;
	$ans=$ans.$A;
	  //$A=(String)$A;
	  echo "</br>";
	$r=$row['correct'];
	echo "</br>";
	  if($r==$A){
	    $marks=$marks+1;

	  }


	  $j++;
	}
	$user1=$_SESSION['register'];
	$query3="insert into uans (username,ans,topic,testno,marks) values('$user1','$ans','$tab','$get','$marks')";
	mysqli_query($db,$query3);
	echo "<script>location.href='/elearn/Quiz/grade.php?table=$tab&id=$get'</script>;";
	}
	}
	?>

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
