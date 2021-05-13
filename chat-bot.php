<?php
$con = mysqli_connect('localhost','root','','vishal');

$data = json_decode(file_get_contents("php://input"), true);

$message = $data['message'];

$sql_query = "SELECT reply FROM chatbot WHERE message LIKE '%$message%'";

$fire_query = mysqli_query($con, $sql_query);
$reply = mysqli_fetch_assoc($fire_query);

if(mysqli_num_rows($fire_query) > 0){
	echo $reply['reply'];
}else{
	echo "Sorry I can't Tell You This.";
}

?>