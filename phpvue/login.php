<?php
require('conn.php');
$username = $_POST['username'];
$password = $_POST['password'];
$identity = $_POST['identity'];
// echo "$username+$password+$identity";
if ($identity == 'student') {
	$sql = "select * from $identity where sid = $username and password = $password";
}else{
	$sql = "select * from $identity where username = '$username' and password = '$password'";
}
// echo $sql;
$result =mysqli_query($conn,$sql);
if($result -> num_rows == 0){
	echo 0;
}else{
	$data = mysqli_fetch_array($result);
	// $raw_success = array('username' => $data['sid'], 'password' => this.);
	$res_success = json_encode($data,JSON_UNESCAPED_UNICODE);
	echo $res_success;
}
?>