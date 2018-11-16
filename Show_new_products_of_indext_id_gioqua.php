<?php
require_once("connect.php");
$sql = "SELECT * FROM Product WHERE Discription = 'New' AND Category_Id = '1' LIMIT 4 ";
$result = mysqli_query($conn,$sql);

while ($kq = mysqli_fetch_assoc($result)) {

	?>                        
	<div class="col-md-3 col-sm-6 text-center">
		<div class="thumbnail">
			<div class="hover01 column">
				<figure>
					<img src= "<?php echo $kq['hinhanh']; ?>" alt="Generic placeholder thumbnail" width="100%" height="250">
				</figure>
			</div>
			<div class="products-name" >
				<?php echo $kq['Product_Name']; ?>
			</div>
			<div class="price">
				Giá: <?php echo $kq['Price'].' đ'; ?>
			</div>
					
						<button type="button" class="btn btn-info btn-md">Chi tiết</button>
				
					<a href="#" class="btn btn-info btn-md">
						<span class="glyphicon glyphicon-shopping-cart"></span> 
					</a>
					<!-- <a href="addcart.php?id=1">Add cart </a>  -->
				</button>
			</div>
		</div>

<?php } ?>