<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Shopping</title>
<?php
include('config.php');
?>
<link rel="stylesheet" href="style.css" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed|Rubik" rel="stylesheet">
<style>
a{text-decoration:none; color:inherit}
#undr{width:100%; height:580px; position:absolute; top:75px; left:0px;}
.bdimg{width:100%; height:100%}
#lowrbdy{ position:absolute; top:90px; left:0px;width:100%; height:100px}
.outer{width:270px; height:270px; background:rgba(255,255,255,0.8); float:left; margin-left:55px; margin-bottom:10px}
.imgdv{width:100px;height:140px;margin:10px auto;}
.imgdv img{width:100%; height:100%}
.pname{ text-align:center; width:100%; height:20px; font-size:15px; margin-top:-14px; margin-bottom:10px}
.prs{ text-align:center; font-size:24px; margin:0px}
.butndv{width:140px; height:40px; margin:auto; margin-top:-10px}
.butn{width:100%; height:100%; background:rgba(78,172,240,1.00); border:none; color:#fff; font-size:18px; border-radius:6px}
.outer:hover{ background:#fff}
.outer:hover .butn{ background:#4A7FDC; transition:all 0.2s ease-in-out; cursor:pointer}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>

<body>
	<header>
		<?php
			include('head.php'); // Phần header tạo riêng (Mục đích để gọn file, dễ chỉnh sửa và bổng sung cho cái biểu tượng giỏ hàng)
		?>
	</header>
		
    
   	
    <div id="lowrbdy">
<?php
$select_query="select * from Product";      // Lấy thông tin tất cả các sản phẩm //Lúc này chỉ thao tác với Database, chưa sử dụng SESSION
$sql=mysql_query($select_query) or die (mysql_error());  // Kiểm tra kết nối
while($row=mysql_fetch_array($sql))  // Lặp cho tới khi hết các sản phẩm trong Database   
{
?>                
	    <a href="view.php?Product=<?=$row["Id"]?>">   <!-- Xác định sản phẩm qua ID (Có nghĩa khi click chuột vào sản phẩm nào thì chúng ta xem được thông tin sản phẩm đó) -->
        	<div class="outer">
           		<div class="imgdv"><img src="Image/<?=$row["Link"]?>"/></div>
                <div class="pname"><?=$row["Product_Name"]?></div>
                <p class="prs">Giá <?=$row["Price"]?> VND</p></br>
	    	    <div class="butndv"><input type="button" value="Buy Now" class="butn"></div>
			</div>
		</a>
<?php
}
?>
    	
    </div>
</body>
</html>

<!-- http://localhost:8080/Shopping/ -->