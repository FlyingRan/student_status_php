<?php
	require('conn.php');

	$sid = $_POST['sid'];
	$oldpass = $_POST['oldpass'];
	$newpass = $_POST['newpass'];
	$identity = $_POST['identity'];
	// echo "$sid + $oldpass + $newpass";
	if($identity == 'student'){
		$sql1 = "select * from student where sid = '$sid' and password = '$oldpass'";

		$result1 = mysqli_query($conn,$sql1);

		if(mysqli_num_rows($result1)>0){
			$sql2 = "update student set password = '$newpass' where sid = '$sid'";
			if(!mysqli_query($conn,$sql2)){
				echo "error";
			}else{
				echo "success";
			}
		}else{
			echo 'password error';
		}
	}else{
		$sql1 = "select * from $identity where username = '$sid' and password = '$oldpass'";
		// echo $sql1;
		$result1 = mysqli_query($conn,$sql1);

		if(mysqli_num_rows($result1)>0){
			$sql2 = "update $identity set password = '$newpass' where username = '$sid'";
			if(!mysqli_query($conn,$sql2)){
				echo "$sql2";
			}else{
				echo "success";
			}
		}else{
			echo 'password error';
		}
	}
?>