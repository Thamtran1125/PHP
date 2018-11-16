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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/stylePHP2.css">
	
</head>
<body>
	<!-- menu header products -->
	<?php require_once ("header.php");?>
	<div class="menuproducts" style="padding-left: 100px;">
		<div class="container">
				<div class="row">
				<div class="col-md-3 " style="background-color: red;">
					<div class="menupageproduct">
						<div>
							<h class="title-h2-pageproduct"></h>
							<span>Danh Mục Sản Phẩm</span>
						</div>
						<div class="menucontent">
							<nav class="nav-category navbar-toggleable-md">
								<ul class="navbar-pills">
									<li class="nav-item "><a href="thunghiem.html" title=""><i class="fa fa-bookmark" aria-hidden="true"></i><span>Trang chủ</span></a></li>
									<li class="nav-item "><a href="giothieu.html" title=""><i class="fa fa-bookmark" aria-hidden="true"></i><span>Giới thiệu</span></a></li>
									<li class="nav-item "><a href="sanphamhtml.html" title=""><i class="fa fa-bookmark" aria-hidden="true"></i><span>Giỏ quà tết</span></a></li>
									<li class="nav-item "><a href="thunghiem.html" title=""><i class="fa fa-bookmark" aria-hidden="true"></i><span>Rượu tết</span></a></li>
									<li class="nav-item "><a href="sanphamhtml.html" title=""><i class="fa fa-bookmark" aria-hidden="true"></i><span>Hộp quà tết</span></a></li>
									<li class="nav-item "><a href="sanphamhtml.html" title=""><i class="fa fa-bookmark" aria-hidden="true"></i><span>Tin tức</span></a></li>
									<li class="nav-item "><a href="sanphamhtml.html" title=""><i class="fa fa-bookmark" aria-hidden="true"></i><span>Liên hệ</span></a></li>
								</ul>
							</nav>
						</div>
					</div>
					<div class="menucontent-image-an-khang">
						<img src="css/image/caudoi5.gif">	
					</div>	
				</div>
				<div class="col-md-9">
					<?php
								require_once 'connect.php';
								$sql = "SELECT * FROM Product";
								$result = mysqli_query($conn,$sql);

								while ($kq = mysqli_fetch_assoc($result)) {

									?>                        
									<div class="col-md-3 " >
										<div class="thumbnail">
											<div class="hover01 column">
												<figure>
													<img width="400" height="250" src= "<?php echo $kq['hinhanh']; ?>"  alt="Generic placeholder thumbnail"  >
												</figure>
											</div>
											<div class="products-name_Product" >
												<?php echo $kq['Product_Name']; ?>
											</div>
											<div class="price">
												Giá: <?php echo $kq['Price'].' đ'; ?>
											</div>
											<div >

												<button type="button" class="btn btn-success btn-block">
													<a href="addcart.php?id=1">Thêm Vào Giỏ hàng </a> 
												</button>
											</div>
										</div>
									</div>
									<?php } ?>
							
					
				</div>
			</div>
		

								
				
</body>

				<footer>
					<?php require_once("footer.php"); ?>
				</footer>

			</body>
			</html>