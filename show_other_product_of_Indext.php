<?php 
require_once("connect.php");
$sql = "SELECT * FROM Product ";
$result = mysqli_query($conn,$sql);
if (!$result) {
	printf("Error: %s\n", mysqli_error($conn));
	exit();
}
while ($kq = mysqli_fetch_array($result)) {

	?>                        
	<div class="col-md-3 col-sm-6 indexsp">
		<div class = "thumbnail" style="width: 200px;height: 200px;">
			<img style="width: 150px;height: 150px;"  src = "<?php echo $kq['hinhanh'] ?> " >
			<br>

		</div>

		<button type="button" class="btn btn-info btn-md">Chi tiết</button>

		<a href="#" class="btn btn-info btn-md">
			<span class="glyphicon glyphicon-shopping-cart"></span> 
		</a>
		<!-- <a href="addcart.php?id=1">Add cart </a>  -->
	</button>
</div>



<?php 
}
?>