<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Tim Kiem Thong Tin</title>
	<link rel="stylesheet" href="">
</head>
<body>
	
	<?php
	error_reporting(2);
	require_once("Connection.php");
	?>
	<form  name="frmtim" method="post" action="">
		<table width="517" border="1" align="center">
			<tr>
				<td colspan="3" bgcolor="#66FFCC"><div align="center"><strong>Tìm Kiếm Thông Tin Nhân Viên</strong></div></td>
			</tr>
			<tr>
				<td width="99" bgcolor="#66FFCC">
					<select name="dieukien" id="dieukien">
						<option value="MaNV">Mã Nhân Viên</option>
						<option value="TenNV">Tên Nhân Viên</option>
					</select>
				</td>
				<td width="254" bgcolor="#66FFCC"> 
					<input name="noidung" type="text" id="noidung" size="40" />
				</td>
				<td width="142" bgcolor="#66FFCC"> 
					<input name="Timkiem" type="submit" id="Timkiem" value="Tim Kiem" />
				</td>
			</tr>
		</table>
		
		
		<table width="1024" border="1" align="center">
			<tr bgcolor="#8BFCAF">
				<td width="31"  ><div align="center">STT</div></td>
				<td width="50"  ><div align="center">Mã nhân viên</div></td>
				<td width="138"  ><div align="center">Hình Ảnh</div></td>
				<td width="146"  ><div align="center">Tên Nhân Viên</div></td>
				<td width="65"  ><div align="center">Tên Chức Vụ</div></td>
				<td width="62"  ><div align="center">phụ cấp chức vụ</div></td>
				<td width="73"  ><div align="center">Tiền một ngày</div></td>
				<td width="48"  ><div align="center">số ngày làm việc</div></td>
				<td width="52"  ><div align="center">Lương</div></td>
				<td width="71"  ><div align="center">Thưởng</div></td>
				<td width="103"  ><div align="center">Thu Nhập</div></td>
				<td width="109"  ><div align="center">Hanh Dong</div></td>
			</tr>
			<?php 
			if(isset($_POST["Timkiem"])){
				$dk=$_POST['dieukien'];
				$nd=$_POST['noidung'];

				$kk="select * from   t_cbnv where $dk='$nd'";
				
				$result = mysqli_query($conn,$kk);
				if($result==true){
					$i=0;
					while($kq=mysqli_fetch_assoc($result))
					{
						$i++;
						$pc = $kq["PhucCapCV"];
						$motngay = $kq["Tien1ngay"];
						$ngaylam =$kq["SoNgayLamViec"];
						$luong = $motngay * $ngaylam;
						if ($ngaylam  >= 28){
							$thuong = 300000;
						}else if ($ngaylam  >= 26){
							$thuong = 150000;
						}else
						$thuong =0 ;
						$thunhap= $luong + $thuong + $pc;
						?>
						<tr bgcolor="#AAFFFF">
							<td height="111" align="center" ><?php echo $i;?> </td>
							<td  ><?php echo $kq["MaNV"];?> </td>
							<td  ><img src="<?php echo $kq['HinhAnh'];?>" width="118" height="107" /> </td>
							<td  ><?php echo $kq["TenNV"];?> </td>
							<td  ><?php echo $kq["TenCV"];?> </td>
							<td  ><?php echo $kq["PhuCapCV"];?> </td>
							<td  ><?php echo $kq["Tien1ngay"];?> </td>
							<td  ><?php echo $kq["SoNgayLamViec"];?> </td>
							<td  ><?php echo $luong;?> </td>
							<td  ><?php echo $thuong;?> </td>
							<td  ><?php echo $thunhap;?> </td>
							<td> <a href="index.php?page=Add">Thêm</a> ||<a href="index.php?page=edit&id=<?php echo $kq['MaNV'];?>">Sửa</a> ||
								<a onclick="return confirm('Ban chac chan khong')" 
								href="index.php?page=dell&id=<?php echo $kq['MaNV'];?>">Xóa</a></td>
							</tr>
							<?php } }}?>
						</table> 
					</form>
				</body>
				</html>