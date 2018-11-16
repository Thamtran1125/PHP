<?php
include('config.php');  // Đây là phần header, để tăng số lượng mặt hàng đã mua thì nên sử dụng SESSION để lưu 
session_start(); //       (Vẫm tốt trong trường hợp nếu người dùng thoát trình duyệt thì vẫn lưu)
?> 
<div id="headdown">
	<div class="logo"><a href="index.php">Book</a></div>
		<div class="srbox">
			  <div class="bk">
              	<input type="text" name="qu" id="qu" class="textbox" placeholder="Hey... Bạn đang tìm gì vậy ?" tabindex="1">
				<button type="submit" class="query-submit" tabindex="2"><i class="fa fa-search" style="color:#727272; font-size:20px"></i></button>
   	  		  </div>
		</div>
    
	<div class="acount">
		<div class="aclogo"><i class="fa fa-user" style="color:#fff; font-size:15px; margin-top:2px"></i></div>
		<div class="actext">My Account</div>
	</div>
    
    	<a href="cart.php"><div class="cart">
			<i class="fa fa-shopping-cart"></i>
		    <p class="cart-e">Cart</p>
    		<p class="cart-f">
	            <?php    
					if(isset($_SESSION["cartshop"])){   //Giỏ hàng tự động tăng số lượng sản phẩm sau mỗi lần mua
						$s=count($_SESSION["cartshop"]);
					}
					else{
						$s=0;
						}
					echo $s;
				?>
            </p>
		</div></a>
    
</div>