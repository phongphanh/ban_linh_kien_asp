<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="frontend/style/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form6" runat="server">
        <div id="wrapper">
          <header class="header" id="header">
            <div class="header__top">
              <div class="container">
                <div class="col col-50">
                  <div class="phone"><span class="buy-online">Mua hàng online: 1900.03.44</span><span class="hot">Than phiền: 01684.083.084</span></div>
                </div>
                <div class="col col-50">
                  <div class="header__content--contact text-right">
                    <ul class="list-inline">
                      <li><a class="dangnhap" href="../login.aspx">Đăng nhập</a></li>
                      <li><a class="dangky" href="dang_ky.aspx">Đăng ký</a></li>
                    </ul>
                  </div>
                </div>
                <div class="clear-fix"></div>
              </div>
            </div>
            <div class="header__mid">
              <div class="container">
                <div class="col col-16">
                  <div class="header__logo text-center"><a href="home.aspx"><img src="images/logo.png" alt="logo"/></a></div>
                </div>
                <div class="col col-66">
                  <div class="header__search">
                    <form id="form9">
                        <input type="text" placeholder="Tìm kiếm ..."/>
                        <button><img class="icon2" src="images/search.png" alt=""/></button>
                    </form>
                  </div>
                </div>
                <div class="col col-16">
                  <div class="header__cart"><a class="text-center" href="gio_hang.aspx"><img class="icon2" src="images/cart.png" alt=""/><span>Giỏ hàng: 0 (SP)</span></a></div>
                </div>
                <div class="clear-fix"></div>
              </div>
            </div>
            <div class="header__bottom">
              <div class="container">
                <div class="col col-16">
                  <div class="header__category  text-center">
                    <p>danh mục</p>
                  </div>
                </div>
                <div class="col col-83">
                  <div class="header__menu">
                    <ul class="list-inline">
                      <li><a href="home.aspx">Trang chủ</a></li>
                      <li><a href="#">hướng dẫn</a>
                        <ul>
                          <li><a href="video_huong_dan.aspx">video hướng dẫn mua hàng</a></li>
                          <li><a href="huong_dan_dat_mua_linh_kien.aspx">hướng dẫn đặt mua linh kiện</a></li>
                          <li><a href="tra_cuu_ma_van_don.aspx">tra cứu mã vận đơn</a></li>
                        </ul>
                      </li>
                      <li><a href="gioi_thieu.aspx">giới thiệu</a></li>
                      <li><a href="trung_tam_bao_hanh.aspx">Trung tâm bảo hành</a></li>
                    </ul>
                  </div>
                </div>
                <div class="clear-fix"></div>
              </div>
            </div>
          </header>
          <div class="container">
            <div class="content">
              <aside class="category" id="category" style="display:none;">
                <div class="category__content">
                  <ul>
                    <li><a href="vi_dieu_khien_nhung.aspx"><img class="icon--sitebar" src="images/icon1.png" alt=""/><span>Vi điều khiển - Nhúng</span></a></li>
                    <li><a href="mach_dien_tu.aspx"><img class="icon--sitebar" src="images/icon2.png" alt=""/><span>Mạch điện tử</span></a></li>
                    <li><a href="linh_kien_dien_tu.aspx"><img class="icon--sitebar" src="images/icon3.png" alt=""/><span>Linh kiện điện tử</span></a></li>
                    <li><a href="mdule_cam_bien.aspx"><img class="icon--sitebar" src="images/icon4.png" alt=""/><span>Module - Cảm biến</span></a></li>
                    <li><a href="phu_kien_dien_tu.aspx"><img class="icon--sitebar" src="images/icon5.png" alt=""/><span>Phụ kiện điện tử</span></a></li>
                    <li><a href="ic_chuc_nang.aspx"><img class="icon--sitebar" src="images/icon6.png" alt=""/><span>IC - chức năng</span></a></li>
                    <li><a href="robot_pin.aspx"><img class="icon--sitebar" src="images/icon7.png" alt=""/><span>Robot - Pin</span></a></li>
                    <li><a href="led_one_led.aspx"><img class="icon--sitebar" src="images/icon8.png" alt=""/><span>Led - Oneled</span></a></li>
                    <li><a href="smart_home.aspx"><img class="icon--sitebar" src="images/icon9.png" alt=""/><span>Smart home</span></a></li>
                    <li><a href="3d_printer_cnc.aspx"><img class="icon--sitebar" src="images/icon10.png" alt=""/><span>3D Printer & CNC</span></a></li>
                  </ul>
                </div>
              </aside>
              <div class="content__login">
                  <form id="form1" >
                      <h1>Đây là form đăng nhập</h1>
                  </form>
              </div>
            </div>
          </div>
          <footer class="footer" id="footer">
            <div class="footer__top">
              <div class="container">
                <div class="col col-25">
                  <div class="footer__top--links">
                    <ul class="list-inline">
                      <li><a href="#"><img src="images/facebook.png" alt=""/></a></li>
                      <li><a href="#"><img src="images/google.png" alt=""/></a></li>
                      <li><a href="#"><img src="images/youtube.png" alt=""/></a></li>
                    </ul>
                  </div>
                </div>
                <div class="col col-75">
                  <div class="footer__top--recieve">
                    <div class="col col-50">
                      <div class="footer__top--text"><img src="images/letter.png" alt=""/><span>đăng kí nhận thông tin sản phẩm</span></div>
                    </div>
                    <div class="col col-50">
                      <div class="footer__top--form text-right">
                        <form id="form3" >
                          <input type="email" placeholder="Email Address *"/>
                          <input type="submit" value="Đăng Ký"/>
                        </form>
                      </div>
                    </div>
                    <div class="clear-fix"></div>
                  </div>
                </div>
                <div class="clear-fix"></div>
              </div>
            </div>
            <div class="container">
              <div class="footer__bottom">
                <div class="footer__bottom--infor">
                  <p>Công Ty TNHH Thiết Bị Và Công Nghệ Minh Hà</p>
                  <p>Trụ sở: Đại Vĩ - Liên Hà - Đông Anh - Hà Nội</p>
                  <p>GPĐKKD Số: 01.05.165.062 Do Sở KH VÀ ĐT TP.HN cấp ngày: 28.02.2011</p>
                </div>
                <div class="footer__bottom--register"><img src="images/thongbaobct.png" alt=""/></div>
              </div>
            </div>
          </footer>
        </div>
    </form>
    <script src="frontend/jquery.min.js"></script>
    <script src="frontend/script.js"></script>
</body>
</html>
