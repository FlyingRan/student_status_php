<?php
	require('conn.php');
	
	$sql = "select * from student";
	$results = mysqli_query($conn,$sql);
	$array = [];
	$i = 0;
	while($data = mysqli_fetch_assoc($results)){
	// $raw_success = array('username' => $data['sid'], 'password' => this.);
		$array[$i++] = $data;
	}
	echo json_encode($array,JSON_UNESCAPED_UNICODE);
?>