


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

	<link rel="stylesheet" href="insertandeditandseach.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<style type="text/css" media="screen">

	.image { 
		text-align: center;
		padding-bottom: 20px;
		margin-top: 20px;
	}
	td {
		text-align: center;
	}
	a:link {
		color: green; 
		background-color: #BBCC45;
		text-decoration: none;
	}
	a:visited {	
		color: red;
		background-color: #BBCC45;
		text-decoration: none;
	}
	a:hover {
		color: pink;
		background-color: #BBCC45;
		text-decoration: underline;
	}
	a:active {
		color: yellow; 
		color: #BBCC45;
		text-decoration: underline;
	}
	.btn-success {
		width: 100%;
		color: #fff;
		background-color: #5cb85c;
		border-color: #4cae4c;
	}
</style>
</head>
<body>

	<?php
	require_once("connect.php");
	$sql = "SELECT Id, hinhanh, Product_Name, Price, Category_Id,Discription, Quantity FROM Product WHERE  Id='$_GET[id]'";
	$result = mysqli_query($conn,$sql);
	$kq = mysqli_fetch_array($result);
	?>


	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<form id="form1" name="form1" method="post" enctype="multipart/form-data" action="" role="form">
				<table width="650" align="center" cellpadding="10" cellspacing="0" bordercolor="red" border="2" class="tblSaveForm">

					<legend align="center">Chỉnh Sửa Thông Tin Sản Phẩm</legend>

					<div class="table-responsive">
						<table class="table table-hover" width="650" align="center" cellpadding="10" cellspacing="0" bordercolor="red"  border="2" class="tblSaveForm">
							<tbody>
								<tr>
									<td><label>MaSP</label></td>
									<td><input type="text" name="masp" id="input" class="form-control" value="<?php echo $kq['Id']; ?>" disabled="false" title=""></td>
								</tr>

								<tr>
									<td><label>Hình Ảnh</label></td>
									<td>
										<img src="<?php echo $kq['hinhanh']; ?>" width="200" height="200"/> 
										<input type="file" name="hinh_anh" id="inputHinh_anh" class="form-control " value=""  title="">

									</td>

								</tr>

								<tr>
									<td><label>Tên Sản Phẩm</label></td>
									<td><input type="text" name="tensanpham" id="input" class="form-control" value="<?php echo $kq['Product_Name']; ?>" required="required" title=""></td>
								</tr>
								<tr>
									<td><label>Giá/SP</label></td>
									<td><input type="number" name="gia" id="input" class="form-control" value="<?php echo $kq['Price']; ?>" required="required" title=""></td>
								</tr>

								<tr>
									
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

								</tr>
								<tr>
									<td><label>Số Lượng</label></td>
									<td><input type="number" name="Soluong" id="input" class="form-control" value="<?php echo $kq['Quantity']; ?>" required="required" title=""></td>
								</tr>
								
								<tr>
									<td><label>Chi Tiết</label></td>
									<td><input type="text" name="mota" id="input" class="form-control" value="<?php echo $kq['Discription']; ?>" required="required" title=""></td>
								</tr>
								

								<tr>
									<td  colspan="10" align="center">
										<input type="submit" name="submit" value="Update" class="btn btn-success">
									</td>
								</tr>
							</tbody>
						</table>
					</div>	
				</table>
			</form>
		</div>		
	</div>


	<?php
	if (isset($_POST['submit']))
	{
		$masp = $_POST['masp'];
		if (!$_FILES['hinh_anh']['name']) {
			$tenhinh = $kq['hinhanh'];
		} else {
			$tenhinh = $_FILES['hinh_anh']['name'];
			$duong_dan_upload = "./Image/".$tenhinh;
			move_uploaded_file($_FILES['hinh_anh']['tmp_name'],$duong_dan_upload);
			$tenhinh = "./Image/".$tenhinh;
		}
		$tensp = $_POST["tensanpham"];
		$giasp = $_POST["gia"];
		$loai = $_POST["loai"];
		$mota = $_POST["mota"];
		$soluong = $_POST["Soluong"];
		
		
		$update = "UPDATE Product SET Id = '$masp', hinhanh = '$tenhinh', Product_Name = '$tensp', Price = '$giasp', Categpry_Id = '$loai', Discription = '$mota',Quantity = '$soluong' WHERE Id = '$_GET[id]'";
		$results = mysqli_query($conn,$update);
		echo "string";

		if ($results) {
			echo "<script>alert('Data Update successfuly!')</script>";
		}else{
			echo "<script>alert('Data Update failed')</script>";
		}
		header("Location:sanphamadmin.php");


	}

	?>


	
</body>
</html>