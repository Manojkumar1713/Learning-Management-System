<?php
session_start();
$server = "localhost";
$user = "root";
$pass ="";
$database = "questions";
$con = mysqli_connect($server,$user,$pass,$database);
if($_SESSION['register'] == "")
{
  	echo "<script> location.href = '/login/login/index.php';</script>";
}

?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" type="image/png" href="/login/login/images/icons/klu.png"/>
    <title>Assignment</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="style4.css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

</head>

<body>

    <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3>Learning Management System</h3>
                <strong>LMS</strong>
            </div>

            <ul class="list-unstyled components">
                <li class="active">
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">

                    Assignment
                    </a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                      <?php
                  		$res = mysqli_query($con,"select * from question");

                  		$id =0;

                  		while($row =mysqli_fetch_array($res))
                  		{
                  			$id++;
                        ?>
                        <li>
                            <a href="index4.php?id=<?php echo $row['id']; ?>&topic=<?php echo $row ['title']; ?>"><?php echo $row ['title']; ?></a>
                        </li>
                        <?php

                    		}
                    		?>
                    </ul>
                </li>

            </ul>


        </nav>

        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="btn btn-info">
                        <i class="fas fa-align-left"></i>
                        <span>Welcome <?php echo $_SESSION['register']; ?></span>
                    </button>
                    <centre><div class=""><h5 style="text-align:center;">Complete Your Assignment</h5></centre>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>


                </div>
            </nav>
            <div class="">

                <?php
                  $id=$_GET['id'];
                  $topic=$_GET['topic'];
                  $ue = $_SESSION['register'];
                  $sql2 = "select *from marks where user ='$ue' AND title='$topic'";

                  $ee = mysqli_query($con,$sql2);
                  if(mysqli_num_rows($ee)>0)
                  {
                    echo "<script>alert('you have taken the test already');</script>";
                  }
                  else {
                    $qu="select * from question where id=$id";
                    $p=mysqli_query($con,$qu);
                    while ($r=mysqli_fetch_array($p))
                    {
                      $ques=$r['ques'];
                      $input=$r['input'];
                      $output=$r['output'];
                      $title = $r['title'];
                    }
                }
                 ?>
                 <div>
                 <div>
                    <?php echo $x;  ?>
                <h6><strong>Objective</strong></h6>
                &emsp;<h6><?php echo $ques; ?></h6>
                 &emsp;<h6><strong>sample Input:</strong></h6>
                 &emsp;<pre><?php echo $input; ?></pre>
                 &emsp;<h6><strong>sample output:</strong></h6>
                &emsp; <pre><?php echo $output; ?></pre>
                 </div>
                 </div>

                 <div class="col-sm-1">

                 </div>

                 <div class="col-sm-1">

                 </div>


                 <div class="row cspace">
                 <div class="col-sm-8">
                 <div class="form-group">

                 <form action="/elearn/Admin/compile/compile.php" name="f2" method="POST">
                  <label for="lang"><strong><font size="3">Choose Language</font></strong></label>

                   <select class="form-control" name="language">
                   <option value="c">C</option>
                   <option value="cpp">C++</option>
                   <!--<option value="cpp11">C++11</option>-->
                   <option value="java">Java</option>
                   <!--<option value="python2.7">Python2</option>
                   <option value="python3.2">Python2</option>-->


                   </select>
                 </br>

                   <strong><label for="ta">Write Your Code</label></strong>
                   <textarea class="form-control" name="code" rows="10" cols="50"></textarea><br><br>
                   <!--<label for="in">Enter Your Input</label>
                   <textarea class="form-control" name="input" rows="10" cols="50"></textarea><br><br>-->
                   <input type="text" value="<?php echo $id; ?>" style="display:none;" name="id">
                   <input type="submit" class="btn btn-success" value="Submit Code"><br><br><br>


                 </form>

                             <div class="form-group" >
                               <header class="header">
                                  <strong><h6>Start Discussion for <?php echo $title; ?></h6></strong>
                              </header>
                              <main>
                                  <div class="userSettings">
                                      <label for="userName">Username:</label>
                                      <?php echo $_SESSION['register']; ?>
                                      <input id="userName" type="text" placeholder="Username" maxlength="32" value="<?php echo $_SESSION['register']; ?>" style="display:none;">
                                      <input id="title" type="text" placeholder="Username" maxlength="32" value="<?php echo $title; ?>" style="display:none;">
                                  </div>
                                  <div class="chat">
                                      <div id="chatOutput"></div>
                                      <input id="chatInput" type="text" placeholder="Input Text here" maxlength="128">
                                      <button id="chatSend">POST</button>
                                  </div>
                              </main>
                              <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
                             <script src="chat1.js"></script>
                             </div>
                 </div>
                 </div>
                 </div>

            </div>
          </div>
    </div>

</div>
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
    </script>
</body>


</html>
