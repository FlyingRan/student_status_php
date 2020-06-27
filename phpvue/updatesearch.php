<?php
require('conn.php');

$text = $_GET['text'];
$sql = "select * from student where sid = $text or ecard = $text";

$result = mysqli_query($conn,$sql);
if(mysqli_num_rows($result)==0){
	echo 0;
}
else{
	$data = mysqli_fetch_assoc($result);
	echo json_encode($data,JSON_UNESCAPED_UNICODE);
}
?>