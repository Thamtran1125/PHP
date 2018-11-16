<?php 
$conn = mysqli_connect("localhost","root","","IT_project") or die("can't connect database");

// mysqli_set_charset($conn, 'UTF8');

if ($conn) {
}
else{
	echo "Fail connection";
}
?>