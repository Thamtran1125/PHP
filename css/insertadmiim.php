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
		
		$hoten = $_POST["hoten"];
		$email = $_POST["email"];
		$diachi = $_POST["diachi"];
		$dienthoai = $_POST["dienthoai"];
		$tentaikhoan = $_POST["tentaikhoan"];
		$matkhau = $_POST["matkhau"];
	
		

		
		
		$sql = "INSERT INTO Customers VALUES ('default','$hoten','$email','$diachi','$dienthoai','$tentaikhoan','$matkhau')";
		mysqli_query($conn,$sql);
		echo "ok";
			header("Location:accountadmin.php");
		exit();

	}

	?>
				<div class="row">
					<div class="col-md-5"></div>
					<form class="navbar-form " method="POST" style="text-align: center;width: 500px; height: 300px; border: 1px solid black;padding-top: 50px; margin: auto;">
						 <div class="modal-content">
                        <div class="modal-header">
                           <form class="form-horizontal" id="signin-form-left" role="form">
                    <div class="signin-profile">
                        <h4>TÀI KHOẢN T&#38;T</h4>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="fullname">Họ tên <span>*</span></label>
                            <div class="col-sm-8">
                                <input type="text" name="hoten" class="form-control" id="fullname" placeholder="Nhập Họ tên" required>
                            </div>
                        </div>
                      
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="address">Email <span>*</span></label>
                            <div class="col-sm-8">
                                <input type="address" name="email" class="form-control" id="address" placeholder="Nhập address" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="address">Địa Chỉ <span>*</span></label>
                            <div class="col-sm-8">
                                <input type="address" name="diachi" class="form-control" id="address" placeholder="Nhập address" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="usrname">Điện thoại <span>*</span></label>
                            <div class="col-sm-8">
                                <input type="text" name="dienthoai" class="form-control" id="usrname" placeholder="Nhập số điện thoại" required>
                            </div>
                        </div>
                    </div>
                    <div class="signin-user-info">
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="usrname">Tên tài khoản <span>*</span></label>
                            <div class="col-sm-8">
                                <input type="text" name="tentaikhoan" class="form-control" id="usrname" placeholder="Nhập tên tài khoản" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="psw">Mật khẩu <span>*</span></label>
                            <div class="col-sm-8">
                                <input type="password" name="matkhau" class="form-control" id="psw" placeholder="Nhập mật khẩu" required>
                            </div>
                        </div>
                        
                    <div class="clearfix">
                        <button type="submit" class="signupbtn button" value="Add">Đăng ký</button>
                    </div>
                </form>
              
            </div>
		</div>
	</div>
			
</div>
</form>

</body>
</html>