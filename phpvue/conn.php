<?php
$servername = "localhost";
$username = "root";
$password = "ml319xhr";
$db_name="student_status";
// 创建连接
// $conn = new mysqli($servername, $username, $password,$db_name);
$conn =new mysqli($servername,$username,$password,$db_name); 
 
// 检测连接
if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
} 
// echo "连接成功";

// for($x=0;$x<10;$x++){
	// $sid="20170321021"+$x;
	// $name="王心怡";
	// $sex="女";
	// $college="电气学院";
	// $major_class="电气工程1801";
	// $ecard="454524562123"+($x+10)*11;
	// $inyear="2018";
	// $sql = "Insert into student (sid,name,sex,college,major_class,ecard,inyear,password,state) values('{$sid}','{$name}','{$sex}','{$college}','{$major_class}','{$ecard}','{$inyear}','1234556','1');";
	// // echo $sql;
	// mysqli_query($conn,$sql);
	// }
?>