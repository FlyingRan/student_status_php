<?php
	require('conn.php');

	$sid = $_GET['sid'];
	$pulishment = $_GET['pulishment'];

	// echo "$sid + $pulishment";

	$sql = "update student set pulishment = '$pulishment' where sid = $sid";

	if(!mysqli_query($conn,$sql)){
		echo "error";
	}else{
		echo "success";
	}

?>