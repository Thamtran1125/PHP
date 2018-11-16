
<?php 
require_once 'connect.php';

if (isset($_POST['submit'])) {
        // get information user
    $username = $_POST['username'];
    $password = $_POST['password'];
        // Mã khóa mật khẩu
    $password = md5($password);
        // làm sạch thông tin, xóa bỏ các tag html, ký tự đặc biệt 
        //mà người dùng cố tình thêm vào để tấn công theo phương thức sql injection
    $username = strip_tags($username);
    $username = addslashes($username);
    $password = strip_tags($password);
    $password = addslashes($password);

    if ($username == "" || $password =="") {
        echo "username hoặc password bạn không được để trống!";
    }else{
        $sql = "select * from users where username = '$username' and password = '$password' ";
        $query = mysqli_query($conn,$sql);
        $num_rows = mysqli_num_rows($query);
        if ($num_rows==0) {
            echo "tên đăng nhập hoặc mật khẩu không đúng !";
        }else{
                //tiến hành lưu tên đăng nhập vào session để tiện xử lý sau này
            $_SESSION['username'] = $username;
                // Thực thi hành động sau khi lưu thông tin vào session
                // ở đây mình tiến hành chuyển hướng trang web tới một trang gọi là index.php
            header('Location: trangchu2.php');
        }
    }
}
?>



<?php 

// require_once 'connect.php';
// error_reporting(2);

// $TK= $_POST['taikhoanuser'];  
// $MK= $_POST['matkhauuser'];

// if (($TK == '') && ($MK == '')) {
//     echo "";
// }elseif (($TK=='taonguyen') && ($MK =='vannguyen123')) {
//     header("Location:admin.php");
// }else{
//  echo 'vui long dang nhap lai thua ban: ';
// }

// echo $TK;
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="alternate" href="css/stylePHP.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<!-- <script>
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
</script> -->

<form action="dangnhapbangform.php" method="POST" role="form">
    <legend>Dang nhap</legend>

    <div class="form-group">
        <label for="usrname" class="color-label">
            <span class="glyphicon glyphicon-user"></span> Tài khoản</label>
            <input type="text" class="form-control" name="username" id="usrname" placeholder="Nhập email">
        </div>

        <div class="form-group">
            <label for="psw" class="color-label">
                <span class="glyphicon glyphicon-eye-open"></span> Mật khẩu</label>
                <input type="password" class="form-control" name="matkhauuser" id="psw" placeholder="Nhập mật khẩu">
            </div>


            <div class="checkbox">
                <label class="color-label">
                    <input type="checkbox" value="" checked>Nhớ mật khẩu</label>
                </div>
                <button type="submit" class="btn btn-success btn-block">
                    <span class="glyphicon glyphicon-off"></span> Đăng nhập</button>
                </form>

                <div class="modal-footer">
                   <p class="color-p-login">Chưa có tài khoản?
                    <button type="button" name="submit" class="btn btn-link" id="myBtn1" data-dismiss="modal">Đăng kí</button>
                </p>
                <p class="color-p-login">Quên <a href="#">Mật khẩu?</a></p>
            </div>
            <?php require_once("phandangki.php"); ?>


<!-- 
            <button type="button" class="btn btn-link button-login" id="myBtn"><span class="glyphicon glyphicon-lock" style="color: white;"></span><a href="#"  style="color: white;">Đăng nhập</a></button>
       
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">

                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="size-login"><span class="glyphicon glyphicon-lock"></span> Đăng nhập</h4>
                        </div>
                        <div class="modal-body">
                            <form role="form" action="form_dn.php" method="POST">
                                <div class="form-group">
                                    <label for="usrname" class="color-label">
                                        <span class="glyphicon glyphicon-user"></span> Tài khoản</label>
                                        <input type="text" class="form-control" name="username" id="usrname" placeholder="Nhập email">
                                    </div>
                                    <div class="form-group">
                                        <label for="psw" class="color-label">
                                            <span class="glyphicon glyphicon-eye-open"></span> Mật khẩu</label>
                                            <input type="password" class="form-control" name="matkhauuser" id="psw" placeholder="Nhập mật khẩu">
                                        </div>
                                        <div class="checkbox">
                                            <label class="color-label">
                                                <input type="checkbox" value="" checked>Nhớ mật khẩu</label>
                                            </div>
                                            <button type="submit" class="btn btn-success btn-block">
                                                <span class="glyphicon glyphicon-off"></span> Đăng nhập</button>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                           <p class="color-p-login">Chưa có tài khoản?
                                            <button type="button" name="submit" class="btn btn-link" id="myBtn1" data-dismiss="modal">Đăng kí</button>
                                        </p>
                                        <p class="color-p-login">Quên <a href="#">Mật khẩu?</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php require_once("phandangki.php"); ?>
                    </div> -->

                    </html>