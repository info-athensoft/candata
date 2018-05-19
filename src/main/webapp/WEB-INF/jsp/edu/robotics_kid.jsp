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
<c:set var="img_dir" value="/images"></c:set>
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
		
		<title><spring:message code="head-title-edu"/></title>

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
									<li><a href="${webapp_name}/index.html?lang=${loc}"><spring:message code="menu-home"/></a></li>
									<li class="active"><a href="#"><spring:message code="menu-edu"/></a></li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<h1><spring:message code="page-title-edu-robotics"/></h1>
							</div>
						</div>
					</div>
				</section>
			
				<div class="container">

					<div class="row">
						<div class="col-lg-3 order-2 order-lg-1">
							<aside class="sidebar">

								<h4 class="heading-primary"><spring:message code="graphic-sidebar-title-nav"/></h4>

								<ul class="nav nav-list flex-column mb-4 sort-source">
									<li class="nav-item"><a class="nav-link" href="#"><spring:message code="robotics-title-2"/></a></li>
									<li class="nav-item"><a class="nav-link" href="#"><spring:message code="robotics-title-9"/></a></li>
									<li class="nav-item"><a class="nav-link" href="#"><spring:message code="robotics-title-3"/></a></li>
									<li class="nav-item"><a class="nav-link" href="#"><spring:message code="robotics-title-4"/></a></li>
									<li class="nav-item"><a class="nav-link" href="/edu/robotics/tutorial/1.html?lang=${loc}"><spring:message code="robotics-title-5"/> - 1</a></li>
									<li class="nav-item"><a class="nav-link" href="/edu/robotics/tutorial/2.html?lang=${loc}"><spring:message code="robotics-title-5"/> - 2</a></li>
									<li class="nav-item"><a class="nav-link" href="#"><spring:message code="robotics-title-8"/></a></li>
									<li class="nav-item"><a class="nav-link" href="#"><spring:message code="robotics-title-6"/></a></li>
									<li class="nav-item"><a class="nav-link" href="#"><spring:message code="robotics-title-7"/></a></li>
								</ul>

								<hr class="invisible mt-5 mb-2">

							</aside>
						</div>
						
						<div class="col-lg-9 order-1 order-lg-2">
						
							<!-- overview -->
							<h3><spring:message code="robotics-title-1"/></h3>
							<div class="row">
								<div class="col">
									<p class="">
										<spring:message code="robotics-content-1"/>
									</p>
									<!-- 
									<p class="">
										<spring:message code="graphic-title-1-1a"/>
										<br/>
										<a href="#graphic-service-catalog"><spring:message code="graphic-service-catalog"/></a>,&nbsp;&nbsp;
										<a href="#graphic-service-brochure"><spring:message code="graphic-service-brochure"/></a>,&nbsp;&nbsp;
										<a href="#graphic-service-flyer"><spring:message code="graphic-service-flyer"/></a>,&nbsp;&nbsp;
										<a href="#graphic-service-menu"><spring:message code="graphic-service-menu"/></a>,&nbsp;&nbsp;
										<a href="#graphic-service-coupon"><spring:message code="graphic-service-coupon"/></a>,&nbsp;&nbsp;
									</p>
									 -->
									
								</div>
							</div>

							
							
							<!-- service list -->
							<hr class="invisible mt-6 mb-4" id=""/>
							
							<h3><spring:message code="robotics-title-2"/></h3>
							
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<!-- <iframe src="https://youtu.be/HsLqiShzP0k" width="1280" height="720" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> -->
												<iframe width="854" height="480" src="https://www.youtube.com/embed/jh9u_B42ILo" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											
											<div>
												<label><strong>Lego EV3 Introduction</strong></label>
												<label>New Planet School, Published on Sep 29, 2013</label>
												<p></p>
											</div> 
										</article>
									</div>
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<iframe width="854" height="480" src="https://www.youtube.com/embed/uw99QcYdRXY" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											<div>
												<label><strong>Lego EV3 Brick</strong></label>
												<label>New Planet School, Published on Oct 7, 2013</label>
												<p></p>
											</div> 
										</article>
									</div>
									
								</div>
							</div>
							
							
							<!-- 1 -->
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<!-- <iframe src="https://youtu.be/HsLqiShzP0k" width="1280" height="720" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> -->
												<iframe width="854" height="480" src="https://www.youtube.com/embed/HsLqiShzP0k" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											
											<div>
												<label><strong>Make your First Lego Mindstorms EV3 Robot - GenBot</strong></label>
												<label>Pir Arkam, Published on Nov 25, 2014</label>
												<p></p>
											</div> 
										</article>
									</div>
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<iframe width="854" height="480" src="https://www.youtube.com/embed/EIJITDSfwxY" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											
											<div>
												<label><strong>How to make Lego Mindstorms EV3 Robot - BotMobile</strong></label>
												<label>Pir Arkam, Published on Nov 13, 2016</label>
												<p></p>
											</div> 
										</article>
									</div>
									
								</div>
							</div>
							
							<!-- 2 -->
							<hr class="invisible mt-4 mb-2" id="graphic-service-brochure"/>
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<iframe width="854" height="480" src="https://www.youtube.com/embed/cE9Nv7ZrlGg" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											
											<div>
												<label><strong>LEGO Mindstorms EV3 Core Set Whats in the Box</strong></label>
												<label>Darren Wilson, Published on Sep 12, 2013</label>
												<p></p>
											</div> 
										</article>
									</div>
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<iframe width="854" height="480" src="https://www.youtube.com/embed/-gEJtLyX2Hw" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											
											<div>
												<label><strong>LEGO 31313, MINDSTORMS EV3 - Unboxing</strong></label>
												<label>TechnicBRICKs, Published on Aug 27, 2013</label>
												<p></p>
											</div> 
										</article>
									</div>
								</div>
							</div>
							
							<!-- 4 -->
							<hr class="invisible mt-4 mb-2" id=""/>
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<iframe width="854" height="480" src="https://www.youtube.com/embed/X3euRzWXwH0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											
											<div>
												<label><strong>Lego Expansion Set 45560 Unboxing</strong></label>
												<label>Marius' Creations, Published on Jul 25, 2014</label>
												<p></p>
											</div> 
										</article>
									</div>
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<iframe width="854" height="480" src="https://www.youtube.com/embed/vpAQ3ho4__w" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											
											<div>
												<label><strong>LEGO Education 45544 Mindstorms EV3 Unboxing</strong></label>
												<label>The Technic Gear LEGO Reviews, Published on Mar 13, 2014</label>
												<p></p>
											</div> 
										</article>
									</div>
								</div>
							</div>
							
							
							<hr class="invisible mt-4 mb-2" id=""/>
														
							<!-- connections -->
							<h3><spring:message code="robotics-title-9"/></h3>
							<!-- 1 -->
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<iframe width="854" height="480" src="https://www.youtube.com/embed/nAUwe5fRsLw" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											<div>
												<label><strong>Tutorial on Connecting LEGO Mindstorms EV3 to WiFi</strong></label>
												<label>Christoph Bartneck, Published on Jun 2, 2016</label>
												<p></p>
											</div> 
										</article>
									</div>
									
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<iframe width="854" height="480" src="https://www.youtube.com/embed/4RlJ2gwM610" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											<div>
												<label><strong>EV3 Bluetooth Tutorial</strong></label>
												<label>educationtutorials, Published on Feb 18, 2016</label>
												<p></p>
											</div> 
										</article>
									</div>
								</div>
							</div>
							
							<hr class="invisible mt-4 mb-2" id=""/>
														
							<!-- sensors -->
							<h3><spring:message code="robotics-title-3"/></h3>
							<!-- 1 -->
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<iframe width="854" height="480" src="https://www.youtube.com/embed/S5SjhfVPbNs" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											
											<div>
												<label><strong>Getting Started With The LEGO Mindstorms EV3 Gyro Sensor</strong></label>
												<label>Darren Wilson, Published on Sep 12, 2013</label>
												<p></p>
											</div> 
										</article>
									</div>
									
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<iframe width="854" height="480" src="https://www.youtube.com/embed/wmwfiPomPGk" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											
											<div>
												<label><strong>Getting Started With The LEGO Mindstorms EV3 Ultrasonic Sensor</strong></label>
												<label>Darren Wilson, Published on Sep 12, 2013</label>
												<p></p>
											</div> 
										</article>
									</div>
								</div>
							</div>
							
							
							<!-- 2 -->
							<hr class="invisible mt-4 mb-2" id=""/>
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<iframe width="854" height="480" src="https://www.youtube.com/embed/8wzXIhEF7V4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											
											<div>
												<label><strong>Getting Started With The LEGO Mindstorms EV3 Color Sensor</strong></label>
												<label>Darren Wilson, Published on Sep 12, 2013</label>
												<p></p>
											</div> 
										</article>
									</div>
									
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<iframe width="854" height="480" src="https://www.youtube.com/embed/YWOThIuvU4U" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											
											<div>
												<label><strong>Getting Started With The LEGO Mindstorms EV3 Touch Sensors</strong></label>
												<label>Darren Wilson, Published on Sep 12, 2013</label>
												<p></p>
											</div> 
										</article>
									</div>
								</div>
							</div>
							
							<!-- 3 -->
							<hr class="invisible mt-4 mb-2" id=""/>
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<iframe width="854" height="480" src="https://www.youtube.com/embed/lTrtXxk_dPg" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											
											<div>
												<label><strong>Lego EV3 Color Sensor - Follow a Line</strong></label>
												<label>Kim G, Published on Mar 2, 2016</label>
												<p></p>
											</div> 
										</article>
									</div>
									
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<iframe width="854" height="480" src="https://www.youtube.com/embed/lTrtXxk_dPg" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											
											<div>
												<label><strong>Lego EV3 Color Sensor - Follow a Line</strong></label>
												<label>Kim G, Published on Mar 2, 2016</label>
												<p></p>
											</div> 
										</article>
									</div>
								</div>
							</div>
							
							<hr class="invisible mt-4 mb-2" id=""/>
							
							<!-- components -->
							<h3><spring:message code="robotics-title-4"/></h3>
							<!-- 5 -->
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<!-- <iframe src="https://youtu.be/HsLqiShzP0k" width="1280" height="720" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> -->
												<iframe width="1280" height="720" src="https://www.youtube.com/embed/vv5X3zzkBk4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											
											<div>
												<label><strong>Getting Started Programming The LEGO Mindstorms EV3 Motor Blocks</strong></label>
												<label>Darren Wilson, Published on Sep 12, 2013</label>
												<p></p>
											</div> 
										</article>
									</div>
									
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<iframe width="854" height="480" src="https://www.youtube.com/embed/wmwfiPomPGk" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											
											<div>
												<label><strong>Getting Started With The LEGO Mindstorms EV3 Ultrasonic Sensor</strong></label>
												<label>Darren Wilson, Published on Sep 12, 2013</label>
												<p></p>
											</div> 
										</article>
									</div>
								</div>
							</div>
							
							
							<hr class="short" id=""/>
							
							<!-- basic programming -->
							<h3><spring:message code="robotics-title-8"/></h3>
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<iframe width="854" height="480" src="https://www.youtube.com/embed/CeCM_Z46Ys4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											
											<div>
												<label><strong>LEGO EV3 Programming Basics</strong></label>
												<label>Mr. Hauser's Science and Technology Classes, Published on Sep 18, 2013</label>
												<p></p>
											</div> 
										</article>
									</div>
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<iframe width="854" height="480" src="https://www.youtube.com/embed/CeCM_Z46Ys4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											
											<div>
												<label><strong>LEGO EV3 Programming Basics</strong></label>
												<label>Mr. Hauser's Science and Technology Classes, Published on Sep 18, 2013</label>
												<p></p>
											</div> 
										</article>
									</div>
								</div>
							</div>
							
							
							<hr class="short" id=""/>
							
							<!-- advanced programming -->
							<h3><spring:message code="robotics-title-6"/></h3>
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<iframe width="854" height="480" src="https://www.youtube.com/embed/kyfbYv6eZQQ" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											<div>
												<label><strong>Programming Lego Mindstorms robots with Python</strong></label>
												<label>PyCon Australia, Published on Aug 6, 2017</label>
												<p></p>
											</div> 
										</article>
									</div>
									
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<iframe width="854" height="480" src="https://www.youtube.com/embed/c1OvHQfrgls" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											<div>
												<label><strong>Ev3 with python | Part 1</strong></label>
												<label>Firestone Productions, Published on Aug 21, 2017</label>
												<p></p>
											</div> 
										</article>
									</div>
								</div>
							</div>
							
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<iframe width="854" height="480" src="https://www.youtube.com/embed/hYd_62rD6VE" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											<div>
												<label><strong>LeJOS Java Programming - LEGO Mindstorm EV3 (Part One)</strong></label>
												<label>Justin Fischer, Published on May 26, 2015</label>
												<p></p>
											</div> 
										</article>
									</div>
									
									<div class="col-lg-6">
										<article class="">
											<div class="post-video">
												<iframe width="854" height="480" src="https://www.youtube.com/embed/ycOA4wnvAyM" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
											</div>
											<div>
												<label><strong>leJOS Tutorial 1 - Installing leJOS framework and Eclipse</strong></label>
												<label></label>
												<p></p>
											</div> 
										</article>
									</div>
								</div>
							</div>
							
							
							<!-- tutorials -->
							<h3><spring:message code="robotics-title-5"/></h3>
							
							<div class="row">
								<div class="col-lg-5">
									<article class="">
										<div class="post-video">
											<iframe width="1289" height="735" src="https://www.youtube.com/embed/9NJZ-bpEH50?list=PLzr5fRV1AGV8UIx66V7IYhbQPNkYrJnj7" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
										</div>
									</article>
								</div>
								
								<div class="col-lg-7">
									<article class="">
										<div>
											<label><strong>Lego Mindstorms EV3 Robotics Lesson 1 - Sorting out the kit</strong></label>
											<label>Magic Monk, Published on Dec 13, 2014</label>
											<div>
												<a href="/edu/robotics/tutorial/1.html?lang=${loc}" target="_blank" class="btn btn-primary">View All</a>
											</div>
										</div> 
									</article>
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-5">
									<article class="">
										<div class="post-video">
											<iframe width="854" height="480" src="https://www.youtube.com/embed/IuHaIE-auLQ" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
										</div>
									</article>
								</div>
								
								<div class="col-lg-7">
									<article class="">
										<div>
											<label><strong>Mindstorms EV3 Tutorial #1: Getting your robot to move</strong></label>
											<label></label>
											<div>
												<a href="/edu/robotics/tutorial/2.html?lang=${loc}" target="_blank" class="btn btn-primary">View All</a>
											</div>
										</div> 
									</article>
								</div>
							</div>
							
							
							
							
							<hr class="invisible mt-2 mb-4">
							
							<!-- call-to-action -->
							<section class="call-to-action featured featured-primary mb-5">
								<div class="col-sm-9 col-lg-9">
									<div class="call-to-action-content">
										<p class="mb-0"><spring:message code="common-cta-title-2"/></p>
									</div>
								</div>
								<div class="col-sm-3 col-lg-3">
									<div class="call-to-action-btn">
										<a href="/support/contactus.html?lang=${loc}" target="_blank" class="btn btn-lg btn-primary"><spring:message code="common-cta-btn-2"/></a>
									</div>
								</div>
							</section>
							<!-- END call-to-action -->
							
							
							
							
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