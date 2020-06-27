<?php
	require('conn.php');

	$sid = $_GET['id'];
	$name = $_GET['name'];
	$sex = $_GET['sex'];
	$ecard = $_GET['ecard'];
	$college = $_GET['college'];
	$major_class = $_GET['class'];
	$inyear = $_GET['inyear'];

	$sql = "select * from student where sid like '%$sid%' and name like '%$name%' and sex like '%$sex%' and ecard like '%$ecard%' and college like '%$college%' and major_class like '%$major_class%' and inyear like '%$inyear%'";

	
	$results = mysqli_query($conn,$sql);
	$array = [];
	$i = 0;
	while($data = mysqli_fetch_assoc($results)){
	// $raw_success = array('username' => $data['sid'], 'password' => this.);
		$array[$i++] = $data;
	}
	echo json_encode($array,JSON_UNESCAPED_UNICODE);
?>