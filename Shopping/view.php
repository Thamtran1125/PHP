<!doctype html>
<html>
<head>
<?php
include('config.php');
$productid=$_GET['Product'];
?>
<meta charset="utf-8">
<title>View Product <?=$productid?></title>
<link rel="stylesheet" href="style.css" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed|Rubik" rel="stylesheet">
<style>
#undr{width:100%; height:580px; position:absolute; top:75px; left:0px;}
.bdimg{width:100%; height:100%}
.big-outer{ width:80%; height:100%; background:rgba(255,255,255,0.7); margin:auto}
.big-outer p{text-align:center; font-size:40px; margin:10px auto}
.outer{ width:270px; height:310px;  margin:auto;}
.outer img {width:88% !important;}
.price{text-align:center; margin:20px auto; background:#16B472; color:#fff; width:30%; padding:5px 0px;}
.price p{margin:0px; font-size:26px;}
.buy{text-align:center; margin:20px auto; background:#3E8BDC; width:34%; padding:5px 0px; cursor:pointer}
.buy:hover{ background:#2E5AE4;transition:all 0.4s ease-in-out}
#subaz{border:none; background-color:transparent; font-size:32px; color:#fff; font-weight:bold; cursor:pointer}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>

<body>
	<header>
		<?php
			include('head.php');
		?>
	</header>
	
   
<?php
$select_query="select * from Product where Id='$productid'";   //Xem sản phẩm thông qua id, id có được khi bạn click vào một sản phẩm bất kì
$sql=mysql_query($select_query) or die (mysql_error());
$row=mysql_fetch_array($sql);
?>
<form id="form1" name="form1" method="post" action="cart.php">
<input type="hidden" name="pid" id="pid" value="<?= $productid ?>" />  <!-- Lấy id -->
    <div id="lowrbdy">
		<div class="big-outer">
        	<div class="outer">
            	<img src="imeg/<?=$row["Link"]?>"/>
            </div>
            <p><?=$row["Product_Name"]?></p>
            <div class="Price"><p>Giá <?=$row["Price"]?> VND</p></div>
            <div class="buy"><input type="submit" id="subaz" value="Buy Now"/></div>
        </div>
    </div>
</form>
</body>
</html>