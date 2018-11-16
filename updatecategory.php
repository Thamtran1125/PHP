<!DOCTYPE html>
<html>
<head>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
  }

  input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }

  input[type=submit]:hover {
    background-color: #45a049;
  }

  body{
    width: 30%;
    height: auto;
    margin-left: 500px;
  }

  #input {
    height:20px;
    margin:0;
    padding-right: 30px;
    width: 100%;
  }

</style>
</head>
<body>
  <?php

  require_once("connect.php");
  error_reporting(2);
  $sql = "SELECT Id, Category_Name FROM Category WHERE Id='$_GET[id]'";
  $result = mysqli_query($conn,$sql);
  $kq = mysqli_fetch_array($result);


  ?>
  <form method="POST" action="" enctype="multipart/form-data" style="margin-top: 100px; border: 1px solid; padding: 50px; background: #e0bc33; font-size: 17px;">
    <div class="form-group">
      <label for="exampleFormControlFile1">Mã Danh Mục</label>
      <input type="text" name="madm" class="txtField" value="<?php echo $kq['Id']; ?>">
    </div>


    <div class="form-group">
      <label class="col-form-label">Tên Danh Mục</label>
      <input type="text" name="tendm" class="form-control" placeholder="Ten DM" value="<?php echo $kq['Category_Name']; ?>">
    </div>

    <button type="submit" name="submit" value="Update" class="btn btn-success"> update</button>
    <button type="submit" class="btn btn-success"><a href="admin.php">next</a></button>
  </form>
  <?php
  if (isset($_POST['submit']))
  {
    $madm = $_POST['madm'];

    $tendm = $_POST["tendm"];
    if ($madm==Id) {
     echo "duplicate";
     # code...
   }

   $update = "UPDATE Category SET Id = '$madm', Category_Name='$tendm' WHERE Id = '$_GET[id]'";

   $results = mysqli_query($conn,$update);
   header("Location:admin.php");

   if ($results) {
    echo "<script>alert('Data Update successfuly!')</script>";
  }else{
    echo "<script>alert('Data Update failed')</script>";
  }
}
?>
</body>
</html>
