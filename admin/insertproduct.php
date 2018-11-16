<?php 
error_reporting(2);
if (count($POST)>0) {
	$Hinh =$FILES['hinh_anh']['name'];
	$duong_dan_upload="hinhanh/".$Hinh;
	move_uploaded_file($_FILES['hinh_anh']['tmp-name'],$duong_dan_upload);

	$MaSP   =$_POST[""];
	$Hinh   =$FILES['hinh_anh']['name'];
	$TenSP  =$_POST[""];
	$GiaSP  =$_POST[""];
	$Loai   =$_POST[""];
	$Sluong =$_POST[""];
	$ChiTiet=$_POST[""];

	$sql ="INSERT INTO Product VALUES ('$MaSP', 'hinhanh/$Hinh', '$TenSP', '$GiaSP', '$Loai', '$Sluong', '$ChiTiet')";


	$query = mysqli_query($conn, $sql);
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
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Thêm Sản Phẩm</title>
	<link rel="stylesheet" href="">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<form action="insertproduct.php" method="POST" role="form" enctype="multipart/form-data">
					
					<div class="form-groupr">
						<span class="label"></span>
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>