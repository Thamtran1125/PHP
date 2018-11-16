
<!DOCTYPE html>
<html>

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
	<link rel="stylesheet" type="text/css" href="css/stylePHP2.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>

</style>
</head>
<script>
    $(document).ready(function() {
        $("#myBtn").click(function() {
            $("#myModal").modal();
        });
    });
    $(document).ready(function() {
        $("#myBtn1").click(function() {
            $("#myModal1").modal();
        });
    });
</script>
<body>
    <?php


    error_reporting(2);
    if (count($_POST) > 0 ) 
    {
        require_once("connect.php");

        $hoten = $_POST["hoten"];
        $mail = $_POST["mail"];
        $diachi = $_POST["diachi"];
        $sodt = $_POST["sodt"];
        $tendn = $_POST["tendn"];
        $matkhau = $_POST["matkhau"];

        $sql = "INSERT INTO Customers(Customer_Name, Email, Address, Phone, User,Password) VALUES ('$hoten','$mail','$diachi','$sodt','$tendn','$matkhau')";
        $tnt= mysqli_query($conn,$sql);

        if ($tnt) {
            echo "<script type=\"text/javascript\">alert(\"Đăng Ký Thành Công!\");   </script>";


        }
        else{
            echo "<script type=\"text/javascript\">alert(\"khong thanh cong!\");   </script>";
        }

    }
    ?>

   <!-- 
     <div class="modal-dialog"> -->
      <div class="modal-content">

       <!-- <div cl style="padding: 10px 20px; display: block; overflow-y: overlay;"> -->
         <div class="modal fade" id="myModal1" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">

                       <form method="POST" class="form-horizontal" id="signin-form-left" role="form">
                        <div class="signin-profile">
                            <h4>TÀI KHOẢN T&#38;T</h4>
                            <div class="form-group">
                                <label class="control-label col-sm-4" for="fullname">Họ tên <span>*</span></label>
                                <div class="col-sm-8">
                                    <input type="text" name="hoten" class="form-control" id="fullname" placeholder="Nhập Họ tên" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-4" for="address">Email <span>*</span></label>
                                <div class="col-sm-8">
                                    <input type="email" name="mail" class="form-control" id="address" placeholder="Nhập address" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-4" for="address">Địa Chỉ <span>*</span></label>
                                <div class="col-sm-8">
                                    <input type="address" name="diachi" class="form-control" id="address" placeholder="Nhập address" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-4" for="usrname">Điện thoại <span>*</span></label>
                                <div class="col-sm-8">
                                    <input type="text" name="sodt" class="form-control" id="usrname" placeholder="Nhập số điện thoại" required>
                                </div>
                            </div>
                        </div>
                        <div class="signin-user-info">
                            <div class="form-group">
                                <label class="control-label col-sm-4" for="usrname">Tên tài khoản <span>*</span></label>
                                <div class="col-sm-8">
                                    <input type="text" name="tendn" class="form-control" id="usrname" placeholder="Nhập tên tài khoản" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-4" for="psw">Mật khẩu <span>*</span></label>
                                <div class="col-sm-8">
                                    <input type="password" name="matkhau" class="form-control" id="psw" placeholder="Nhập mật khẩu" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-4" for="pswd">Xác nhận mật khẩu <span>*</span></label>
                                <div class="col-sm-8">
                                    <input type="password" name="password2" class="form-control" id="pswd" placeholder="Xác nhận mật khẩu" required>
                                </div>
                            </div>
                        </div>

                        <div class="checkbox">
                            <label><input type="checkbox" name="Have" value="" required>Bạn có đồng ý dăng ký tài khoản này không?</label>
                        </div>
                        <div class="clearfix">
                            <button type="submit" class="signupbtn button" value="Add">Đăng ký</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>

    </body>
    </html>