
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

	<link rel="stylesheet" type="text/css" href="css/indexthtml.css">

	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
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
   <!-- 
	<div class="modal-dialog"> -->
		<div class="modal-content">
			
			<!-- <div cl style="padding: 10px 20px; display: block; overflow-y: overlay;"> -->
				 <div class="modal fade" id="myModal1" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                           <form class="form-horizontal" id="signin-form-left2" role="form">
                    <div class="signin-profile">
                        <h4>TÀI KHOẢN T&#38;T</h4>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="fullname">Họ tên <span>*</span></label>
                            <div class="col-sm-8">
                                <input type="text" name="yourname" class="form-control" id="fullname" placeholder="Nhập Họ tên" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="gender">Giới tính <span>*</span></label>
                            <div class="col-sm-8">
                                <input name="gioitinh" name="male" type="radio" value="Nam" checked />&nbsp;Nam&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input name="gioitinh" type="radio" value="Nữ" />&nbsp;Nữ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input name="gioitinh" name="femail" type="radio" value="Khác" />&nbsp;Khác
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="date">Sinh nhật <span>*</span></label>
                            <div class="col-sm-8">
                                <input type="date" name="bday" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="email">Email <span>*</span></label>
                            <div class="col-sm-8">
                                <input type="email" name="mail" class="form-control" id="email" placeholder="Nhập email" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="usrname">Điện thoại <span>*</span></label>
                            <div class="col-sm-8">
                                <input type="text" name="phone" class="form-control" id="usrname" placeholder="Nhập số điện thoại" required>
                            </div>
                        </div>
                    </div>
                    <div class="signin-user-info">
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="usrname">Tên tài khoản <span>*</span></label>
                            <div class="col-sm-8">
                                <input type="text" name="account" class="form-control" id="usrname" placeholder="Nhập tên tài khoản" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="psw">Mật khẩu <span>*</span></label>
                            <div class="col-sm-8">
                                <input type="password" name="Password" class="form-control" id="psw" placeholder="Nhập mật khẩu" required>
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
                        <button type="submit" class="signupbtn button">Đăng ký</button>
                    </div>
                </form>
                <div id="signin-form-right ">
                    <h4>TÀI KHOẢN KHÁC</h4>
                    <a href="http://facebook.com" class="facebook">
                        <span><i class="fa fa-facebook" aria-hidden="true"></i></span>
                        <p >Đăng ký qua Face</p>
                    </a>
                    <a href="http://googleplus.com" class="google">
                        <span><i class="fa fa-google" aria-hidden="true"></i></span>
                        <p>Đăng ký qua Google</p>
                    </a>
                </div>
            </div>
		</div>
	</div>

</body>
</html>