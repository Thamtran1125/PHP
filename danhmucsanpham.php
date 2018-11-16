<?php  ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Danh muc san pham</title>
	<link rel="stylesheet" href="">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> 
	<scrip src="C:\Users\tao.nguyen\Downloads\aweb\jscript\bootstrap.min.js"></scrip>

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="http://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
	<script src="http://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css">
	
	<style>

	a:hover {
		color: #bdb099;
	}

	a:visited {
		color: #FB1010;
	}

	a:link {
		color: #007200;
	}

	a:hover, a:focus {
		color: #2a6496;
		text-decoration: underline;
	}
</style>
</head>
<body>


	<?php 
	require_once ("connect.php");
	error_reporting(2);
	?>
	<form  method="POST" role="form">
		<div class="table table-responsive">
			<table id="employee-data"  class="table table-hover table table-striped table-bordered" width="1580" border="2" bgcolor="green" align="center">
				<thead>
					<tr bgcolor="#E9D236">
						<td colspan="12"  ><div align="center"><strong>DANH SÁCH SẢN PHẨM </strong></div></td>
					</tr>
					<tr bgcolor="#8BFCAF">
						<td width="31"  ><div align="center">STT</div></td>
						<td width="50"  ><div align="center">Ma SP</div></td>
						<td width="138"  ><div align="center">Hình Ảnh</div></td>
						<td width="146"  ><div align="center">Tên Sản Phẩm</div></td>
						<td width="65"  ><div align="center">Giá/SP</div></td>
						<td width="62"  ><div align="center">Loại</div></td>
						<td width="73"  ><div align="center">SLượng</div></td>
						<td width="48"  ><div align="center">Chi Tiết</div></td>
						<td width="52"  ><div align="center">Tổng</div></td>
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
						$pc = $kq["price"];
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
							<td  ><?php echo $Total;?> </td>
							<td> <a href="insert1.php?page=insert1">Thêm</a> ||
								<a href="edit.php?page=edit&id=<?php echo $kq['Id'];?>">Sửa</a> ||
								<a onclick="return confirm('Ban chac chan khong')" 
								href="deletelist.php?page=dell&id=<?php echo $kq['Id'];?>">Xóa</a></td>


							</tr>
							<?php } }?>
						</table>
					</div>
					<br><br>	 	
					<button style="background: ; margin-left: 700px" type="button" class="btn btn-default"><a href="trangchu.php" title="">Ve trang chu</a></button>
					<br><br><br><br><br>
				</form>
				<script language="javascript">
					$(document).ready(function(){
						$('#employee_data').DataTable();
					});
				</script>


			</body>
			</html>