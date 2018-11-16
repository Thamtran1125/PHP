<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Danh sach nhan vien co ket noi voi databases</title>
	<link rel="stylesheet" href="">
	<link rel="stylesheet" type="text/css" href="conection.php">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> 
	<scrip src="C:\Users\tao.nguyen\Downloads\aweb\jscript\bootstrap.min.js"></scrip>
</head>
<body>
	<?php  
	require_once("connect.php");
	error_reporting(2); 
	?>

	<form  name="frmtim" method="post" action="">
		
		<table width="1580" border="1" align="center">
			<tr bgcolor="#FF0000">
				<td colspan="12"  ><div align="center"><strong>DANH SÁCH SẢN PHẨM</strong></div></td>
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
			<?php 
			require_once("connect.php");
			error_reporting(2); 
			$sql1="select * from   Product ";
			$result = mysqli_query($conn,$sql1);
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
						<td  ><img src="<?php echo $kq['Image_Id'];?>" width="118" height="107" /> </td>
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

		<!-- id  trong do la no cho biet chung ta dang thao tac tren dong nao
			?page dung de goi mot file nao do, page la mot cai ham ?page=edit edit la ten ham, &id no co the khong bat buoc va no co the thay doi-->
		</tr>
		<?php } }?>
	</table> 
</form>
</body>
</html>