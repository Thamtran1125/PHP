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
    <link rel="alternate" href="css/stylePHP.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
 <!--    <header id="header" class="">
        <div class="fistheader">
            <div class="row">
        
                <div class=" style2 col-md-4 col-sm-4">
                    <div class="location_header">
                        <ul class="list1">
                            <li><a href="" title="please call me">
									<i class="glyphicon	glyphicon glyphicon-earphone"></i>
								+841626252169</a>
                                <a href="" title="">
									<i class="glyphicon glyphicon-envelope"></i>
									taonguyen991@gmail.com
								</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 ">
                    <div class="header_right location_header">
                        <ul class="list1">
                            <li class="dropdown dropdwn-small">
                                <a href="" title="Account">
									<i class="glyphicon glyphicon glyphicon-tags"></i>
									<span class="font1">Khuyến Mãi</span>
								</a>
                                <a href="" title="Pays">
									<i class="glyphicon glyphicon-signal"></i>
									Tra Cứu Đơn Hàng 	
								</a>
                                <a href="" title="Pays">
									<i class="glyphicon glyphicon-heart"></i>
									Sản Phẩm Yêu Thích 	
								</a>
                                <a href="" title="Pays" data-toggle="modal" data-target="#signin-form">
									<i class="glyphicon glyphicon-user"></i>
									Đăng Ký 	
								</a>
                          


                                <div class="modal fade" id="signin-form" role="dialog">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header" style="padding: 5px 20px;">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="text-center"><span class="glyphicon glyphicon-lock"></span> Đăng ký</h4>
                                            </div>
                                            <div class="modal-body" style="padding: 10px 20px; display: block; overflow-y: overlay;">
                                                <form class="form-horizontal" id="signin-form-left" role="form">
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
                                                        <label>
                                                            <input type="checkbox" name="Have" value="" required>Bạn có đồng ý dăng ký tài khoản này không?</label>
                                                    </div>
                                                    <div class="clearfix">
                                                        <button type="submit" class="signupbtn button">Đăng ký</button>
                                                    </div>
                                                </form>
                                                <div id="signin-form-right">
                                                    <h4>TÀI KHOẢN KHÁC</h4>
                                                    <a href="http://facebook.com" class="facebook">
														<span><i class="fa fa-facebook" aria-hidden="true"></i></span>
														<p>Đăng ký qua Face</p>
													</a>
                                                    <a href="http://googleplus.com" class="google">
														<span><i class="fa fa-google" aria-hidden="true"></i></span>
														<p>Đăng ký qua Google</p>
													</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div >
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="seach" style="margin-top: -0.9px">
            <div class="dropdown combo">
                <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">Chọn Danh Mục
                    <span class="caret"></span></button>
                <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Rượu</a></li>
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Giỏ Quà</a></li>
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Hộp Quà</a></li>
                    <li role="presentation" class="divider"></li>
                </ul>
            </div>
            <form class="navbar-form navbar-left search" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Search</button>
            </form>
        </div>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid menu">
                <ul class="nav navbar-nav " style="color: white">
                    <li><a href="thunghiem.html">Trang Chủ</a></li>
                    <li><a href="#">Giới Thiệu</a></li>
                    <li><a href="sanphamhtml.html">Sản Phẩm</a></li>
                    <li><a href="#">Tin Tức </a></li>
                    <li><a href="lienhe.html">Liên Hệ</a></li>
                </ul>
            </div>
        </nav>
    </header> -->
    <?php require_once 'header.php'; ?>
    <div class="content " style="margin-top: -20px">
        <div class="row">
            <!-- col-sm-12 col-md-9 col-lg-9 col-md-push-3 col-lg-push-3 -->
            <div class="canhchinh">
                <div class=" col-sm-12 col-md-6 col-lg-12 ">
                    <div id="myCarousel" class="carousel slide myslide wow fadeInDown" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                        </ol>
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner ">
                            <div class="item items active">
                                <img style="height: 300px; width: 100%" src="css/image/slider_1.jpg" alt="Los Angeles">
                            </div>
                            <div class="item items">
                                <img style="height: 300px; width: 100%" src="css/image/slider_2.jpg" alt="Chicago">
                            </div>
                        </div>
                        <!-- Left and right controls -->
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                           <span class="glyphicon glyphicon-chevron-left"></span>
                           <span class="sr-only">Previous</span>
                       </a>
                       <a class="right carousel-control" href="#myCarousel" data-slide="next">
                           <span class="glyphicon glyphicon-chevron-right"></span>
                           <span class="sr-only">Next</span>
                       </a>
                   </div>
               </div>
           </div>
           <div class="image-PA">
            <div container>
                <div class="row">
                    <div class="col-xs-6 col-sm-3 col-sm-offset-1 ">
                        <div>
                            <div class="content-PA">
                                <span><img src="css/image/giao hang mien phi.png"></span>
                                <span class="title">Miễn Phí Giao Hàng</span>
                                <span class="title2">Với những đơn hàng trên 500.000</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-2">
                        <div class="content-PA">
                            <span><img src="css/image/chat luong uy tin.png"></span>
                            <span class="title">Chất Lượng Uy Tín</span>
                            <span class="title2">Đảm bảo 100% hàng chính hãng</span>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-2">
                        <div class="content-PA">
                            <span><img src="css/image/ho tro online.png"></span>
                            <span class="title">Hỗ trợ Online 24/7</span>
                            <span class="title2">Cam kết giá tốt nhất thị trường</span>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-2">
                        <div class="content-PA">
                            <span><img src="css/image/mua hang tiet kiem.png"></span>
                            <span class="title">Mua Hàng Tiết Kiệm</span>
                            <span class="title2">Gọi ngay 01626252169</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tintuctet">
            <div class="col-md-6">
                <img src="css/product/6-4993a3ce-8d84-4e43-bf80-c62c4a5dd6c6 - Copy - Copy.jpg" class="img-responsive" alt="Image">
                <div class="tintuc1">
                    <a>Thăm năm làng làm bánh chưng nổi tiếng ở Hà Nội </a>
                    <br>
                    <b>Thứ 5,19/10/2017</b>
                </div>
            </div>
            <div class="col-md-6"><img src="css/product/3-diem-don-tet-nguyen-dan-ly-tuong-o-dong-nam-a - Copy - Copy.jpg" class="img-responsive" alt="Image">
                <div class="tintuc2">
                    <a >Thăm năm làng làm bánh chưng nổi tiếng ở Hà Nội </a>
                    <br>
                    <b>Thứ 5,19/10/2017</b>
                </div>
            </div>
        </div>
    </div>
    <!-- noi dung -->
    
    <footer>
     <div class="topfooter">
        <div class="container">
           <div class="row">
              <div class="footer">
                 <div class="menu2">
                    <div class=""></div>
                    <div class="col-xs-12 col-sm-4 col-md-5 col-lg-5 ">
                       <p class="title">Thông Tin Khách Hàng</p>

                       
                       <div class="linexxx contact">
                          <a href="">Chính sách bảo mật</a><br><br>
                          <a href="">Chính sách vận chuyển</a><br><br>
                          <a href="">Chính sách đổi trả</a><br><br>
                          <a href="">Chính sách sử dụng</a><br><br>
                          <a href="">Điều khoản dịch vụ</a><br><br>

                      </div>
                  </div>
                  <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                   <p class=" title">Chính sách Mua Hàng</p>

                   
                   <div class="linexxx contact">
                      <a href="">Hướng dẫn mua hàng</a><br><br>
                      <a href="">Thông tin khách hàng</a><br><br>
                      <a href="">Chính sách đãi ngộ</a><br><br>
                      <a href="">Thông tin tuyển dụng</a><br><br>
                      <a href="">Góp ý đãi ngộ</a><br><br>
                  </div>
              </div>
              <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
               <p class="title">Dịch Vụ Hỗ Trợ</p>

               
               
               <div class="linexxx contact">
                  <a href="">Giờ mở cửa:</a><br><br>
                  <a href="" style="color: yellow;">From 8h to 22h</a><br><br>
                  <a href="">Đặt hàng nhanh</a><br><br>
                  <a href="" style="color: yellow;">(084)3535335</a><br><br>
              </div>
          </div>
          
          <div class="col-md-2"></div>
      </div>
  </div>

