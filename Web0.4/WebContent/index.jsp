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
	<div style="background: #dee7ee;">
		<%
		ArrayList<Products> products = (ArrayList<Products>) request.getAttribute("lstProducts");
		ArrayList<Products> productstop8 = (ArrayList<Products>) request.getAttribute("lstProductstop8");
		ArrayList<Category> category = (ArrayList<Category>) request.getAttribute("lstCategory");
		%>
		<!-- Thêm phần tiêu đề trang -->
		<jsp:include page="layout/header.jsp"></jsp:include>
		<!-- Xong phần tiêu đề trang -->

		<!-- Bắt đầu slide -->
		


<!-- header section ends -->

<!-- side-bar section starts -->

<section class="home">

    <div class="swiper home-slider">

        <div class="swiper-wrapper">

        <div class="swiper-slide slide">
            <div class="image">
                <img src="images/home-img-1.jpg" alt="">
            </div>
            <div class="content">
                <span>upto 50% off</span>
                <h3>smartphones</h3>
                <a href="#" class="btn">shop now</a>
            </div>
        </div>

        <div class="swiper-slide slide">
            <div class="image">
                <img src="images/home-img-2.jpg" alt="">
            </div>
            <div class="content">
                <span>upto 50% off</span>
                <h3>smartwatch</h3>
                <a href="#" class="btn">shop now</a>
            </div>
        </div>

        <div class="swiper-slide slide">
            <div class="image">
                <img src="images/home-img-3.jpg" alt="">
            </div>
            <div class="content">
                <span>upto 50% off</span>
                <h3>headphones</h3>
                <a href="#" class="btn">shop now</a>
            </div>
        </div>

        </div>

        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>

    </div>

</section>


	<!--Xong slider -->
	
	<section class="banner">

    <div class="box-container">

        <a href="#" class="box">
            <img src="images/banner-1.jpg" alt="">
            <div class="content">
                <span>special offer</span>
                <h3>upto 50% off</h3>
            </div>
        </a>

        <a href="#" class="box">
            <img src="images/banner-2.jpg" alt="">
            <div class="content">
                <span>special offer</span>
                <h3>upto 50% off</h3>
            </div>
        </a>

        <a href="#" class="box">
            <img src="images/banner-3.jpg" alt="">
            <div class="content">
                <span>special offer</span>
                <h3>upto 50% off</h3>
            </div>
        </a>
        
    </div>

