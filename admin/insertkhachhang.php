<!DOCTYPE html>
<html>
<head>
	<!DOCTYPE html>
	<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title></title>
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> 
		<scrip src="C:\Users\tao.nguyen\Downloads\aweb\jscript\bootstrap.min.js"></scrip>

		<link rel="stylesheet" type="text/css" href="css/stylePHP2.css">
		<script type="text/javascript" src="admin.js"></script>


		<link rel="stylesheet" type="text/css" href="admin.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		
	</head>
	<body>

		<?php
		error_reporting(2);
		if (count($_POST) > 0 ) 
		{
			require_once("connect.php");
			$tenkh = $_POST["tenkh"];
			$email = $_POST["email"];
			$diachi = $_POST["diachi"];
			$dienthoai= $_POST["dienthoai"];
			$tentk = $_POST["tentk"];
			$mk = $_POST["mk"];
			$sql = "INSERT INTO Customers VALUES (default,'
			$tenkh','$email','	$dienthoai','$tentk','$mk')";
			mysqli_query($conn,$sql);
			echo "thanh cong";
			header("Location:lisstkhachhang.php");
			exit();
		}
		?>
		<div class="row">
			<div class="col-md-5"></div>
			<form class="navbar-form " action="insertkhachhang.php" method="POST" style="text-align: center;width: 500px; height: 300px; border: 1px solid black;padding-top: 50px; margin: auto;">
				<p>Thêm Sản Phẩm</p>
				<br>
				<label>Tên Khách Hàng</label>
				<input type="text" name="tenkh" id="" class="form-control" value="" required="required" >
				<br>
				<label>Email</label>
				<input type="text" name="email" id="" class="form-control" value="" required="required" >	<br>
				<label>Dia chi</label>
				<input type="text" name="diachi" id="" class="form-control" value="" required="required" >	<br>
				<label>Điện thoại</label>
				<input type="text" name="dienthoai" id="" class="form-control" value="" required="required" ><label>Tên Tai khoản</label>	<br>
				<input type="text" name="tentk" id="" class="form-control" value="" required="required" >	<br>
				<label>Mat Khẩu</label>
				<input type="text" name="mk" id="" class="form-control" value="" required="required" >	<br>
				<button type="submit" class="btn btn-info" value="Add">Submit</button>
			</form>
		</div>
	</div>
</form>

</body>
</html>