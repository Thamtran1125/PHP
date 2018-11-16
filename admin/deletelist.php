<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="">
</head>
<body>


	<?php 
	require_once("conection.php");
	$delete = "DELETE Product WHERE Id = '$_GET[Id]'";
	$results = mysqli_query($conn,$delete);

	if ($results) {
		echo "<script>alert('Data DELETE successfuly!')</script>";
	}else{
		echo "<script>alert('Data DELETE failed')</script>";
	}
	header("Location:list2.php");
	 ?>
</body>
</html>