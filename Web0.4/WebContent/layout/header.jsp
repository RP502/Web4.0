<%@page import="java.util.Map"%>
<%@page import="model.Category"%>
<%@page import="model.Items"%>
<%@page import="dao.CartDAO"%>
<%@page import="model.Users"%>
<%@page import="repository.CategoryBO"%>
<%@page import="java.util.Map.Entry"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.Map.Entry"%>
<%@ page pageEncoding="utf-8"%>
<%@ page import="java.text.DecimalFormat"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
	<%
		CategoryBO category = new CategoryBO();
	
	%>
	<!-- Bắt đầu tiêu đề -->
	<header class="header-area home-style-2"
		style="position: -webkit-sticky; position: sticky; top: 0; left: 0; right: 0; z-index: 1000;">
		<div class="header-bottom" style="background: #a0c7e4;">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-3 col-xs-6">
						<div class="header">
							<a href="Home" class="logo"> <img src="img/logo.png" alt=""></i>
							</a>
						</div>

					</div>
					<div class="col-md-8 col-sm-9 col-xs-6">
						<div class="cart-menu">
							<div class="search-style-2 f-right">
								<a class="icon-search-2" href="javascript:void(0)"> <i
									class="pe-7s-search"></i></a>
								<div class="search2-content">
									<form action="HomeProductsServlet" method="get">
										<div class="search-input-button2">
											<input class="" placeholder="Seach" type="search" name="key">
											<button class="search-button2" type="submit" name="search">
												<i class="pe-7s-search"></i>
											</button>
										</div>
									</form>
								</div>
							</div>
							<div class="user user-style-3 f-right">
								<%
									if (session.getAttribute("uslogin") != null) {
										// Giá trị session tồn tại 2 giờ 
									Users	 us = (Users) session.getAttribute("login");
								%>
								<a href="#"> <i class="pe-7s-user"></i>
								</a>
								<div class="currence-user-page">
									<div class="user-page">
										<ul>
											<li><a href="HomeUserProfileServlet?id=<%=us.getId()%>"><i
													class="pe-7s-id"></i> <%=us.getTenTaiKhoan()%></a></li>
											<li><a href="Logout"><i class="pe-7s-back"></i>
													Logout</a></li>
										</ul>
									</div>
								</div>
								<%
									} else {
								%>
								<a href="#"> <i class="pe-7s-add-user"></i>
								</a>
								<div class="currence-user-page">
									<div class="user-page">
										<ul>
											<li><a href="login.jsp"><i class="pe-7s-next-2"></i>Login/Register</a></li>

										</ul>
									</div>
								</div>
								<%
									}
								%>

							</div>
							<div class="user user-style-3 f-right hidden-xs">
								<a href="#"> <i class="pe-7s-global"></i>
								</a>
								<div class="currence-user-page">
									<div class="user-page">
										<ul>
											<li><a href="#"><i class="pe-7s-flag"></i>Language</a></li>
										</ul>
									</div>
								</div>
							</div>

							<%
								CartDAO cart = (CartDAO) session.getAttribute("cart");
								if (cart == null) {
									cart = new CartDAO();
									session.setAttribute("cart", cart);
									session.setMaxInactiveInterval(10 * 60 * 60);
								}
							%>
							<div class="shopping-cart f-right">
								<a class="top-cart" href="#"><i class="pe-7s-cart"></i></a> <span><%=cart.countItems()%></span>
								<ul>
									<%
										for (Map.Entry<Long, Items> list : cart.getCartItems().entrySet()) {
									%>
									<li>
										<div class="cart-img-price">
											<div class="cart-img">
												<a href="#"><img
													src="assets/img/shop/product/<%=list.getValue().getProducts().getAnhChinh()%>"
													alt="" /></a>
											</div>
											<div class="cart-content">
												<h3>
													<a href="#"><%=list.getValue().getProducts().getTenSanPham()%></a>
												</h3>
												<%
													//xử lý giá bán
														DecimalFormat numformat = new DecimalFormat("#,###,###");
														double cost = list.getValue().getProducts().getGiaGoc();
														int discount = list.getValue().getProducts().getKhuyenMai();
														double total = cost - (cost * discount) / 100;
														String price_nb = numformat.format(total);
												%>
												<span class="cart-price"><%=price_nb%> (<%=list.getValue().getQuantity()%>)</span>
											</div>
											<div class="cart-del">
												<a
													href="HomeCartServlet?status=remove&id_product=<%=list.getKey()%>"><i
													class="pe-7s-close-circle"></i></a>
											</div>
										</div>
									</li>
									<%
										}
									%>
									<li>
										<p class="total">
											Total Amount: <span class="total-price"><%=cart.totalCart()%>
												$</span>
										</p>
									</li>
									<li>
										<%
											if (cart.countItems() != 0) {
										%>
										<p class="buttons">
											<a class="my-cart" href="cart.jsp">Check Cart</a> <a
												class="checkout" href="checkout.jsp">Payment</a>
										</p> <%
 	}
 %>
									</li>
								</ul>
							</div>
							<div class="main-menu f-right">
								<nav>
									<ul>
										<li><a href="Home">Home</a>
										<li><a href="HomeProductsServlet">Product</a>
											<ul class="dropdown">
												<!-- ** Đổ thể loại từ dữ liệu ra ** -->
												<%
													for (Category ds : category.getListCategory()) {
												%>
												<li><a
													href="HomeProductsServlet?id_category=<%=ds.getId()%>"><%=ds.getTenLoaiSanPham()%>
												</a></li>
												<%
													}
												%>
											</ul></li>
										<li><a href="about.jsp">About</a>
										<li><a href="contact.jsp">Contact</a></li>
										<li><a href="logout"> <i class="fas fa-angle-right"></i>
												<%=session.getAttribute("name")%></a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Xong tiêu đề -->
	<!-- Cài đặt xem trên thiết bị di động -->
	<div class="mobile-menu-area">
		<div class="container" style="background: #a0c7e4;">
			<div class="row">
				<div class="col-md-12">
					<div class="mobile-menu">
						<nav id="dropdown">
							<ul>
								<li><a class="active1" href="Home">Home</a></li>
								<li class="active1"><a class="active1"
									href="HomeProductsServlet">Product</a>
									<ul>
										<!-- ** Đổ thể loại từ dữ liệu ra ** -->
										<%
											for (Category ds : category.getListCategory()) {
										%>
										<li><a
											href="HomeProductsServlet?id_product=<%=ds.getId()%>"><%=ds.getTenLoaiSanPham()%>
										</a></li>
										<%
											}
										%>
									</ul></li>
								<li class="active1"><a class="active1" href="about.jsp">About</a>
								<li><a href="contact.jsp">Contact</a></li>
								<li><a href="logout"> <i class="fas fa-angle-right"></i>
										<%=session.getAttribute("name")%></a></li>


							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Xong cài đặt xem trên thiết bị di động -->

</body>
</html>