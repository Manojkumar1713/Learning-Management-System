<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Answers</title>
  </head>
  <body>
    <?php
    session_start();
    if($_SESSION['register']=="")
    {
    	echo "<script> location.href = '/login/login/index.php';</script>";
    }
    ?>
    <form method="post">
    <?php
   include 'db.php';
    $tab = $_GET['table'];

    $get = $_GET['id'];
    
    $query="select * from `$tab` where `Test_name`='$get'";

    $sql = mysqli_query($db,$query);
    $i=0;
    $user1 = $_SESSION['register'];
    $query3="select * from uans where topic='$tab' & (testno='$get' & username = '$user1'); ";
    $sql2=mysqli_query($db,$query3);

   while($row1=mysqli_fetch_array($sql2))
   {
   $ans=$row1['ans'];
   $marks=$row['marks'];
   }

  while ($row = mysqli_fetch_array($sql)) {
  // code...
  echo $i+1; echo ")"; echo $row['Qname'];
  if($ans[$i]==$row['correct'])
  $val="<img src='pictures/right.png' width=20px; height=20px;>";
  else
  $val="<img src='pictures/wrong1.jpg' width=20px; height=20px;>";
  ?> </br></br>

  <?php if($ans[$i]=='A')
  { echo $val;
    echo $row['opA'];
  }
  else {
      echo "A."; echo $row['opA'];
    }
    ?>  &emsp;
  <?php if($ans[$i]=='B')
  { echo $val;
    echo $row['opB'];
  }
  else {
    echo "B.";  echo $row['opB'];
    }
    ?></br></br>
   <?php if($ans[$i]=='C')
   { echo $val;
     echo $row['opC'];
   }
   else {
       echo "C."; echo $row['opC'];
     }?>
     &emsp;
  <?php if($ans[$i]=='D')
  { echo $val;
    echo $row['opD'];
  }
  else {
      echo "D."; echo $row['opD'];
    }?>
  </br></br>
    <div id="quiz" style="display:block ;">
      <b>Correct Answer:</b><?php echo $row['correct'];?>
    </br>
      <b>Reason:</b>&emsp;<?php echo $row['reason']; ?>
    </div>
</br>
</br>
</br>

<?php
$i++;
}
   ?>
</form>
  </body>
</html>
