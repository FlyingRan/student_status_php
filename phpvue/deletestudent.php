<?php
	require('conn.php');

	$sid =$_GET['sid'];

	$sql = "delete from student where sid = '$sid'";

	if(!mysqli_query($conn,$sql)){
		echo "error";
	}else{
		echo "success";
	}
?>