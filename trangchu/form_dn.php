<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/indexthtml.css">
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
                            <form role="form">
                                <div class="form-group">
                                    <label for="usrname" class="color-label"><span class="glyphicon glyphicon-user"></span> Tài khoản</label>
                                    <input type="password" class="form-control" id="usrname" placeholder="Nhập email">
                                </div>
                                <div class="form-group">
                                    <label for="psw" class="color-label"><span class="glyphicon glyphicon-eye-open"></span> Mật khẩu</label>
                                    <input type="password" class="form-control" id="psw" placeholder="Nhập mật khẩu">
                                </div>
                                <div class="checkbox">
                                    <label class="color-label">
                                        <input type="checkbox" value="" checked>Nhớ mật khẩu</label>
                                </div>
                                <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Đăng nhập</button>
                            </form>
                        </div>
                        <div class="modal-footer">
                           <!--  <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span>Đóng</button> -->
                            <p class="color-p-login">Chưa có tài khoản?
                                <button type="button" class="btn btn-link" id="myBtn1" data-dismiss="modal">Đăng kí</button>
                            </p>
                            <p class="color-p-login">Quên <a href="#">Mật khẩu?</a></p>
                        </div>
                    </div>
                </div>
            </div>
           <?php require_once("phandangki.php"); ?>
                        </div>

</html>