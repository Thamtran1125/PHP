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

	<link rel="stylesheet" type="text/css" href="css/indexthtml.css">
	<link rel="stylesheet" type="text/css" href="css/loginthtml.css">

	<link rel="stylesheet" type="text/css" href="thunghiem.html">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
</head>
<body>
	<header id="header" class="">
		<div class="fistheader">
			<div class="row">
				<!-- <div class="col-xs-3 col-md-6 col-sm-6 col-md-offset-1"> -->
					<div class=" style2 col-md-4 col-sm-4">	
						<div class="location_header">
							<ul class="list1">

								<li><a href="" title="please call me">
									<i class="glyphicon	glyphicon glyphicon-earphone"></i>
								+841626252169</a>
								<a href="" title="">
									<i class="glyphicon glyphicon-envelope"></i>
									taonguyen991@gmail.com
								</a>
							</li>
						</ul>
					</div>
				</div>

				<div class="col-md-4 col-sm-4 ">
					<div class="header_right location_header">
						<ul class="list1">
							<li class="dropdown dropdwn-small">
								<a  href="" title="Account">
									<i class="glyphicon glyphicon glyphicon-tags"></i>
									<span class="font1">Khuyến Mãi</span>
								</a>
								
								<a href="" title="Pays">
									<i class="glyphicon glyphicon-signal"></i>
									Tra Cứu Đơn Hàng 	
								</a>

								<a href="" title="Pays">
									<i class="glyphicon glyphicon-heart"></i>
									Sản Phẩm Yêu Thích 	
								</a>

								<?php require_once("form_dn.php"); ?>
								<!-- ////////////////// -->
								
							



									<!-- /////////////// -->
								</li>
							</ul>
						</div>	
					</div>
				</div>
			</div>
			<!-- 	<div class="clearfix"></div> -->
			<div class="seach" style="margin-top: -0.9px">
				<div class="dropdown combo">
					<button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">Chọn Danh Mục
						<span class="caret"></span></button>
						<ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
							<li role="presentation"><a role="menuitem" tabindex="-1" href="#">Rượu</a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1" href="#">Giỏ Quà</a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1" href="#">Hộp Quà</a></li>
							<li role="presentation" class="divider"></li>				
						</ul>
					</div>

					<form class="navbar-form navbar-left search" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-default">Search</button>
					</form>

				</div>
				<nav class="navbar navbar-inverse">
					<div class="container-fluid menu" >

						<ul class="nav navbar-nav " style="color: white" >
							<li><a  href="thunghiem.html">Trang Chủ</a></li>
							<li><a  href="#">Giới Thiệu</a></li>
							<li><a  href="sanphamhtml.html">Sản Phẩm</a></li>
							<li><a  href="#">Tin Tức </a></li>
							<li><a  href="lienhe.html">Liên Hệ</a></li>
						</ul>
					</div>
				</nav>

			</header>