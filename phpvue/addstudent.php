<?php
	require('conn.php');

	$sid = $_GET['sid'];
	$name = $_GET['name'];
	$sex = $_GET['sex'];
	$ecard = $_GET['ecard'];
	$college = $_GET['college'];
	$major_class = $_GET['major_class'];
	$inyear = $_GET['inyear'];
	$sql = "insert into student (sid,name,sex,college,major_class,ecard,inyear) values('$sid','$name','$sex','$college','$major_class','$ecard','$inyear')";

	if(!mysqli_query($conn,$sql)){
		 die('Error: ' . mysqli_error());
	}
	else
		echo "success";
	mysqli_close($conn);
?>