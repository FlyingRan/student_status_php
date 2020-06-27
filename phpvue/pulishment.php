<?php
	require('conn.php');

	$sid = $_GET['sid'];

	$sql = "select pulishment from student where sid = '$sid'";

	// echo $sql;
	$result = mysqli_query($conn,$sql);

	$data = mysqli_fetch_assoc($result);

	echo json_encode($data,JSON_UNESCAPED_UNICODE);
?>