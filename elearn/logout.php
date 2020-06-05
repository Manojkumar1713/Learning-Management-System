<?php



session_start();


unset($_SESSION['register']);

header('Location: /login/login/index.php');

?>
