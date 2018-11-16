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
		<!-- <link rel="stylesheet" type="text/css" href="insertandeditandseach.css"> -->


		<link rel="stylesheet" type="text/css" href="admin.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		
	</head>
	<body>

		<?php
		error_reporting(2);
		if (count($_POST) > 0 ) 
		{
			require_once("connect.php");

			$hoten = $_POST["hoten"];
			$mail = $_POST["mail"];
			$diachi = $_POST["diachi"];
			$sodt = $_POST["sodt"];
			$tendn = $_POST["tendk"];
			$matkhau = $_POST["matkhau"];
			$rsmatkhau =$_POST["nlmatkhau"];
			

			$sql = "INSERT INTO Customers(Customer_Name, Email, Address, Phone, User,Password) VALUES ('$hoten','$mail','$diachi','$sodt','$tendn','$matkhau')";
			$tnt= mysqli_query($conn,$sql);

			if ($tnt) {
				echo "ok";
				require_once 'accountadmin.php';
				exit();
				
			}
			else{
				echo "fail";
			}

		}
		?>

		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 ">
					<form  action="insertdangdang.php" method="POST" role="form">
						<legend><b><center>Đăng ký Thông Tin Người Dùng</center></b></legend>

						<div class="form-group">
							<label for="">Họ Tên Người Dùng:</label>
							<input type="text" name="hoten" class="form-control" id="" placeholder="Vui Lòng nhập họ tên!">
						</div>

						<div class="form-group">
							<label for="">Email:</label>
							<input type="email" name="mail" class="form-control" id="" placeholder="Input field" input name="email" placeholder="Vui Lòng nhập email">
						</div>

						<div class="form-group">
							<label for="">Địa chỉ:</label>
							<input type="text" name="diachi" class="form-control" id="" placeholder="Vui Lòng nhập Địa chỉ!">
						</div>

						<div class="form-group">
							<label for="">Điện Thoại:</label>
							<input type="number" name="sodt" class="form-control" id="" placeholder="Vui Lòng nhập Số Điện Thoại!">
						</div>

						<div class="form-group">
							<label for="">Tên Tài Khoản:</label>
							<input type="text" name="tendk" class="form-control" id="" placeholder="Vui Lòng nhập Tên Tài Khoản!">
						</div>

						<div class="form-group">
							<label for="">Mật Khẩu:</label>
							<input type="text" name="matkhau" class="form-control" id="" placeholder="Vui Lòng nhập Mật Khẩu!">
						</div>

						<div class="form-group">
							<label for="">Nhập Lại Mật Khẩu</label>
							<input type="text" name="nlmatkhau" class="form-control" id="" placeholder="Vui Lòng Xác Nhận Mật Khẩu">
						</div>


						<button type="button" class="btn btn-success btn-block" >Đăng Ký</button>
					</form>
				</div>
			</div>
		</div>

		

	</div>
</form>

</body>
</html>