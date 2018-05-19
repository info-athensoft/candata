<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- global variables settings -->
<c:set var="webapp_name" value=""/>
<!-- END global variables settings -->

<!-- page variables  -->
<c:set var="inc_dir" value="../inc"/>
<c:set var="img_dir" value="../images"></c:set>
<!-- END page variables -->

<!-- i18n -->
<c:set var="loc" value="en_US"/>
<c:if test="${!(empty param.lang)}">
  <c:set var="loc" value="${param.lang}"/>
</c:if>
<fmt:setLocale value="${loc}" />
<!-- END i18n -->

<!DOCTYPE html>
<html>
	<head>
		<!-- Global site tag (gtag.js) - Google Analytics -->
		<script async src="https://www.googletagmanager.com/gtag/js?id=UA-113930092-1"></script>
		<script>
		  window.dataLayer = window.dataLayer || [];
		  function gtag(){dataLayer.push(arguments);}
		  gtag('js', new Date());
		
		  gtag('config', 'UA-113930092-1');
		</script>
		
		<!-- Basic -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">	
		
		<!-- Bing tracking -->	
		<meta name="msvalidate.01" content="A726798BCB4A23B609BF80FE1E7D77D8" />
		
		<title><spring:message code="head-title-adogo"/></title>

		<meta name="keywords" content="" />
		<meta name="description" content="">
		<meta name="author" content="Informatique Athensoft">

		<!-- Favicon -->
		<link rel="shortcut icon" href="${img_dir}/icon/favicon.ico" type="image/x-icon" />
		<link rel="apple-touch-icon" href="${img_dir}/icon/apple-touch-icon.png">

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">

		<!-- Web Fonts  -->
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CShadows+Into+Light" rel="stylesheet" type="text/css">

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="${webapp_name}/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="${webapp_name}/vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="${webapp_name}/vendor/animate/animate.min.css">
		<link rel="stylesheet" href="${webapp_name}/vendor/simple-line-icons/css/simple-line-icons.min.css">
		<link rel="stylesheet" href="${webapp_name}/vendor/owl.carousel/assets/owl.carousel.min.css">
		<link rel="stylesheet" href="${webapp_name}/vendor/owl.carousel/assets/owl.theme.default.min.css">
		<link rel="stylesheet" href="${webapp_name}/vendor/magnific-popup/magnific-popup.min.css">

		<!-- Theme CSS -->
		<link rel="stylesheet" href="${webapp_name}/css/theme.css">
		<link rel="stylesheet" href="${webapp_name}/css/theme-elements.css">
		<link rel="stylesheet" href="${webapp_name}/css/theme-blog.css">
		<link rel="stylesheet" href="${webapp_name}/css/theme-shop.css">

		<!-- Current Page CSS -->
		<link rel="stylesheet" href="${webapp_name}/vendor/rs-plugin/css/settings.css">
		<link rel="stylesheet" href="${webapp_name}/vendor/rs-plugin/css/layers.css">
		<link rel="stylesheet" href="${webapp_name}/vendor/rs-plugin/css/navigation.css">
		
		<!-- Demo CSS -->


		<!-- Skin CSS -->
		<link rel="stylesheet" href="${webapp_name}/css/skins/default.css"> 

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="${webapp_name}/css/custom.css">

		<!-- Head Libs -->
		<script src="${webapp_name}/vendor/modernizr/modernizr.min.js"></script>

	</head>
	<body>
		<div class="body">
			<!-- header -->
			<jsp:include page="${inc_dir}/header_inc.jsp"></jsp:include>

			
			<div role="main" class="main">

				<section class="page-header">
					<div class="container">
						<div class="row">
							<div class="col">
								<ul class="breadcrumb">
									<li><a href="#">Home</a></li>
									<li class="active">Pages</li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<h1><spring:message code="page-title-adogo-register"/></h1>
							</div>
						</div>
					</div>
				</section>
			
							
				<div class="container">

					<h2>Our <strong>Services</strong></h2>

					<div class="row align-items-center">
						<div class="col-lg-10">
							<p class="lead">
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum pellentesque imperdiet. Nulla lacinia iaculis nulla non pulvinar. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut eu risus enim, ut pulvinar lectus. Sed hendrerit nibh metus.
							</p>
						</div>
						<div class="col-lg-2">
							<a href="#" class="btn btn-lg btn-primary">Contact Us!</a>
						</div>
					</div>

					<hr>
					
					
					
					
					<div class="featured-boxes">
						<div class="row">
							<div class="col-lg-3 col-sm-6">
								<div class="featured-box featured-box-primary featured-box-effect-1 mt-0 mt-lg-5">
									<div class="box-content">
										<i class="icon-featured fa fa-user"></i>
										<h4 class="text-uppercase">Loved by Customers</h4>
										<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus.</p>
										<p><a href="/" class="lnk-primary learn-more">Learn More <i class="fa fa-angle-right"></i></a></p>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6">
								<div class="featured-box featured-box-secondary featured-box-effect-1 mt-0 mt-lg-5">
									<div class="box-content">
										<i class="icon-featured fa fa-book"></i>
										<h4 class="text-uppercase">Well Documented</h4>
										<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus.</p>
										<p><a href="/" class="lnk-secondary learn-more">Learn more <i class="fa fa-angle-right"></i></a></p>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6">
								<div class="featured-box featured-box-tertiary featured-box-effect-1 mt-0 mt-lg-5">
									<div class="box-content">
										<i class="icon-featured fa fa-trophy"></i>
										<h4 class="text-uppercase">Winner</h4>
										<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus.</p>
										<p><a href="/" class="lnk-tertiary learn-more">Learn more <i class="fa fa-angle-right"></i></a></p>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6">
								<div class="featured-box featured-box-quaternary featured-box-effect-1 mt-0 mt-lg-5">
									<div class="box-content">
										<i class="icon-featured fa fa-cogs"></i>
										<h4 class="text-uppercase">Customizable</h4>
										<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus. </p>
										<p><a href="/" class="lnk-quaternary learn-more">Learn more <i class="fa fa-angle-right"></i></a></p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<hr>

					<div class="row pt-4">
						<div class="col-lg-8">
							<h2>Our <strong>Features</strong></h2>
							<div class="row">
								<div class="col-sm-6">
									<div class="feature-box">
										<div class="feature-box-icon">
											<i class="fa fa-group"></i>
										</div>
										<div class="feature-box-info">
											<h4 class="heading-primary mb-0">Customer Support</h4>
											<p class="mb-4">Lorem ipsum dolor sit amet, consectetur.</p>
										</div>
									</div>
									<div class="feature-box">
										<div class="feature-box-icon">
											<i class="fa fa-file"></i>
										</div>
										<div class="feature-box-info">
											<h4 class="heading-primary mb-0">HTML5 / CSS3 / JS</h4>
											<p class="mb-4">Lorem ipsum dolor sit amet,.</p>
										</div>
									</div>
									<div class="feature-box">
										<div class="feature-box-icon">
											<i class="fa fa-google-plus"></i>
										</div>
										<div class="feature-box-info">
											<h4 class="heading-primary mb-0">500+ Google Fonts</h4>
											<p class="mb-4">Lorem ipsum dolor sit amet, consectetur.</p>
										</div>
									</div>
									<div class="feature-box">
										<div class="feature-box-icon">
											<i class="fa fa-adjust"></i>
										</div>
										<div class="feature-box-info">
											<h4 class="heading-primary mb-0">Colors</h4>
											<p class="mb-4">Lorem ipsum dolor sit amet, consectetur.</p>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="feature-box">
										<div class="feature-box-icon">
											<i class="fa fa-film"></i>
										</div>
										<div class="feature-box-info">
											<h4 class="heading-primary mb-0">Sliders</h4>
											<p class="mb-4">Lorem ipsum dolor sit amet, consectetur.</p>
										</div>
									</div>
									<div class="feature-box">
										<div class="feature-box-icon">
											<i class="fa fa-user"></i>
										</div>
										<div class="feature-box-info">
											<h4 class="heading-primary mb-0">Icons</h4>
											<p class="mb-4">Lorem ipsum dolor sit amet, consectetur.</p>
										</div>
									</div>
									<div class="feature-box">
										<div class="feature-box-icon">
											<i class="fa fa-bars"></i>
										</div>
										<div class="feature-box-info">
											<h4 class="heading-primary mb-0">Buttons</h4>
											<p class="mb-4">Lorem ipsum dolor sit, consectetur.</p>
										</div>
									</div>
									<div class="feature-box">
										<div class="feature-box-icon">
											<i class="fa fa-desktop"></i>
										</div>
										<div class="feature-box-info">
											<h4 class="heading-primary mb-0">Lightbox</h4>
											<p class="mb-4">Lorem sit amet, consectetur.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<h2>and more...</h2>

							<div class="accordion" id="accordion">
								<div class="card card-default">
									<div class="card-header">
										<h4 class="card-title m-0">
											<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
												<i class="fa fa-usd"></i>
												Pricing Tables
											</a>
										</h4>
									</div>
									<div id="collapseOne" class="collapse show">
										<div class="card-body">
											Donec tellus massa, tristique sit amet condim vel, facilisis quis sapien. Praesent id enim sit amet odio vulputate eleifend in in tortor.
										</div>
									</div>
								</div>
								<div class="card card-default">
									<div class="card-header">
										<h4 class="card-title m-0">
											<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
												<i class="fa fa-comment"></i>
												Contact Forms
											</a>
										</h4>
									</div>
									<div id="collapseTwo" class="collapse">
										<div class="card-body">
											Donec tellus massa, tristique sit amet condimentum vel, facilisis quis sapien.
										</div>
									</div>
								</div>
								<div class="card card-default">
									<div class="card-header">
										<h4 class="card-title m-0">
											<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
												<i class="fa fa-laptop"></i>
												Portfolio Pages
											</a>
										</h4>
									</div>
									<div id="collapseThree" class="collapse">
										<div class="card-body">
											Donec tellus massa, tristique sit amet condimentum vel, facilisis quis sapien.
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<hr class="tall">

					<div class="row justify-content-around mb-5">
						<div class="col-sm-7">
							<h2>Premium <strong>Features</strong></h2>
							<p class="lead">
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur imperdiet hendrerit volutpat. Sed in nunc nec ligula consectetur mollis in vel justo. Vestibulum ante ipsum primis in faucibus orci.
							</p>
							<p class="mt-4">
								 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur imperdiet hendrerit volutpat. Sed in nunc nec ligula consectetur mollis in vel justo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent scelerisque volutpat turpis, eu hendrerit enim scel.
							</p>
						</div>
						<div class="col-sm-4 mt-4">
							<img class="img-fluid mt-5" src="${img_dir}/graphic/device.png" alt="">
						</div>
					</div>

				</div>
			
			</div>
			
			<!-- footer -->
			<jsp:include page="${inc_dir}/footer_inc.jsp"></jsp:include>
			<!-- END footer -->
	
			</div>

		<!-- Vendor -->
		<script src="${webapp_name}/vendor/jquery/jquery.min.js"></script>
		<script src="${webapp_name}/vendor/jquery.appear/jquery.appear.min.js"></script>
		<script src="${webapp_name}/vendor/jquery.easing/jquery.easing.min.js"></script>
		<script src="${webapp_name}/vendor/jquery-cookie/jquery-cookie.min.js"></script>
		<script src="${webapp_name}/vendor/popper/umd/popper.min.js"></script>
		<script src="${webapp_name}/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="${webapp_name}/vendor/common/common.min.js"></script>
		<script src="${webapp_name}/vendor/jquery.validation/jquery.validation.min.js"></script>
		<script src="${webapp_name}/vendor/jquery.easy-pie-chart/jquery.easy-pie-chart.min.js"></script>
		<script src="${webapp_name}/vendor/jquery.gmap/jquery.gmap.min.js"></script>
		<script src="${webapp_name}/vendor/jquery.lazyload/jquery.lazyload.min.js"></script>
		<script src="${webapp_name}/vendor/isotope/jquery.isotope.min.js"></script>
		<script src="${webapp_name}/vendor/owl.carousel/owl.carousel.min.js"></script>
		<script src="${webapp_name}/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
		<script src="${webapp_name}/vendor/vide/vide.min.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="${webapp_name}/js/theme.js"></script>
		
		<!-- Current Page Vendor and Views -->
		<script src="${webapp_name}/vendor/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
		<script src="${webapp_name}/vendor/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
		
		<!-- Theme Custom -->
		<script src="${webapp_name}/js/custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="${webapp_name}/js/theme.init.js"></script>

		<!-- Google Analytics: Change UA-XXXXX-X to be your site's ID. Go to http://www.google.com/analytics/ for more information.
		<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		
			ga('create', 'UA-12345678-1', 'auto');
			ga('send', 'pageview');
		</script>
		 -->

	</body>
</html>