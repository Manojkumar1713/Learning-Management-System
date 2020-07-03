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

$ques =$_POST['question'];
$sample = $_POST['sample'];
$output = $_POST['output'];
$test1  = $_POST['testcase1'];
$tout = $_POST['t1out'];
$test2= $_POST['testcase2'];
$tout2 = $_POST['t2out'];
$title = $_POST['title'];
$assign = $_POST['assignment'];
$format = $_POST['format'];

$flag = 0;
if(isset($_POST['submit']))
{
  $query = "insert into question(input,output,format,t1in,t1out,t2in,t2out,ques,title,Number,author,language)values('$sample','$output','$format','$test1','$tout','$test2','$tout2','$ques','$title','$assign','$user','$table')";

	$sql= mysqli_query($con,$query);
}
if($sql)
{
  $flag=1;
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
                <!-- /Logo -->
                <!--<ul class="nav navbar-top-links navbar-right pull-right">
                    <li>
                        <form role="search" class="app-search hidden-sm hidden-xs m-r-10">
                            <input type="text" placeholder="Search..." class="form-control"> <a href=""><i class="fa fa-search"></i></a> </form>
                    </li>
                    <li>
                        <a class="profile-pic" href="#"> <img src="../plugins/images/users/varun.jpg" alt="user-img" width="36" class="img-circle"><b class="hidden-xs">Steave</b></a>
                    </li>
                </ul>-->
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
                        <h4 class="page-title">Add Assignment Questions</h4> </div>

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
                    <strong>Success</strong> Data Successfully Inserted
                  </div>
                  <?php
                }
                ?>
                <!--/.row -->
                <!--row -->
                <!-- /.row -->
                <div class="row">

<form action="Add.php" method="POST">

          <div class="form-group">
            <label class="title" >Title</label>

              <input type="text" id ="title" class="form-control" name="title" placeholder="Enter question title" required>

          </div>
         <div class="form-group">
           <label class="question" >Question</label>

             <input type="text" id="question" class="form-control" name="question" placeholder="Enter question" required>

         </div>
				 <div class="form-group">
           <label class="sample">Input Format</label>
					 	<textarea class="form-control" name="format" rows="5" cols="10" placeholder="Enter Input Format" required></textarea>
            <!-- <input type="textarea" rows="10" cols="10" class="form-control" name="sample" placeholder="Enter sample input" required>-->

         </div>
         <div class="form-group">
           <label class="sample">Sample Input</label>
					 	<textarea class="form-control" name="sample" rows="5" cols="10" placeholder="Enter Sample Input" required></textarea>
            <!-- <input type="textarea" rows="10" cols="10" class="form-control" name="sample" placeholder="Enter sample input" required>-->

         </div>
         <div class="form-group">
           <label class="control-label col-sm-2" >Sample Output</label>
					 	<textarea class="form-control" name="output" rows="5" cols="10" placeholder="Enter Sample output" required></textarea>
             <!--<input type="text" class="form-control" name="output" placeholder="Enter sample output" required>-->

         </div>
         <div class="form-group">
           <label class="control-label col-sm-2" >Testcase1 Input</label>
					 	<textarea class="form-control" name="testcase1" rows="5" cols="10" placeholder="Enter Testcase1 Input" required></textarea>
          <!--   <input type="text" class="form-control" name="testcase1" placeholder="Enter Testcase1 Input" required>-->

         </div>
         <div class="form-group">
           <label class="control-label col-sm-2" >Testcase1 output</label>
					 	<textarea class="form-control" name="t1out" rows="5" cols="10" placeholder="Enter Testcase1 output" required></textarea>
             <!--<input type="text" class="form-control" name="t1out" placeholder="Enter Testcase1 output" required>-->
           </div>

         <div class="form-group">
           <label class="control-label col-sm-2" >Testcase2 Input</label>
					 <textarea class="form-control" name="testcase2" rows="5" cols="10" placeholder="Enter Testcase2 Input" required></textarea>
        <!-- <input type="text" class="form-control" name="testcase2" placeholder="Enter Testcase2 Input" required>-->

     </div>
     <div class="form-group">
       <label class="control-label col-sm-2" >Testcase2 output</label>
			 	<textarea class="form-control" name="t2out" rows="5" cols="10" placeholder="Enter Testcase2 Output" required></textarea>
         <!--<input type="text" class="form-control" name="t2out" placeholder="Enter testcase2 output" required>-->

     </div>
     <div class="form-group">
       <label class="control-label col-sm-2" >Assignment Number</label>

         <input type="text" class="form-control" name="assignment" placeholder="Enter Assignment Number Like A1" required>

     </div>
     <div class="form-group">

         <button type="submit" class="btn btn-default" name="submit">Submit</button>

 </div>
</form>
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
