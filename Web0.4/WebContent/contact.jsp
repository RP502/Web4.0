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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- swiper css link  -->
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

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

	<section class="info-container">

		<div class="box-container">

			<div class="box">
				<i class="fas fa-map"></i>
				<h3>address</h3>
				<p>Da Nang City</p>
			</div>

			<div class="box">
				<i class="fas fa-envelope"></i>
				<h3>email</h3>
				<p>phuongdv.21it@vku.udn.vn</p>
				<p>anhdn.21it@vku.udn.vn</p>
			</div>

			<div class="box">
				<i class="fas fa-phone"></i>
				<h3>number</h3>
				<p>0855526902</p>
				<p>0945213456</p>
			</div>

		</div>

	</section>


	<section class="contact">
		<div id="form-details" class="inputBox">
			<form id="contact" method="post" onsubmit="reset();">
				<h3>LEAVE A MESAGE</h3>
				<p>We love to hear from you</p>
				<fieldset>
					<input placeholder="Your name" type="text" tabindex="1" required
						autofocus class="username" />
				</fieldset>
				<fieldset>
					<input type="email" tabindex="2" required class="email"
						placeholder="Your Email Address" />
				</fieldset>
				<fieldset>
					<textarea placeholder="Type your message here...." tabindex="5"
						required class="message"></textarea>
				</fieldset>
				<fieldset>
					<button name="submit" type="submit" id="contact-submit"
						data-submit="...Sending" class="normal submit">
						Submit</button>
				</fieldset>
			</form>


		</div>
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15342.955254461815!2d108.24450408238694!3d15.975010423892149!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142108997dc971f%3A0x1295cb3d313469c9!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVGjDtG5nIHRpbiB2w6AgVHJ1eeG7gW4gdGjDtG5nIFZp4buHdCAtIEjDoG4!5e0!3m2!1svi!2s!4v1653843561719!5m2!1svi!2s"
			width="600" height="450" style="border: 0;" allowfullscreen=""
			loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

	</section>

	<!-- Thêm chân trang -->
	<section class="quick-links">

		<a href="index.jsp" class="logo"> <img src="img/logo.png" alt=""></i>
		</a>

		<div class="links">
			<a href="Home"> home </a> <a href="about.jsp"> about </a> <a
				href="products.jsp"> products </a> <a href="contact.jsp">
				contact </a> <a href="logout"> logout </a> <a href="registration.jsp">
				register </a> <a href="cart.jsp"> cart </a>
		</div>

		<div class="share">
			<a href="#" class="fab fa-facebook-f"></a> <a href="#"
				class="fab fa-twitter"></a> <a href="#" class="fab fa-instagram"></a>
			<a href="#" class="fab fa-linkedin"></a>
		</div>

	</section>

	<section class="credit">

		<p>
			created by <span>Dinh Viet Phuong</span> | all rights reserved!
		</p>

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
	<script src="script.js"></script>



	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/emailjs-com@2/dist/email.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	<script type="text/javascript">
      
  
        (function () {
          
          emailjs.init("WjNgRu8ycJLGXB0FM");
        })();
  
       
        function validate() {
          let loader = document.querySelector(".loader");
          let name = document.querySelector(".username");
          let email = document.querySelector(".email ");
          let msg = document.querySelector(".message");
          let btn = document.querySelector(".submit");
         
          

          btn.addEventListener("click", (e) => {
            e.preventDefault();
            if (name.value == ""  || msg.value == "" || email.value == "")    {
              emptyerror();
            } else {
              // loader.style.display = "flex";
              sendmail(name.value, email.value, msg.value);
              success();
              // loader.style.display = "none";
            }
          });
        }
        validate();
  
        function sendmail(name, email, msg) {
          emailjs.send("service_c9glomm","template_j2tjacp", {
            to_name: name,
            from_name: email,
            message: msg,
          });
        }
  
        function emptyerror() {
          Swal.fire({
            icon: "error",
            title: "Oops...",
            text: "Fields cannot be empty!",
          });
        }
  
        function error() {
          Swal.fire({
            icon: "error",
            title: "Oops...",
            text: "Something went wrong!",
          });
        }
  
        function success() {
          Swal.fire({
            icon: "success",
            title: "Success...",
            text: "Successfully sent message",
          });
        }
      </script>

	<script src="js/script.js"></script>




	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/emailjs-com@2/dist/email.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	<script type="text/javascript">
      
  
        (function () {
          
          emailjs.init("WjNgRu8ycJLGXB0FM");
        })();
  
       
        function validate() {
          let loader = document.querySelector(".loader");
          let name = document.querySelector(".username");
          let email = document.querySelector(".email ");
          let msg = document.querySelector(".message");
          let btn = document.querySelector(".submit");
         
          

          btn.addEventListener("click", (e) => {
            e.preventDefault();
            if (name.value == ""  || msg.value == "" || email.value == "")    {
              emptyerror();
            } else {
              // loader.style.display = "flex";
              sendmail(name.value, email.value, msg.value);
              success();
              // loader.style.display = "none";
            }
          });
        }
        validate();
  
        function sendmail(name, email, msg) {
          emailjs.send("service_c9glomm","template_j2tjacp", {
            to_name: name,
            from_name: email,
            message: msg,
          });
        }
  
        function emptyerror() {
          Swal.fire({
            icon: "error",
            title: "Oops...",
            text: "Fields cannot be empty!",
          });
        }
  
        function error() {
          Swal.fire({
            icon: "error",
            title: "Oops...",
            text: "Something went wrong!",
          });
        }
  
        function success() {
          Swal.fire({
            icon: "success",
            title: "Success...",
            text: "Successfully sent message",
          });
        }
      </script>


</body>

</html>