<!DOCTYPE html>
<html>
<head>

</head>
<body>
  <center>
  <form method="post">
    <table>
    <tr><td>Enter a question:</td>
    <td><textarea name="question" col=50 row=6></textarea></br></br></td></tr>
  <tr><td>OptionA:</td><td><input type="text" name="optionA"></br></br></td></tr>
    <tr><td>OptionB:</td><td><input type="text" name="optionB"></br></br></td></tr>
    <tr><td>OptionC:</td><td><input type="text" name="optionC"></br></br></td></tr>
    <tr><td>OptionD:</td><td><input type="text" name="optionD"></br></br></td></tr>
    <tr><td>correct Option</td><td><input type="char" name="ans"></br></br></td></tr>
</table>
<input type="submit" name="submit" value="Submit" >
  </form>
</center>
</body>
</html>
<?php
$server="localhost";
$pass="";
$user="root";
$database="questions";
$db = mysqli_connect($server,$user,$pass,$database);
if(isset($_POST['submit']))
{
  $test_name=$_GET['test'];
  $question=$_POST['question'];
  $opA=$_POST['optionA'];
  $opB=$_POST['optionB'];
  $opC=$_POST['optionC'];
  $opD=$_POST['optionD'];
  $correct=$_POST['ans'];
  $query="insert into quiz (test_name,Qname,opA,opB,opC,opD,correct) values ('$test_name','$question','$opA','$opB','$opC','$opD','$correct');";
$sql=mysqli_query($db,$query);


}

 ?>