</div>
</div>
</div>
<br>
<div class="bottom-footer">
    <div class="container">
       <div class="row">

          <div class="col-xs-12 col-sm-4 col-md-5 col-lg-5">
             <div class="footer-left">
                <div class="menu2">
                   <h4 class="title">Công ty cổ phần thương mại T&#38;T</h4>
                   <ul class="contact">
                      <li class="line2">Địa Chỉ: Khu B Tầng 5 - 99 Tô Hiến Thành Sơn Trà Đà Nẵng</li>
                      <li class="line2">Điện Thoại: (+84).1626.252.169</li>
                      <li class="line2">Email: taonguyen991@gmail.com</li>
                  </ul>
              </div>
          </div>

      </div>

      <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
         <div class="menu2">
            <h4 class="title">Chấp nhận thanh toán</h4>
            <ul class="contact2 ">
               <li>
                  <a href="#" title="Shop Giỏ Quà Việt"><img src="css/image/visa.png"></a>
              </li>
              <li>
                  <a href="#" title="Shop Giỏ Quà Việt"><img src="css/image/t5.png"></a>
              </li>
              <li>
                  <a href="#" title="Shop Giỏ Quà Việt"><img src="css/image/t3.png"></a>
              </li>
              <li>
                  <a href="#" title="Shop Giỏ Quà Việt"><img src="css/image/t4.png"></a>
              </li>

          </ul>
      </div>
  </div>

  <div class="new">
     <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 ">
        <div class="menu2">
           <h4 class="title">Kết Nối Với Chúng Tôi</h4>
           <div class="a2">
              <ul class="contact2 follow_option">
                 <li>
                    <a href="#" title="Shop Giỏ Quà Việt"><i class="fa fa-facebook"></i></a>
                </li>
                <li>
                    <a href="#" title="Shop Giỏ Quà Việt"><i class="fa fa-twitter"></i></a>
                </li>
                <li>
                    <a href="#" title="Shop Giỏ Quà Việt"><i class="fa fa-skype"></i></a>
                </li>
                <li>
                    <a href="#" title="Shop Giỏ Quà Việt"><i class="fa fa-google-plus"></i></a>
                </li>

            </ul>
        </div>
    </div>
</div>
</div>

</div>
</div>
</div>
</footer>
</body>

</html>