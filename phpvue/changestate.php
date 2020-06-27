<?php

	require('conn.php');

	$sid = $_GET['sid'];
	$identity = $_GET['identity'];
	if($identity == 'student'){
		$sql = "update student set state = '0' where sid = '$sid'";

		if(!mysqli_query($conn,$sql)){
			echo 'error';
		}else{
			echo 'success';
		}
	}else{
		$sql = "update $identity set state = '0' where sid = '$sid'";

		if(!mysqli_query($conn,$sql)){
			echo 'error';
		}else{
			echo 'success';
		}
	}
	
?>