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


<link rel="stylesheet" href="assets/css/responsive.css">
<script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
	
	
		<!-- Thêm phần tiêu đề trang -->
		<jsp:include page="layout/header.jsp"></jsp:include>
		<!-- Xong phần tiêu đề trang -->

		<!-- Start Contents -->

<section class="category">

    <h1 class="heading"> shop by <span>category</span> </h1>

    <div class="box-container">

        <a href="television.jsp" class="box">
            <img src="images/cat_img1.png" alt="">
            <h3>televisions</h3>
        </a>

        <a href="smartphone.jsp" class="box">
            <img src="images/cat_img2.png" alt="">
            <h3>smartphones</h3>
        </a>

        <a href="headphones.jsp" class="box">
            <img src="images/cat_img3.png" alt="">
            <h3>headphones</h3>
        </a>

        <a href="smartwatches.jsp" class="box">
            <img src="images/cat_img4.png" alt="">
            <h3>smartwatches</h3>
        </a>

        <a href="games.jsp" class="box">
            <img src="images/cat_img5.png" alt="">
            <h3>games</h3>
        </a>

        <a href="camera.jsp" class="box">
            <img src="images/cat_img6.png" alt="">
            <h3>camera</h3>
        </a>

        <a href="speakers.jsp" class="box">
            <img src="images/cat_img7.png" alt="">
            <h3>speakers</h3>
        </a>

    </div>

</section>

<!-- category section ends -->

<!-- products section starts  -->

<section class="products">

    <h1 class="heading"> featured <span>products</span> </h1>

    <div class="box-container">

        <div class="box">
            <div class="image">
                <img src="images/product-4.jpg" class="main-img" alt="">
                <img src="images/product-4.jpg"  class="hover-img" alt="">
                <div class="icons">
                    <a href="#" class="fas fa-shopping-cart"></a>
                    <a href="#" class="fas fa-search-plus"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>Ipod Pro Max</h3>
                <div class="price">$999.99 <span>$5199.99</span></div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>
        </div>

              
        <div class="box">
            <div class="image">
                <img src="images/product-4-hover.jpg" class="main-img" alt="">
                <img src="images/product-4-hover.jpg"  class="hover-img" alt="">
                <div class="icons">
                    <a href="#" class="fas fa-shopping-cart"></a>
                    <a href="#" class="fas fa-search-plus"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>Pink headphone</h3>
                <div class="price">$249.99 <span>$399.99</span></div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>
        </div>

       
        <div class="box">
            <div class="image">
                <img src="images/p1.jpg" class="main-img" alt="">
                <img src="images/p1.jpg"  class="hover-img" alt="">
                <div class="icons">
                    <a href="#" class="fas fa-shopping-cart"></a>
                    <a href="#" class="fas fa-search-plus"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>Ipod White</h3>
                <div class="price">$146.99 <span>$299.99</span></div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="image">
                <img src="images/p2.jpg" class="main-img" alt="">
                <img src="images/p2.jpg"  class="hover-img" alt="">
                <div class="icons">
                    <a href="#" class="fas fa-shopping-cart"></a>
                    <a href="#" class="fas fa-search-plus"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>SamSung M12(3GB/32GB)</h3>
                <div class="price">$111.99 <span>$599.99</span></div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>
        </div>

        
        <div class="box">
            <div class="image">
                <img src="images/p3.jpg" class="main-img" alt="">
                <img src="images/p3.jpg"  class="hover-img" alt="">
                <div class="icons">
                    <a href="#" class="fas fa-shopping-cart"></a>
                    <a href="#" class="fas fa-search-plus"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>Ipad Proo</h3>
                <div class="price">$669.99 <span>$1599.99</span></div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="image">
                <img src="images/p4.jpg" class="main-img" alt="">
                <img src="images/p4.jpg"  class="hover-img" alt="">
                <div class="icons">
                    <a href="#" class="fas fa-shopping-cart"></a>
                    <a href="#" class="fas fa-search-plus"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>Oppo Biud</h3>
                <div class="price">$499.99 <span>$999.99</span></div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="image">
                <img src="images/p5.jpg" class="main-img" alt="">
                <img src="images/p5.jpg"  class="hover-img" alt="">
                <div class="icons">
                    <a href="#" class="fas fa-shopping-cart"></a>
                    <a href="#" class="fas fa-search-plus"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>SamSung M12(3GB/32GB)</h3>
                <div class="price">$249.99 <span>$599.99</span></div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>
        </div>

        
        <div class="box">
            <div class="image">
                <img src="images/p6.jpg" class="main-img" alt="">
                <img src="images/p6.jpg"  class="hover-img" alt="">
                <div class="icons">
                    <a href="#" class="fas fa-shopping-cart"></a>
                    <a href="#" class="fas fa-search-plus"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>ViVo Prooo</h3>
                <div class="price">$249.99 <span>$399.99</span></div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>
        </div>

       
        <div class="box">
            <div class="image">
                <img src="images/p7.jpg" class="main-img" alt="">
                <img src="images/p7.jpg"  class="hover-img" alt="">
                <div class="icons">
                    <a href="#" class="fas fa-shopping-cart"></a>
                    <a href="#" class="fas fa-search-plus"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>SamSung A502</h3>
                <div class="price">$146.99 <span>$299.99</span></div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>
        </div>


</section>

<!-- products section ends -->

<!-- product banner section starts  -->

<section class="product-banner">

    <h1 class="heading"> <span>deal</span> of the day </h1>

    <div class="box-container">

        <div class="box">
            <img src="images/product-banner-1.jpg" alt="">
            <div class="content">
                <span>special offer</span>
                <h3>upto 50% off</h3>
                <a href="#" class="btn">shop now</a>
            </div>
        </div>

        <div class="box">
            <img src="images/product-banner-2.jpg" alt="">
            <div class="content">
                <span>special offer</span>
                <h3>upto 50% off</h3>
                <a href="#" class="btn">shop now</a>
            </div>
        </div>

    </div>
    
</section>

<!-- product banner section ends -->










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