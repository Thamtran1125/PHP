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

	<!-- <link rel="stylesheet" type="text/css" href="css/indexthtml.css"> -->
	<link rel="stylesheet" type="text/css" href="css/stylePHP2.css">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="http://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
	<script src="http://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css">

	<style>
	a:link {
		color: #007200;
	}

	/* visited link */
	a:visited {
		color: blue ;
	}

	/* mouse over link */
	a:hover {
		color: #bdb099;
	}

	/* selected link */
	a:active {
		color: blue;
	} 
</style>
</head>
<body>
	<body>

		<?php
		require_once("connect.php");
		error_reporting(2);
		?>



		<div class="container">
			<form name="form1" method="post" action="">
				<div class="table-responsive">
					<table id="employee_data" class="table table-hover table table-striped table-bordered"  >
						<thead>

							<tr>
								<td colspan="12" scope="row" style="text-align: center;"><h4>DANH SÁCH SẢN PHẨM</h4></td>
							</tr>
							<tr class="style1">
								<td width="31"  ><div align="center">STT</div></td>
								<td width="50"  ><div align="center">Ma SP</div></td>
								<td width="138"  ><div align="center">Hình Ảnh</div></td>
								<td width="146"  ><div align="center">Tên Sản Phẩm</div></td>
								<td width="65"  ><div align="center">Giá/SP</div></td>
								<td width="62"  ><div align="center">Loại</div></td>
								<td width="73"  ><div align="center">SLượng</div></td>
								<td width="48"  ><div align="center">Chi Tiết</div></td>
		
								<td width="109"  ><div align="center">Thao Tác</div></td>

							</tr>


							
						</thead>
						<?php

						require_once("connect.php");

						$sql = "SELECT * FROM Product  ";

						echo "";
						$result = mysqli_query($conn,$sql);
						if($result==true){	
							$i=0;
							while($kq=mysqli_fetch_assoc($result))
							{
								$i++;
							
								$Sluong = $kq["Quantity_Id"];
								$Total = $pc * $Sluong;
								?>


								<tr bgcolor="#AAFFFF">
									<td height="111" align="center" ><?php echo $i;?> </td>
									<td  ><?php echo $kq["Id"];?> </td>
									<td  ><img src="<?php echo $kq['hinhanh'];?>" width="118" height="107" /> </td>
									<td  ><?php echo $kq["Product_Name"];?> </td>
									<td  ><?php echo $kq["Price"];?> </td>
									<td  ><?php echo $kq["Category_Id"];?> </td>
									<td  ><?php echo $kq["Quantity"];?> </td>
									<td  ><?php echo $kq["Discription"];?> </td>
								
									<td> <a href="insert1.php?page=Add">Thêm</a> ||
										<a href="upload.php?page=edit&id=<?php echo $kq['Id'];?>">Sửa</a> ||
										<a onclick="return confirm('Ban chac chan khong')" 
										href="deletespam.php?page=dell&id=<?php echo $kq['Id'];?>">Xóa</a></td>


									</tr>

									<?php } } ?>	
								</table>
							</div>
							<br><br>	 	
							<button style="background: #929191; margin-left: 700px" type="button" class="btn btn-default"><a href="admin.php" title="">Ve trang chu</a></button>
							<br><br><br><br><br>
						</form>
					</div>
					<script language="javascript">
						$(document).ready(function(){
							$('#employee_data').DataTable();
						});
					</script>
				</body>
			</body>
			</html>