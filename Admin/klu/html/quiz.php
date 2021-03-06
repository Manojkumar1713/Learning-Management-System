<?php
session_start();
if($_SESSION['admin']=="")
{
	echo "<script> location.href = '/login/login/admin/admin/';</script>";
}
$user = $_SESSION['admin'];
$sql1 = "select course from facultylogin where register='$user'";
include 'dp.php';

$res = mysqli_query($con,$sql1);
while($row = mysqli_fetch_array($res)){
	$table = $row['course'];
}
$user = $_SESSION['admin'];

$table = strtolower($table);

if(isset($_POST['submit']))
{
	if(!empty($_FILES['file']['name']))
	{
	$file = $_FILES['file']['name'];
	$filesize = $_FILES['file']['size'];
	$filetype = $_FILES['file']['type'];
	$filetmp = $_FILES['file']['tmp_name'];
	$files = 'uploads/quiz/'.$_FILES['file']['name'];
	$move = move_uploaded_file($filetmp,$files);
	}
	else{
		$move= 1;
		$file = "";
	}

  $t = $_POST['table'];
  $test_name=$_POST['unit'];
  $question=$_POST['question'];
  $opA=$_POST['optionA'];
  $opB=$_POST['optionB'];
  $opC=$_POST['optionC'];
  $opD=$_POST['optionD'];
  $correct=$_POST['ans'];
  $reason = $_POST['reason'];
  $query="insert into `$t`(Test_name,Qname,opA,opB,opC,opD,correct,reason,fname,author) values ('$test_name','$question','$opA','$opB','$opC','$opD','$correct','$reason','$file','$user');";
	if($move){
		$sql=mysqli_query($con,$query);
	}
}
if($sql)
{
  $flag = 1;
}

 ?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>KLU admin</title>
		<link rel="icon" type="image/png" href="/login/login/images/icons/klu.png"/>
		<!-- Bootstrap Core CSS -->
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- Menu CSS -->
    <link href="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
    <!-- toast CSS -->
    <link href="../plugins/bower_components/toast-master/css/jquery.toast.css" rel="stylesheet">
    <!-- morris CSS -->
    <link href="../plugins/bower_components/morrisjs/morris.css" rel="stylesheet">
    <!-- chartist CSS -->
    <link href="../plugins/bower_components/chartist-js/dist/chartist.min.css" rel="stylesheet">
    <link href="../plugins/bower_components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.css" rel="stylesheet">
    <!-- animation CSS -->
    <link href="css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- color CSS -->
    <link href="css/colors/default.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header">
    <!-- ============================================================== -->
    <!-- Preloader -->
    <!-- ============================================================== -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
        </svg>
    </div>
    <!-- ============================================================== -->
    <!-- Wrapper -->
    <!-- ============================================================== -->
    <div id="wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <nav class="navbar navbar-default navbar-static-top m-b-0">
            <div class="navbar-header">
                <div class="top-left-part">
                    <!-- Logo -->
                  <h3><?php echo $table;

									?></h3>
                </div>

            </div>
            <!-- /.navbar-header -->
            <!-- /.navbar-top-links -->
            <!-- /.navbar-static-side -->
        </nav>
        <!-- End Top Navigation -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav slimscrollsidebar">
                <div class="sidebar-head">
                    <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span class="hide-menu">Navigation</span></h3>
                </div>
                <ul class="nav" id="side-menu">
                    <li style="padding: 70px 0 0;">
                        <a href="index.php" class="waves-effect"></i>Dashboard</a>
                    </li>
                    <li>
                        <a href="marks.php" class="waves-effect"></i>Student Marks </a>
                    </li>
                    <li>
                        <a href="Add.php" class="waves-effect">Assignment Questions</a>
                    </li>
                    <li>
                        <a href="Delete.php" class="waves-effect">Delete Assignment</a>
                    </li>

                    <li>
                        <a href="data.php" class="waves-effect">Course Materials</a>
                    </li>
										<li>
                        <a href="deletecoursedata.php" class="waves-effect">Delete course data</a>
                    </li>
                    <li>
                       <a href="quiz.php" class="waves-effect">Quiz Questions</a>
                    </li>
										<li>
                       <a href="deletequizdata.php" class="waves-effect">Delete Quiz Questions</a>
                    </li>
                    <li>
                       <a href="qdates.php" class="waves-effect">Quiz due date</a>
                    </li>
										<li>
                       <a href="Assign_date.php" class="waves-effect">Assignment due Date</a>
                    </li>

                </ul>
                <div class="center p-20">
                     <a href="logout.php" class="btn btn-danger btn-block waves-effect waves-light">LOGOUT</a>
                 </div>
            </div>

        </div>
        <!-- ============================================================== -->
        <!-- End Left Sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page Content -->
        <!-- ============================================================== -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Enter Quiz data for Respective Course</h4> </div>

                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <!-- ============================================================== -->
                <!-- Different data widgets -->
                <!-- ============================================================== -->
                <!-- .row -->

                <?php
                if($sql)
                {

                  ?>
                  <div class="alert  alert-success">
                    <strong>Success</strong> Data Successfully Inserted <?php echo $table; ?> Table
                  </div>
                  <?php
                }
                ?>
                <!--/.row -->
                <!--row -->
                <!-- /.row -->
                <form method="post" enctype="multipart/form-data">
                  <table>
                    <div class="form-group">
                      <label class="title" >Enter Question</label>

                        <input type="text" id ="title" class="form-control" name="question" placeholder="Enter question" required>

                    </div>
                    <div class="form-group">
                      <label class="title" >Enter Unit Number</label>

                        <input type="text" id ="title" class="form-control" name="unit" placeholder="Enter unit number" required>

                    </div>
										<div calss = "form-group">
											<label for ="file">Upload Any Image</label>
												<input type ="file" name="file" id="file" class="form-control">
										</div>
										<br>
                      <tr><td>OptionA:</td><td><input type="text" name="optionA"></br></br></td></tr>
                      <tr><td>OptionB:</td><td><input type="text" name="optionB"></br></br></td></tr>
                      <tr><td>OptionC:</td><td><input type="text" name="optionC"></br></br></td></tr>
                      <tr><td>OptionD:</td><td><input type="text" name="optionD"></br></br></td></tr>
                      <tr><td>correct Option</td><td><input type="char" name="ans"></br></br></td></tr>
                    </table>
                    <input type="text" name="table" value="<?php echo $table; ?>" style="display:none;">
                  </br>
                    <label class="title" >Enter Reason</label>

                      <input type="text" id ="reason" class="form-control" name="reason" placeholder="Enter Reason" required>

                    </br>
                    <div class="form-group">

                        <button type="submit" class="btn btn-primary" name="submit">Submit</button>

                </div>
                  </form>

                <div class="row">
                    <?php //echo $query; ?>
                </div>

            </div>
            <!-- /.container-fluid -->
            <footer class="footer text-center"> KLU2K18 &copy;</footer>
        </div>
        <!-- ============================================================== -->
        <!-- End Page Content -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="../plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!--slimscroll JavaScript -->
    <script src="js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="js/waves.js"></script>
    <!--Counter js -->
    <script src="../plugins/bower_components/waypoints/lib/jquery.waypoints.js"></script>
    <script src="../plugins/bower_components/counterup/jquery.counterup.min.js"></script>
    <!-- chartist chart -->
    <script src="../plugins/bower_components/chartist-js/dist/chartist.min.js"></script>
    <script src="../plugins/bower_components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.min.js"></script>
    <!-- Sparkline chart JavaScript -->
    <script src="../plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.min.js"></script>
    <script src="js/dashboard1.js"></script>
    <script src="../plugins/bower_components/toast-master/js/jquery.toast.js"></script>
</body>

</html>
