<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>INSPINIA | Dashboard v.4</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <script src="js/jquery.min.js" type="text/javascript"></script>
    </head>

    <body class="top-navigation">

        <div id="wrapper">
            <div id="page-wrapper" class="gray-bg">
                <div class="row border-bottom white-bg">
                    <div class="container">
                        <nav class="navbar navbar-static-top" role="navigation">

                            <div class="navbar-collapse collapse" id="navbar">
                                <ul class="nav navbar-nav">
                                    <li class="active">
                                        <a href="chandoan.jsp"> Trang chủ</a>
                                    </li>
                                    <li class="dropdown">
                                        <a aria-expanded="false" role="button" name="test" class="dropdown-toggle" data-toggle="dropdown"> Chuẩn đoán
                                            <span class="caret"></span>
                                        </a>
                                        <ul role="menu" class="dropdown-menu">
                                            <li>
                                                <a href="">Menu item</a>
                                            </li>
                                            <li>
                                                <a href="">Menu item</a>
                                            </li>
                                            <li>
                                                <a href="">Menu item</a>
                                            </li>
                                            <li>
                                                <a href="">Menu item</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="dropdown">
                                        <a aria-expanded="false" role="button" href="#" onclick="test()" class="dropdown-toggle" data-toggle="dropdown"> Khám chữa bệnh
                                            <span class="caret"></span>
                                        </a>
                                        <ul role="menu" class="dropdown-menu">
                                            <li>
                                                <a href="">Khám tổng quát</a>
                                            </li>
                                            <li>
                                                <a href="">Khám chuyên khoa</a>
                                            </li>
                                            <li>
                                                <a href="">Khám cận lâm sàng</a>
                                            </li>

                                        </ul>
                                    </li>
                                    <li>
                                        <a href="lienhe.html"> Liên hệ</a>
                                    </li>

                                </ul>
                                <ul class="nav navbar-top-links navbar-right">
                                    <li>
                                        <a href="login.html">
                                            <i class="fa fa-sign-in"></i> Sign in
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
                <div class="wrapper wrapper-content">
                    <div class="container">
                        <div class="row">

                            <div class="col-lg-12">
                                <div class="ibox float-e-margins">
                                    <div class="ibox-title">
                                        <h5>CHUẨN ĐOÁN BỆNH</h5>
                                    </div>
                                    <div class="ibox-content">
                                        <div class="wrapper wrapper-content animated fadeInRight">
                                            <form class="form-horizontal" id="frm1">
                                                <div class="form-group">
                                                    <div class="SB">
                                                        <div class="Gan"> 
                                                            <label class="col-sm-2 control-label">Da</label>
                                                            <div class="col-sm-2">
                                                                <select class="form-control m-b " name="Da">
                                                                    <option value="BT" >Bình thường</option>
                                                                    <option value="Vang">Vàng</option>
                                                                    <option value="ManNgua">Mẫn ngứa</option>
                                                                    <option value="SaoMach">Sao mạch</option>

                                                                </select>
                                                            </div>
                                                            <label class="col-sm-2 control-label">Mắt </label>
                                                            <div class="col-sm-2">
                                                                <select class="form-control m-b " name="Mat">
                                                                    <option value="BT" >Bình thường</option>
                                                                    <option value="Vang">Vàng</option>
                                                                </select>
                                                            </div>
                                                            
                                                        </div>
                                                        <div class="Tieuhoa Gan">
                                                        <label class="col-sm-2 control-label">Bụng</label>
                                                            <div class="col-sm-2">
                                                                <select class="form-control m-b " name="Bung" >
                                                                    <option value="BT" >Bình thường</option>
                                                                    <option value="Chuong">Chướng</option>
                                                                    <option value="Dau">Đau</option>
                                                                    <option value="KhoTieu">Khó tiêu</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="Tieuhoa">
                                                        <label class="col-sm-2 control-label">Cân nặng</label>
                                                                <div class="col-sm-2">
                                                                    <select class="form-control m-b " name="CanNang"> 
                                                                        <option value="BT" >Bình thường</option>
                                                                        <option value="Cao">Cao</option>
                                                                        <option value="Thap">Thấp</option>
                                                                    </select>
                                                                </div>
                                                        </div>
                                                        
                                                        <div class="Gan Tieuhoa">
                                                        <label class="col-sm-2 control-label">Cảm giác</label>

                                                        <div class="col-sm-2">
                                                            <select class="form-control m-b " name="CamGiac">
                                                                <option value="BT" >Bình thường</option>
                                                                <option value="BuonNon">Buồn nôn</option>
                                                                <option value="OChua">Ợ chua</option>
                                                            </select>
                                                        </div>
                                                        </div>
                                                        
                                                        <div class="HoHap">
                                                        <label class="col-sm-2 control-label">Ho</label>

                                                        <div class="col-sm-2">
                                                            <select class="form-control m-b " name="Ho" >
                                                                <option value="BT">Bình thường</option>
                                                                <option value="HoKhan">Ho Khan</option>
                                                                <option value="HoTangDan">Ho tăng dần</option>
                                                                <option value="HoCoDam">Ho có đàm</option>
                                                                <option value="HoRaMau">Ho ra máu</option>
                                                            </select>
                                                        </div>
                                                            <label class="col-sm-2 control-label">Đau đầu</label>

                                                        <div class="col-sm-2">
                                                            <select class="form-control m-b " name="DauDau" >
                                                                <option value="BT" >Bình thường</option>
                                                                <option value="DauDau">Đau đầu</option>
                                                                <option value="NhucDau">Nhức đầu</option>
                                                                <option value="DauDauLienTuc">Đau đầu liên tục</option>
                                                            </select>
                                                        </div>
                                                            <label class="col-sm-2 control-label">Khó thở</label>

                                                        <div class="col-sm-2">
                                                            <select class="form-control m-b " name="KhoTho" >
                                                                <option value="BT" >Bình thường</option>
                                                                <option value="KhoTho">Khó thở</option>
                                                                <option value="ThoGap">Thở gấp</option>
                                                                <option value="Thocham">Thở chậm</option>
                                                            </select>
                                                        </div>
                                                        </div>
                                                    </div>
                                                    <div class="Chuyen" hidden>
                                                    <div class="Gan"> 
                                                    <label class="col-sm-2 control-label">Ăn uống</label>

                                                    <div class="col-sm-2">
                                                        <select class="form-control m-b " name="AnUong">
                                                            <option value="BT" >Bình thường</option>
                                                            <option value="ChanAn">Chắn ăn</option>
                                                            <option value="KhongNgonMieng">Không ngon miệng</option>

                                                        </select>
                                                    </div>
                                                    </div>
                                                    <div class="Sot">
                                                    <label class="col-sm-2 control-label">Sốt</label>
                                                    <div class="col-sm-2">
                                                        <select class="form-control m-b " name="Sot">
                                                            <option value="BT">Bình thường</option>
                                                            <option value="SotNhe">Sốt nhẹ</option>
                                                            <option value="SotCao">Sốt cao</option>
                                                        </select>
                                                    </div>
                                                    </div>
                                                    </div>
                                                    <div class="form-group" id="sobo">
                                                        <div class="col-sm-12 col-sm-offset-2">
                                                            <button type="button" class="btn btn-primary" onclick="getNhomBenh()">Chuẩn đoán</button>
                                                        </div>
                                                    </div>
                                                    <div class="form-group" id="chuyen" hidden>
                                                        <div class="col-sm-12 col-sm-offset-2">
                                                            <button type="button" class="btn btn-primary" onclick="getBenh()">Chuẩn đoán</button>
                                                        </div>
                                                    </div>
                                                    


                                                </div>
                                            </form>
                                            <center>
                                            <div class="row">
                                                <h3 id="TQ"></h3>
                                                <h3 id="benh"></h3>
                                            </div>
                                        <div class="form-group row" hidden id="myBtn">
                                            <div class="col-sm-12">
                                                <button class="btn btn-primary" onclick="rd()">Tiếp tục chẩn đoán </button>
                                            </div>
                                        </div>
                                            </center>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>


                </div>
                <div class="footer">
                    <div class="pull-right">

                        <strong> </strong> 
                    </div>
                    <div>
                        <strong>Doctor AndyLee: </strong> Better use medicines at the outset than at the last moment
                    </div>

                </div>
            </div>
            <script src="js/jquery.min.js" type="text/javascript"></script>
            <script>
                                                    function getNhomBenh() {
                                                        $.post('ChanDoanServlet', $('#frm1').serialize(), function (response) {
                                                            $('#TQ').text("Tổng quát: "+ response);
                                                            $('#nhombenh').val(response);
                                                            if ("Bình thường" !== response)
                                                                $('#myBtn').show();
                                                            else {
                                                                $('#myBtn').hide();
                                                            }
                                                        });
                                                    };
                                                    function rd() {
                                                        var nhombenh = $('#nhombenh').val();
                                                        $('.SB').hide();
                                                        $('.Chuyen').show();
                                                        $('#myBtn').hide();
                                                        $('#sobo').hide();
                                                        $('#chuyen').show();
                                                    }
                                                    function test() {
                                                        displayGan();
                                                        $('select').val('BT');
                                                };
                                                    
                                                    function displayGan(){
                                                        $(document).ready(function (){
                                                            $('.SB').show();
                                                            $('.Chuyen').show();
                                                            $('.Tieuhoa').hide();
                                                            $('.HoHap').hide();
                                                            $('.Gan').show();  
                                                        });
                                                    };


            </script>
            <script>
                                                                    function getBenh() {
                                                        $.post('ChanDoanGanServlet', $('#frm1').serialize(), function (response) {
                                                            $('#benh').text("Nhi đã bị bệnh: " + response);
                                                        });
                                                    };
            </script>

    </body>

</html>