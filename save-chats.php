<?php
$con = mysqli_connect('localhost','root','','vishal');

$message = mysqli_real_escape_string($con,$_GET['mess']);
$type = mysqli_real_escape_string($con,$_GET['type']);

$sql = "INSERT INTO `messages`(`message`, `type`) VALUES ('$message','$type')";

mysqli_query($con,$sql);

?>