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
								<td colspan="12" scope="row" style="text-align: center;"><h4>Thống Kê</h4></td>
							</tr>
							<tr class="style1">
								<td width="31" scope="row"><label>STT</label></td>
								<td width="50" scope="row"><label>Mã Kh</label></td>
								<td width="50" scope="row"><label>Tênkh</label></td>
								<td width="50" scope="row"><label> Email</label></td>
								<td width="50" scope="row"><label>Dia chi</label></td>
								<td width="50" scope="row"><label>phone</label></td>
								<td width="50" scope="row"><label> tentaikhoan</label></td>


							</tr>


							
						</thead>
						<?php

						require_once("connect.php");
						$sql = "SELECT * from Customers ";
						$result = mysqli_query($conn,$sql);

						if ($result == true) 
						{
							$i = 0;
							while ($kq = mysqli_fetch_array($result)) 
							{
								$i++;

								?>

								<tr>
									<td scope="row"><?php echo $i; ?></td>
									<td scope="row"><?php echo $kq["Id"]; ?>
										
									</td>

									    <td scope="row"><?php echo $kq["Customer_Name"]; ?></td>
										<td scope="row"><?php echo $kq["Email"]; ?></td>
										<td scope="row"><?php echo $kq["Address"]; ?></td>
										<td scope="row"><?php echo $kq["Phone"]; ?></td>
										<td scope="row"><?php echo $kq["User"]; ?></td>
										<td scope="row"><?php echo $kq["Password"]; ?></td>

									<td><a href="insertkhachhang.php?page=Add">Thêm

									</div></a><a href="updatecategory.php?page=Update&id=<?php echo $kq['Id']; ?>">Sửa</a> <a onclick="return confirm('Do you want to delete it?')" href="delete_staff.php?page=dell&id=<?php echo $kq['Id']; ?>">Delete</a></td>
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