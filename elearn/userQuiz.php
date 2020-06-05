<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>KARE QUIZ</title>
  </head>
  <body>
    <form method="post">
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
    
    $query3="select * from uans where topic='$tab' & (testno='$get' & username = '$user1'); ";
    $sql2=mysqli_query($db,$query3);

    if(mysqli_num_rows($sql2)>1)
    echo "<script> alert('u take test already'); location.href='/elearn/uans.php?table=$tab&id=$get';</script> ";
    else {



      $query="select * from `$tab` where `Test_name`='$get'";

      $sql = mysqli_query($db,$query);
      $i=0;
      while ($row = mysqli_fetch_array($sql)) {
  // code...
    echo $row['Qname'];
      ?> </br></br>
      <input type='radio' name='<?php echo $i;?>' value='A'><?php echo $row['opA']; ?>  &emsp;
      <input type='radio' name='<?php echo $i;?>' value='B'><?php echo $row['opB'];?></br></br>
      <input type='radio' name='<?php echo $i;?>' value='C'><?php echo $row['opC'];?>&emsp;
      <input type='radio' name='<?php echo $i;?>' value='D'><?php echo $row['opD'];?></br></br>
      <div id="quiz" style="display:none;">
      <?php echo $row['reason']; ?>
      </div>


      <?php
      $i++;
      }
     ?>




     <?php //echo $query; ?>
     <input type='submit' value='submit' name='submit'>
   </form>
  </body>

</html>
<?php
if(isset($_POST['submit']))
{
  $query="select * from `$tab` where `Test_name`='$get'";
  echo $query;
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
echo "<script>location.href='/elearn/uans.php?table=$tab&id=$get'</script>;";
}
}
?>
