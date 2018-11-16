



<?php 

require_once 'connect.php';
error_reporting(2);

$TK= $_POST['taikhoanuser'];  
$MK= $_POST['matkhauuser'];

if (($TK == '') && ($MK == '')) {
    echo "";
}elseif (($TK=='taonguyen') && ($MK =='vannguyen123')) {
    header("Location:trangchu2.php");
}else{
 echo 'vui long dang nhap lai thua ban: ';
}


?>


<?php 
//Khai báo sử dụng session
// session_start();



//Xử lý đăng nhập
// if (isset($_POST['dangnhap'])) 
// {
    //Kết nối tới database
    // include('connect.php');
    // error_reporting(2);

    //Lấy dữ liệu nhập vào
    
    // $username = addslashes($_POST['username']);
    // $password = addslashes($_POST['matkhauser']);

    //Kiểm tra đã nhập đủ tên đăng nhập với mật khẩu chưa
    
    // if (!$username || !$password) {
    //     echo "Vui lòng nhập đầy đủ tên đăng nhập và mật khẩu. <a href='javascript: history.go(-1)'>Trở lại</a>";
    //     exit;
    // }


    // mã hóa pasword
    
    // $password = md5($password);

    //Kiểm tra tên đăng nhập có tồn tại không
    
    // $sql = "SELECT Username, password FROM admin WHERE Username='$username'";
    // $query = mysqli_query($conn,$sql);

    // if (mysqli_num_rows($query) == 0) {
    //     echo "<script type=\"text/javascript\">alert(\"Tên đăng nhập này không tồn tại. Vui lòng kiểm tra lại.!\");   </script> <a href='trangchu2.php'>Về Trang chủ</a>";
    //     exit;
    // }

    //Lấy mật khẩu trong database ra
    
    // $row = mysqli_fetch_array($query);

    //So sánh 2 mật khẩu có trùng khớp hay không
    
    // if ($password == $row['password']) {
    //     echo "<script type=\"text/javascript\">alert(\"Mật khẩu không đúng. Vui lòng nhập lại.!\");   </script> <a href='trangchu2.php'>Về Trang chủ</a>";

    //     exit;
    // }

    //Lưu tên đăng nhập
    
    // $_SESSION['Username'] = $username;
    // echo "<script type=\"text/javascript\">alert(\"Xin chào " . $username . ". Bạn đã đăng nhập thành công..!\");   </script> <a href='trangchu2.php'>Về Trang chủ</a>";

    // die();
// }
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



<button type="button" class="btn btn-link button-login" id="myBtn"><span class="glyphicon glyphicon-lock" style="color: white;"></span><a href="#"  style="color: white;">Đăng nhập</a></button>
<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="size-login"><span class="glyphicon glyphicon-lock"></span> Đăng nhập</h4>
            </div>
            <div class="modal-body">
                <form role="form" action="form_dn.php?do=login" method="POST">
                    <div class="form-group">
                        <label for="usrname" class="color-label">
                            <span class="glyphicon glyphicon-user"></span> Tài khoản</label>
                            <input type="text" class="form-control" name="username" id="usrname" placeholder="Nhập email">
                        </div>
                        <div class="form-group">
                            <label for="psw" class="color-label">
                                <span class="glyphicon glyphicon-eye-open"></span> Mật khẩu</label>
                                <input type="password" class="form-control" name="matkhauser" id="psw" placeholder="Nhập mật khẩu">
                            </div>
                            <div class="checkbox">
                                <label class="color-label">
                                    <input type="checkbox" value="" checked>Nhớ mật khẩu</label>
                                </div>
                                <button name="dangnhap" type="submit" class="btn btn-success btn-block">
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
        </div>

        </html>