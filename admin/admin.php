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

		<script type="text/javascript" src="admin.js"></script>
		<link rel="stylesheet" type="text/css" href="admin.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


	</head>
	<script language="javascript">
		$(document).ready(function(){
			$('#myTable').DataTable();
		});
	</script>
	<body>
		<div class="admin">
			<p id="tieudeadmin">Quản Lí Trang Web</p>

			
			<br><br>

			<div class="tab">
				<button class="tablinks" onclick="openCity(event, 'danhmuc')" id="defaultOpen">Danh Mục</button>
				<button class="tablinks" onclick="openCity(event, 'sanpham')">Sản Phẩm</button>
				<button class="tablinks" onclick="openCity(event, 'taikhoan')">Tài Khoản</button>
				<button class="tablinks" onclick="openCity(event, 'dathang')">Đặt Hàng</button>
			</div>

			<div id="danhmuc" class="tabcontent">
				<?php include 'listcategory.php' ?>
			</div>

			<div id="sanpham" class="tabcontent">
				<?php include 'sanphamadmin.php'; ?>
				
			</div>

			<div id="taikhoan" class="tabcontent">
				<?php include 'accountadmin.php'; ?>
			</div>
			<div id="dathang" class="tabcontent">
				<h3>dathang</h3>
				<p>dathang is the capital of Japan.</p>
			</div>
			<script type="text/javascript">
				document.getElementById("defaultOpen").click();
			</script>

		</div>
	</body>
	</html> 