</section>
	<!-- Bắt đầu dịch vụ - giao hàng  -->

	<!-- Xong dịch vụ - giao hàng -->
	<!-- Bắt đầu sản phẩm nỗi bật -->
	<div class="container">
		<div class="section-title text-center mb-50">
			<h2>
				Product Category<i class="fa fa-shopping-cart"></i>
			</h2>
		</div>
		<div class="shop-menu portfolio-left-menu text-center mb-50">
			<button class="active" data-filter="*">All product</button>
			<%
			for (Category ls : category) {
			%>
			<button data-filter=".mix<%=ls.getId()%>">
				<%=ls.getTenLoaiSanPham()%></button>
			<%
			}
			%>

		</div>
		<div class="row portfolio-style-2">
			<!-- Hiển thị sản phẩm -->
			<div class="grid">
				<!--(Bánh ngọt)1  -->
				<%
				int max = 33;
				int numb = products.size();
				DecimalFormat numformat = new DecimalFormat("#,###,###");
				if (numb < max) {
					for (Products ls : products) {
				%>
				<div
					class="col-md-4 col-sm-6 col-xs-12 grid-item mix<%=ls.getId_loaiSanPham()%> mb-50">
					<div class="single-shop" style="border-radius: 15px">
						<div class="shop-img">
							<a href="javascript:void(0)"><img
								src="assets/img/shop/product/<%=ls.getAnhChinh()%>" alt=""
								width="100%" height="100%" /></a>
							<%
							if (ls.getTinhTrang() == 1) {
								if (ls.getKhuyenMai() > 0) {
							%>
							<div class="price-up-down">
								<span class="sale-new">Sale <%=ls.getKhuyenMai()%>%
								</span>
							</div>
							<%
							}
							} else {
							%>
							<div class="price-up-down">
								<span class="sale-new">Hot </span>
							</div>
							<%
							}
							%>

							<div class="button-group">
								<a href="HomeCartServlet?status=add&id_product=<%=ls.getId()%>"
									title="Add to Cart"> <i class="pe-7s-cart"></i>
								</a> <a class="wishlist" href="#" title="Wishlist"> <i
									class="pe-7s-like"></i>
								</a> <a href="#" data-toggle="modal"
									data-target="#quick-view<%=ls.getId()%>" title="Quick View">
									<i class="pe-7s-look"></i>
								</a>
							</div>
						</div>
						<div class="shop-text-all">
							<div class="title-color fix">
								<div class="shop-title f-left">
									<h3>
										<a href="#" data-toggle="modal"
											data-target="#quick-view<%=ls.getId()%>"> <%=ls.getTenSanPham()%></a>
									</h3>
								</div>
								<div class="price f-right">
									<%
									double price = ls.getGiaGoc();
									int sale = ls.getKhuyenMai();
									price = price - (price * sale / 100);
									String price_nb = numformat.format(price);
									%>
									<span class="new"> <%=price_nb%>$
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<%
				}
				} else {
				for (int i = 0; i < max; i++) {
				%>
				<div
					class="col-md-3 col-sm-6 col-xs-12 grid-item mix<%=products.get(i).getId_loaiSanPham()%> mb-50">
					<div class="single-shop">
						<div class="shop-img" style="border-radius: 4px">
							<a href="javascript:void(0)"><img
								src="assets/img/shop/product/<%=products.get(i).getAnhChinh()%>"
								alt="" width="100%" height="100%" /></a>
							<%
							if (products.get(i).getTinhTrang() == 1) {
								if (products.get(i).getKhuyenMai() > 0) {
							%>
							<div class="price-up-down">
								<span class="sale-new">Sale <%=products.get(i).getKhuyenMai()%>%
								</span>
							</div>
							<%
							}
							} else {
							%>
							<div class="price-up-down">
								<span class="sale-new">Out of Sale </span>
							</div>
							<%
							}
							%>
							<div class="button-group">
								<a
									href="HomeCartServlet?status=add&id_product=<%=products.get(i).getId()%>"
									title="Add to Cart"> <i class="pe-7s-cart"></i>
								</a> <a class="wishlist" href="#" title="Wishlist"> <i
									class="pe-7s-like"></i>
								</a> <a href="#" data-toggle="modal" data-target="#quick-view"
									title="Quick View"> <i class="pe-7s-look"></i>
								</a>
							</div>
						</div>
						<div class="shop-text-all">
							<div class="title-color fix">
								<div class="shop-title f-left">
									<h3>
										<a href="#" data-toggle="modal"
											data-target="#quick-view<%=products.get(i).getId()%>"> <%=products.get(i).getTenSanPham()%></a>
									</h3>
								</div>
								<div class="price f-right">
									<%
									double price = products.get(i).getGiaGoc();
									int sale = products.get(i).getKhuyenMai();
									price = price - (price * sale / 100);
									String price_nb = numformat.format(price);
									%>
									<span class="new"> <%=price_nb%> $
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<%
				}
				}
				%>
			</div>
			<!-- Xong hiển thị sản phẩm -->
		</div>
		<div class="text-center">
			<a class="hvr-shutter-out-horizontal"
				href="HomeProductsServlet?id_product=0"> See More <i
				class="fa fa-angle-double-right"></i>
			</a>
		</div>
	</div>
	</div>
	<!-- Xong sản phẩm nỗi bật -->
	<!-- Bắt đầu khu vực khuyến mãi -->

	<!-- Xong khu vực khuyến mãi -->
	<!-- Bắt đầu sản phẩm mới -->
	<div class="container">
		<div class="section-title text-center mb-50">
			<h2>
				New Products <i class="fa fa-shopping-cart"></i>
			</h2>
		</div>
		<div class="row">
			<%
			int index = -1;
			for (Products ls : products) {
				index++;
				if (index == 0) {
			%>
			<div class="special-slider-active owl-carousel">
				<div class="single-special-slider">
					<div class="col-lg-12 col-md-12 col-xs-12">
						<div class="single-shop" style="border-radius: 10px">
							<div class="shop-img">
								<a href="javascript:void(0)"><img
									src="assets/img/shop/product/<%=ls.getAnhChinh()%>" alt=""
									width="100%" height="100%" /></a>
								<div class="price-up-down">
									<span class="sale-new">New</span>
								</div>
								<div class="button-group">
									<a href="HomeCartServlet?status=add&id_product=<%=ls.getId()%>"
										title="Add to Cart"> <i class="pe-7s-cart"></i>
									</a> <a class="wishlist" href="#" title="Wishlist"> <i
										class="pe-7s-like"></i>
									</a> <a href="#" data-toggle="modal"
										data-target="#quick-view<%=ls.getId()%>" title="Quick View">
										<i class="pe-7s-look"></i>
									</a>
								</div>
							</div>
							<div class="shop-text-all">
								<div class="title-color fix">
									<div class="shop-title f-left">
										<h3>
											<a href="#" data-toggle="modal"
												data-target="#quick-view<%=ls.getId()%>"><%=ls.getTenSanPham()%></a>
										</h3>
									</div>
									<div class="price f-right">
										<%
										double price = ls.getGiaGoc();
										int sale = ls.getKhuyenMai();
										price = price - (price * sale / 100);
										String price_nb = numformat.format(price);
										%>
										<span class="new"> <%=price_nb%>$
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<%
				} else {
				%>

				<div class="single-special-slider">
					<div class="col-lg-12 col-md-12 col-xs-12">
						<div class="single-shop">
							<div class="shop-img">
								<a href="javascript:void(0)"><img
									src="assets/img/shop/product/<%=ls.getAnhChinh()%>" alt=""
									width="100%" height="100%" /></a>
								<div class="price-up-down">
									<span class="sale-new">New Product</span>
								</div>
								<div class="button-group">
									<a href="HomeCartServlet?status=add&id_product=<%=ls.getId()%>"
										title="Add to Cart"> <i class="pe-7s-cart"></i>
									</a> <a class="wishlist" href="#" title="Wishlist"> <i
										class="pe-7s-like"></i>
									</a> <a href="#" data-toggle="modal"
										data-target="#quick-view<%=ls.getId()%>" title="Quick View">
										<i class="pe-7s-look"></i>
									</a>
								</div>
							</div>
							<div class="shop-text-all">
								<div class="title-color fix">
									<div class="shop-title f-left">
										<h3>
											<a href="#" data-toggle="modal"
												data-target="#quick-view<%=ls.getId()%>"> <%=ls.getTenSanPham()%></a>
										</h3>
									</div>
									<div class="price f-right">
										<%
										double price = ls.getGiaGoc();
										int sale = ls.getKhuyenMai();
										price = price - (price * sale / 100);
										String price_nb = numformat.format(price);
										%>
										<span class="new"> <%=price_nb%>$
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<%
				}
				}
				%>
			</div>
		</div>
	</div>
	</div>

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
<script >

document.querySelectorAll('.accordion-container .accordion').forEach(accordion =>{
    accordion.onclick = () =>{
        accordion.classList.toggle('active');
    }
});

var swiper = new Swiper(".home-slider", {
    loop:true,
    grabCursor:true,
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
});

var swiper = new Swiper(".review-slider", {
    loop:true,
    grabCursor:true,
    spaceBetween: 20,
    breakpoints: {
        450: {
          slidesPerView: 1,
        },
        768: {
          slidesPerView: 2,
        },
        1024: {
          slidesPerView: 3,
        },
    },
});


</script>

</body>

</html>