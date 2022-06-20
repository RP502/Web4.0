<%@page import="model.Category"%>
<%@page import="model.Products"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.Writer"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>

<%@ page pageEncoding="utf-8"%>
<%@ page import="java.text.DecimalFormat"%>
<%@page import="java.util.Map"%>
<%@page import="model.Items"%>
<%@page import="dao.CartDAO"%>
<%@page import="model.Users"%>
<%@page import="repository.CategoryBO"%>
<%@page import="java.util.Map.Entry"%>





<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- icon cho trang -->
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">
<!-- Toàn bộ link css -->

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- swiper css link  -->
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- cusom css file link  -->
    <link rel="stylesheet" href="css/style.css">

<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/pe-icon-7-stroke.css">
<link rel="stylesheet" href="lib/css/nivo-slider.css" type="text/css" />
<link rel="stylesheet" href="lib/css/preview.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="assets/css/meanmenu.min.css">
<link rel="stylesheet" href="assets/css/bundle.css">
<link rel="stylesheet" href="assets/css/style.css">


<link rel="stylesheet" href="assets/css/responsive.css">
<script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
	
	
		<!-- Thêm phần tiêu đề trang -->
		<jsp:include page="layout/header.jsp"></jsp:include>
		<!-- Xong phần tiêu đề trang -->

		<!-- Start Contents -->



<%
		CategoryBO category = new CategoryBO();
%>

<section class="shopping-cart">

    <h1 class="heading">your <span>products</span></h1>

    <div class="box-container">

        <div class="box">
            <i class="fas fa-times btn-danger"></i>
            <img src="images/product-1.jpg" alt="">
            <div class="content">
                <h3>smartphone</h3>
                <form action="">
                    <span>quantity : </span>
                    <input type="number" name="" value="1" id="">
                </form>
                <div class="price">$249.99 <span>$399.99</span></div>
            </div>
        </div>

        <div class="box">
            <i class="fas fa-times btn-danger"></i>
            <img src="images/product-2.jpg" alt="">
            <div class="content">
                <h3>camera</h3>
                <form action="">
                    <span>quantity : </span>
                    <input type="number" name="" value="1" id="">
                </form>
                <div class="price">$249.99 <span>$399.99</span></div>
            </div>
        </div>

        <div class="box">
            <i class="fas fa-times btn-danger"></i>
            <img src="images/product-3.jpg" alt="">
            <div class="content">
                <h3>television</h3>
                <form action="">
                    <span>quantity : </span>
                    <input type="number" name="" value="1" id="">
                </form>
                <div class="price">$249.99 <span>$399.99</span></div>
            </div>
        </div>

        <div class="box">
            <i class="fas fa-times btn-danger"></i>
            <img src="images/product-4.jpg" alt="">
            <div class="content">
                <h3>speaker</h3>
                <form action="">
                    <span>quantity : </span>
                    <input type="number" name="" value="1" id="">
                </form>
                <div class="price">$249.99 <span>$399.99</span></div>
            </div>
        </div>

        <div class="box">
            <i class="fas fa-times btn-danger"></i>
            <img src="images/product-8.jpg" alt="">
            <div class="content">
                <h3>smartwatch</h3>
                <form action="">
                    <span>quantity : </span>
                    <input type="number" name="" value="1" id="">
                </form>
                <div class="price">$249.99 <span>$399.99</span></div>
            </div>
        </div>
        
           <div class="box">
            <i class="fas fa-times btn-danger"></i>
            <img src="images/product-9.jpg" alt="">
            <div class="content">
                <h3>smartwatch</h3>
                <form action="">
                    <span>quantity : </span>
                    <input type="number" name="" value="1" id="">
                </form>
                <div class="price">$249.99 <span>$399.99</span></div>
            </div>
        </div>
        
           <div class="box">
            <i class="fas fa-times btn-danger"></i>
            <img src="images/product-6.jpg" alt="">
            <div class="content">
                <h3>smartwatch</h3>
                <form action="">
                    <span>quantity : </span>
                    <input type="number" name="" value="1" id="">
                </form>
                <div class="price">$249.99 <span>$399.99</span></div>
            </div>
        </div>

        <div class="box">
            <i class="fas fa-times btn-danger"></i>
            <img src="images/product-7.jpg" alt="">
            <div class="content">
                <h3>headphone</h3>
                <form action="">
                    <span>quantity : </span>
                    <input type="number" name="" value="1" id="">
                </form>
                <div class="price">$249.99 <span>$399.99</span></div>
            </div>
        </div>

    </div>

    <div class="cart-total">
        <h3> subtotal : <span>$1499.94</span> </h3>
        <h3> discount : <span>-$99.94</span> </h3>
        <h3> subtotal : <span>$1400.00</span> </h3>
        <a href="#" class="btn">proceed to checkout</a>
    </div>

</section>
	<!-- Thêm chân trang -->
	<section class="quick-links">

    <a href="Home" class="logo"> <img src="img/logo.png" alt=""></i>  </a>

    <div class="links">
        <a href="Home"> home </a>
        <a href="about.jsp"> about </a>
        <a href="products.jsp"> products </a>
        <a href="contact.jsp"> contact </a>
        <a href="logout"> logout </a>
        <a href="registration.jsp"> register </a>
        <a href="cart.jsp"> cart </a>
    </div>

    <div class="share">
        <a href="#" class="fab fa-facebook-f"></a>
        <a href="#" class="fab fa-twitter"></a>
        <a href="#" class="fab fa-instagram"></a>
        <a href="#" class="fab fa-linkedin"></a>
    </div>

</section>

<section class="credit">

    <p> created by <span>Dinh Viet Phuong</span> | all rights reserved! </p>

    <img src="images/card_img.png" alt="">

</section>
	<!-- Xong thêm chân trang -->

	<!-- Thêm xem chi tiết sản phẩm -->

	<jsp:include page="layout/detail_product.jsp"></jsp:include>

	<!-- Toàn bộ js -->
	<script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.meanmenu.js"></script>
	<script src="assets/js/jquery.magnific-popup.min.js"></script>
	<script src="assets/js/isotope.pkgd.min.js"></script>
	<script src="assets/js/imagesloaded.pkgd.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/jquery.validate.min.js"></script>
	<script src="lib/js/jquery.nivo.slider.js"></script>
	<script src="lib/home.js"></script>
	<script src="assets/js/plugins.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/script1.js"></script>
</body>

</html>