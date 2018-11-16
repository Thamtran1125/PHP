

<?php

error_reporting(2);
if(count($_POST)>0) {
	require_once("connect.php");

	$ten_hinh=$_FILES['hinh_anh']['name'];

	$duong_dan_upload="Image/".$ten_hinh;
	move_uploaded_file($_FILES['hinh_anh']['tmp_name'],$duong_dan_upload);

	$Hinh =$_FILES['hinh_anh']['name'];
	$TenSP =$_POST["tensanpham"];
	$Gia =$_POST["gia"];  
	$Loai =$_POST["loai"];
	$Sluong =$_POST["Soluong"];
	$ChiTiet =$_POST["mota"];



	// $_POST lay tu form


	$sql = "INSERT INTO Product(hinhanh,Product_Name,Price,Category_Id,Quantity,Discription) VALUES ('Image/$ten_hinh', '$TenSP', '$Gia', '$Loai', '$Sluong', '$ChiTiet') ";
	echo $sql;
	$query= mysqli_query($conn,$sql) or die('failed');

  // thực thi câu lệnh
	$current_id = mysqli_insert_id($conn);

	if(!empty($current_id)) {
		$message = "New User Added Successfully";
	}
	if ($query) {
		echo "Data Update successfuly!";
	}else{
		echo "Data Update failed";
	}
}
// header("Location:danhmucsanpham.php");

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="insertandeditandseach.css">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> 
	<scrip src="C:\Users\tao.nguyen\Downloads\aweb\jscript\bootstrap.min.js"></scrip>

	<style>
	.btn-group-justified>.btn, .btn-group-justified>.btn-group {
		display: table-cell;
		float: none;
		width: 100%;
	}
</style>
</head>
<body>


	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<form action="insert1.php" method="POST" role="form" enctype="multipart/form-data">
				<legend align="center">Thêm Sản Phẩm</legend>

				

				<div class="form-group">
					<label for="">Hình Ảnh</label>
					<input type="file" class="form-control" id="" name="hinh_anh" required="yes" id="exampleFormControlFile1">
				</div>

				<div class="form-group">
					<label for="">Tên Sản Phẩm</label>
					<input type="text" class="form-control" id="" name="tensanpham" required="yes" for="formGroupExampleInput2">
				</div>



				<div class="form-group">
					<label for="">Giá/SP</label>
					<input type="number" class="form-control" id="" name="gia" required="yes" for="formGroupExampleInput2">
				</div>

				<div class="form-group">
					<label class="col-form-label">Danh Mục</label>

					<select name="loai" class="form-control" required="required" >
						<?php
						require_once("connect.php");
						$sql = "SELECT Category_Name FROM Category" ;
						$result = mysqli_query($conn,$sql);
						if (!$result) {
							printf("Error: %s\n", mysqli_error($conn));
							exit();
						}
						while ($kq = mysqli_fetch_array($result)) {

							?>                        

							<option id="<?php echo $kq['Id'];?>" value="<?php echo $kq['Category_Name'];?>" ><?php echo $kq['Category_Name'];?></option>

							<?php 
						}
						?>

					</select>
				</div>



				<div class="form-group">
					<label for="">Số Lượng</label>		
					<input type="number" class="form-control" id="" name="Soluong" >
				</div>


				<div class="form-group">
					<label for="">Chi Tiết</label>
					<input type="text" class="form-control" name="mota" id="" >
				</div>

				<div class="btn-group btn-group-justified">
					<button  type="submit" value="Add" class="btn btn-primary">Insert Information</button>
				</div>
			</form>
		</div>		
	</div>


</body>
</html>