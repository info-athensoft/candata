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
<c:set var="demo_img_dir" value="/images/livedemo"/>
<c:set var="img_dir" value="/images"/>
<c:set var="livedemo_path_11" value="/livedemos-ecommerce-1/"/>
<c:set var="livedemo_path_12" value="/livedemos-ecommerce-1/"/>
<c:set var="livedemo_path_13" value="/livedemos-ecommerce-1/"/>
<c:set var="livedemo_path_21" value="/livedemos-ecommerce-1/"/>
<c:set var="livedemo_path_22" value="/livedemos-ecommerce-1/"/>
<c:set var="livedemo_path_23" value="/livedemos-ecommerce-1/"/>
<c:set var="livedemo_path_31" value="/livedemos-general-1/j"/>
<c:set var="livedemo_path_32" value="/livedemos-general-1/"/>
<c:set var="livedemo_path_33" value="http://www.sanjiaschool.org"/>
<!-- END page variables -->

<!-- i18n -->
<c:set var="loc" value="zh_CN"/>
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
		
		<title><spring:message code="head-title-index"/></title>

		<meta name="keywords" content="live demo, demo"/>
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
		
		<style>
		/* Page Header Custom - Create your Own */
		.page-header.custom-product {
			background-image: url(${demo_img_dir}/custom-header-bg.jpg);
			background-repeat: repeat;
			background-color: #999;
			border-top: 5px solid #888;
			padding: 0;
			overflow: hidden;
			
		}
		</style>

	</head>
	<body>
		<div class="body">
			<!-- header -->
			<jsp:include page="${inc_dir}/header_inc.jsp"></jsp:include>
			
			
			<div role="main" class="main">

				<section class="page-header custom-product">
					<div class="container">
						<div class="row">
							<div class="col-sm-7 py-4">
								<h1>Welcome to our <strong>Live Demos</strong></h1>
								<p class="lead">Here you may evaluate look and feel, visual effects, interactions,  functionalities and how the website works.</p>
								<a href="/support/contactus.html?lang=${loc}" target="_blank" class="btn btn-light btn-lg mb-5">Contact us Now!</a>
							</div>
							<div class="col-sm-5 align-items-end justify-content-end d-flex">
								<!-- <img class="img-fluid" alt="" src="${img_dir}/custom-header-bg.jpg"> -->
							</div>
						</div>
					</div>
				</section>
				
				<div class="row mt-5 counters counters-text-dark">
					<div class="col-lg-3 col-sm-6">
						<div class="counter appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="300">
							<i class="fa fa-user"></i>
							<strong data-to="318" data-append="+">0</strong>
							<label>Happy Clients</label>
							<p class="text-color-primary mb-5">They can’t be wrong</p>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6">
						<div class="counter appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="600">
							<i class="fa fa-desktop"></i>
							<strong data-to="9540">0</strong>
							<label>Page views per month</label>
							<p class="text-color-primary mb-5">Many more to come</p>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6">
						<div class="counter appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="900">
							<i class="fa fa-ticket"></i>
							<strong data-to="1016" data-append="+">0</strong>
							<label>Answered Questions</label>
							<p class="text-color-primary mb-5">Satisfaction guaranteed</p>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6">
						<div class="counter appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="1200">
							<i class="fa fa-clock-o"></i>
							<strong data-to="2544" data-append="+">0</strong>
							<label>Development Hours</label>
							<p class="text-color-primary mb-5">Well-designed right for you</p>
						</div>
					</div>
				</div>
				
				
				
				<section class="section section-no-border section-default m-0 pt-5" id="demos">
					<div class="container-fluid sample-item-container">
						<div class="row">
							<div class="col-lg-12 text-center">
								<h2 class="mt-2 mb-0"><strong>E-Commerce</strong> site demos</h2>
								<p class="lead">Full sites, product List, shopping cart, payment flow and more <span class="alternative-font text-4">... all live demos included!</span></p>
								<!-- 
								<a class="open-demo-options btn btn-3d btn-xl btn-quaternary mt-3 mb-2" href="#mainDemos">VIEW MAIN DEMO <i class="ml-3 fa fa-long-arrow-right"></i></a>
								 -->
							</div>
						</div>
				
						<div class="row mt-0 pt-4 sample-item-list" id="sampleItemList">
				
							<div class="col-md-6 col-lg-4 isotope-item text-center">
								<div class="sample-item">
									<a href="${livedemo_path_11}" target="_blank">
										<span class="sample-item-image-wrapper">
											<span class="sample-item-image" data-original="${img_dir}/livedemo/ecommerce-1.jpg" data-plugin-lazyload data-plugin-options="{'appearEffect': 'animated fadeIn'}"></span>
											<i class="fa fa-spinner fa-spin fa-fw"></i>
										</span>
										<span class="sample-item-description">
											<h5>E-Commerce 1</h5>
										</span>
									</a>
								</div>
							</div>
				
							<div class="col-md-6 col-lg-4 isotope-item text-center">
								<div class="sample-item">
									<a href="${livedemo_path_12}" target="_blank">
										<span class="sample-item-image-wrapper">
											<span class="sample-item-image" data-original="${img_dir}/demos/coming-soon.jpg" data-plugin-lazyload data-plugin-options="{'appearEffect': 'animated fadeIn'}"></span>
											<i class="fa fa-spinner fa-spin fa-fw"></i>
										</span>
										<span class="sample-item-description">
											<h5>E-Commerce 2</h5>
										</span>
									</a>
								</div>
							</div>
				
							<div class="col-md-6 col-lg-4 isotope-item text-center">
								<div class="sample-item">
									<a href="${livedemo_path_13}" target="_blank">
										<span class="sample-item-image-wrapper">
											<span class="sample-item-image" data-original="${img_dir}/demos/coming-soon.jpg" data-plugin-lazyload data-plugin-options="{'appearEffect': 'animated fadeIn'}"></span>
											<i class="fa fa-spinner fa-spin fa-fw"></i>
										</span>
										<span class="sample-item-description">
											<h5>Coming soon</h5>
										</span>
									</a>
								</div>
							</div>
						</div>
					</div>
					
					<hr class="invisible mt-5 mb-2"/>
					
					<div class="container-fluid sample-item-container">
						<div class="row">
							<div class="col-lg-12 text-center">
								<h2 class="mt-2 mb-0"><strong>Catalogue</strong> site demos</h2>
								<p class="lead">Full sites of product or service show, categories, item detail page, filters and more <span class="alternative-font text-4">... all live demos included!</span></p>
								<!-- 
								<a class="open-demo-options btn btn-3d btn-xl btn-quaternary mt-3 mb-2" href="#mainDemos">VIEW MAIN DEMO <i class="ml-3 fa fa-long-arrow-right"></i></a>
								 -->
							</div>
						</div>
				
						<div class="row mt-0 pt-4 sample-item-list" id="sampleItemList2">
				
							<div class="col-md-6 col-lg-4 isotope-item text-center">
								<div class="sample-item">
									<a href="${livedemo_path_21}" target="_blank">
										<span class="sample-item-image-wrapper">
											<span class="sample-item-image" data-original="${img_dir}/demos/coming-soon.jpg" data-plugin-lazyload data-plugin-options="{'appearEffect': 'animated fadeIn'}"></span>
											<i class="fa fa-spinner fa-spin fa-fw"></i>
										</span>
										<span class="sample-item-description">
											<h5>Catalog Site 1</h5>
										</span>
									</a>
								</div>
							</div>
				
							<div class="col-md-6 col-lg-4 isotope-item text-center">
								<div class="sample-item">
									<a href="${livedemo_path_22}" target="_blank">
										<span class="sample-item-image-wrapper">
											<span class="sample-item-image" data-original="${img_dir}/demos/coming-soon.jpg" data-plugin-lazyload data-plugin-options="{'appearEffect': 'animated fadeIn'}"></span>
											<i class="fa fa-spinner fa-spin fa-fw"></i>
										</span>
										<span class="sample-item-description">
											<h5>Catalog Site 2</h5>
										</span>
									</a>
								</div>
							</div>
				
							<div class="col-md-6 col-lg-4 isotope-item text-center">
								<div class="sample-item">
									<a href="${livedemo_path_23}" target="_blank">
										<span class="sample-item-image-wrapper">
											<span class="sample-item-image" data-original="${img_dir}/demos/coming-soon.jpg" data-plugin-lazyload data-plugin-options="{'appearEffect': 'animated fadeIn'}"></span>
											<i class="fa fa-spinner fa-spin fa-fw"></i>
										</span>
										<span class="sample-item-description">
											<h5>Catalog Site 3</h5>
										</span>
									</a>
								</div>
							</div>
						</div>
					</div>
					
					<hr class="invisible mt-5 mb-2"/>
					
					<div class="container-fluid sample-item-container">
						<div class="row">
							<div class="col-lg-12 text-center">
								<h2 class="mt-2 mb-0"><strong>General</strong> site demos</h2>
								<p class="lead">General sites include Business Image site, Company site, Personal site and other sites <span class="alternative-font text-4">... all live demos included!</span></p>
								<!-- 
								<a class="open-demo-options btn btn-3d btn-xl btn-quaternary mt-3 mb-2" href="#mainDemos">VIEW MAIN DEMO <i class="ml-3 fa fa-long-arrow-right"></i></a>
								 -->
							</div>
						</div>
				
						<div class="row mt-0 pt-4 sample-item-list" id="sampleItemList3">
				
							<div class="col-md-6 col-lg-4 isotope-item text-center">
								<div class="sample-item">
									<a href="${livedemo_path_31}" target="_blank">
										<span class="sample-item-image-wrapper">
											<span class="sample-item-image" data-original="${demo_img_dir}/cv-1.jpg" data-plugin-lazyload data-plugin-options="{'appearEffect': 'animated fadeIn'}"></span>
											<i class="fa fa-spinner fa-spin fa-fw"></i>
										</span>
										<span class="sample-item-description">
											<h5>Resume one-page site 1</h5>
										</span>
									</a>
								</div>
							</div>
				
							<div class="col-md-6 col-lg-4 isotope-item text-center">
								<div class="sample-item">
									<a href="${livedemo_path_32}" target="_blank">
										<span class="sample-item-image-wrapper">
											<span class="sample-item-image" data-original="${img_dir}/demos/coming-soon.jpg" data-plugin-lazyload data-plugin-options="{'appearEffect': 'animated fadeIn'}"></span>
											<i class="fa fa-spinner fa-spin fa-fw"></i>
										</span>
										<span class="sample-item-description">
											<h5>Business site 1</h5>
										</span>
									</a>
								</div>
							</div>
				
							<div class="col-md-6 col-lg-4 isotope-item text-center">
								<div class="sample-item">
									<a href="${livedemo_path_33}" target="_blank">
										<span class="sample-item-image-wrapper">
											<span class="sample-item-image" data-original="${img_dir}/livedemo/company-1.jpg" data-plugin-lazyload data-plugin-options="{'appearEffect': 'animated fadeIn'}"></span>
											<i class="fa fa-spinner fa-spin fa-fw"></i>
										</span>
										<span class="sample-item-description">
											<h5>Company site 1</h5>
										</span>
									</a>
								</div>
							</div>
						</div>
					</div>
					
				</section>
				
				<hr class="invisible mt-5 mb-2"/>
				
								
				<section class="section section-custom-map">
					<section class="section section-default section-footer">
						<div class="container">
							<div class="row">
								<div class="col-md-9 col-lg-10">
									<div class="call-to-action-content content-align-center">
										<h3>Athensoft is <strong>everything</strong> you need to create an <strong>awesome</strong> website!</h3>
										<p class="mb-0">We are building up <strong>stunning</strong>, <strong>powerful</strong>, <strong>stable</strong> sites for you!</p>
									</div>
								</div>
								<div class="col-md-3 col-lg-2">
									<div class="call-to-action-content">
										<p>&nbsp;</p>
										<a href="/support/contactus.html?lang=${loc}" target="_blank" class="btn btn-lg btn-primary">Talk to us now!</a>
									</div>
								</div>
							</div>
						</div>
					</section>
				</section>
				
				<!-- 
				<section class="call-to-action call-to-action-default content-align-center call-to-action-in-footer">
					<div class="container">
						<div class="row">
							<div class="col-md-12 col-lg-12">
								<div class="call-to-action-content">
									<h3>Informatique Athensoft is <strong>everything</strong> you need to create an <strong>awesome</strong> website!</h3>
									<p class="mb-0">We are building up <strong>stunning</strong>, <strong>powerful</strong>, <strong>stable</strong> sites for you!</p>
								</div>
							</div>
							<div class="col-md-12 col-lg-12">
								<div class="call-to-action-content">
									<p>&nbsp;</p>
									<a href="/support/contactus.html?lang=${loc}" target="_blank" class="btn btn-lg btn-primary">Talk to us now!</a>
								</div>
							</div>
						</div>
					</div>
				</section>
				 -->

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
		
		<!-- Examples -->
		<script src="${webapp_name}/js/examples/examples.demos.js"></script>
		<script src="${webapp_name}/js/examples/examples.demos2.js"></script>
		<script src="${webapp_name}/js/examples/examples.demos3.js"></script>

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