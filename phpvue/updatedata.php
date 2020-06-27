<?php
	require('conn.php');

	$sid = $_GET['sid'];
	$name = $_GET['name'];
	$sex = $_GET['sex'];
	$ecard = $_GET['ecard'];
	$college = $_GET['college'];
	$major_class = $_GET['major_class'];
	$inyear = $_GET['inyear'];

	$sql = "update student set name = '$name',sex = '$sex',ecard = '$ecard',college = '$college',major_class = '$major_class',inyear = '$inyear' where sid='$sid'";

	if(!mysqli_query($conn,$sql)){
		 echo "$sql";
	}else{
		echo "success";
	}
?>