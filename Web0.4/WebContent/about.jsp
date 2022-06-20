<%@page import="model.Category"%>
<%@page import="model.Products"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.Writer"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page pageEncoding="utf-8"%>
<%@ page import="java.text.DecimalFormat"%>
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
<!-- <link rel="stylesheet" href="assets/css/main.css"> -->

<link rel="stylesheet" href="assets/css/responsive.css">
<script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
	
	
		<!-- Thêm phần tiêu đề trang -->
		<jsp:include page="layout/header.jsp"></jsp:include>
		<!-- Xong phần tiêu đề trang -->

		<!-- Bắt đầu slide -->

<section class="about">

    <div class="image">
        <img src="images/about-img.png" alt="">
    </div>

    <div class="content">
        <h3>our story</h3>
        <p>We are students of Vietnam Korea University Information Technology Comunication </p>
        <p>We are love so all</p>
        <a href="#" class="btn">read more</a>
    </div>

</section>

<!-- about section ends -->

<!-- faq section starts  -->

<section class="faq">

    <h1 class="heading"> questions & <span>answers</span> </h1>

    <div class="accordion-container">

        <div class="accordion">
            <div class="accordion-heading">
                <h3>how to make websites?</h3>
                <i class="fas fa-angle-down"></i>
            </div>
            <p class="accordioin-content">
                I Love You Somuch!!!
            </p>
        </div>

        <div class="accordion">
            <div class="accordion-heading">
                <h3>how to place order online?</h3>
                <i class="fas fa-angle-down"></i>
            </div>
            <p class="accordioin-content">
                I Love You Somuch!!!
            </p>
        </div>

        <div class="accordion">
            <div class="accordion-heading">
                <h3>how to pay online?</h3>
                <i class="fas fa-angle-down"></i>
            </div>
            <p class="accordioin-content">
                I Love You Somuch!!!
            </p>
        </div>

        <div class="accordion">
            <div class="accordion-heading">
                <h3>is online payment safe?</h3>
                <i class="fas fa-angle-down"></i>
            </div>
            <p class="accordioin-content">
                I Love You Somuch!!!
            </p>
        </div>

        <div class="accordion">
            <div class="accordion-heading">
                <h3>how to contact service center?</h3>
                <i class="fas fa-angle-down"></i>
            </div>
            <p class="accordioin-content">
                I Love You Somuch!!!
            </p>
        </div>

    </div>

</section>

<!-- faq section ends -->

<!-- review section starts  -->

<section class="review">

    <h1 class="heading"> clients <span>review</span> </h1>

    <div class="swiper review-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide slide">
                <img src="img/people/111.jpg" alt="">
                <h3>Dinh Ngoc Anmh</h3>
                <span>designer</span>
                <pre>Contact: +84 325 144 226</pre>
            </div>

            <div class="swiper-slide slide">
                <img src="img/people/p.jpg" alt="">
                <h3>Dinh Viet Phuong </h3>
                <span>designer</span>
                <pre>Contact: +84 855 526 902  </pre>
            </div>

            <div class="swiper-slide slide">
                <img src="img/people/P2.jpg" alt="">
                <h3>Dinh Ngoc Anmh</h3>
                <span>designer</span>
                <pre>Contact: +84 325 144 226</pre>
            </div>
            <div class="swiper-slide slide">
                <img src="img/people/111.jpg" alt="">
                <h3>Dinh Ngoc Anmh</h3>
                <span>designer</span>
                <pre>Contact: +84 325 144 226</pre>
            </div>

            <div class="swiper-slide slide">
                <img src="img/people/p.jpg" alt="">
                <h3>Dinh Viet Phuong </h3>
                <span>designer</span>
                <pre>Contact: +84 855 526 902  </pre>
            </div>

            <div class="swiper-slide slide">
                <img src="img/people/P2.jpg" alt="">
                <h3>Dinh Ngoc Anmh</h3>
                <span>designer</span>
                <pre>Contact: +84 325 144 226</pre>
            </div>

        </div>

    </div>

</section>

<!-- review section ends -->


	<!-- Thêm chân trang -->
	<section class="quick-links">

    <a href="index.jsp" class="logo"> <img src="img/logo.png" alt=""></i>  </a>

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