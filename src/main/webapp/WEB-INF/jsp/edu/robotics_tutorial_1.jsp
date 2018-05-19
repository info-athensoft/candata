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
							<h3><spring:message code="robotics-tutorial-title-1"/></h3>
							<div class="row">
								<div class="col">
									<p class="">
										<spring:message code="robotics-tutorial-content-1"/>
									</p>
									
								</div>
							</div>

							
							
							<hr class="invisible mt-6 mb-4" id=""/>
							
							<!-- tutorials -->
							<h3><spring:message code="robotics-title-5"/> 1 - Lego Mindstorms EV3 Robotics Lesson</h3>
							
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
											<p></p>
										</div> 
									</article>
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-5">
									<article class="">
										<div class="post-video">
											<iframe width="1289" height="735" src="https://www.youtube.com/embed/rWSeTtSOy68?list=PLzr5fRV1AGV8UIx66V7IYhbQPNkYrJnj7" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
										</div>
									</article>
								</div>
								
								<div class="col-lg-7">
									<article class="">
										<div>
											<label><strong>Lego Mindstorms EV3 Robotics Lesson 2 - Explanation of input and output</strong></label>
											<label>Magic Monk, Published on Dec 14, 2014</label>
											<p></p>
										</div> 
									</article>
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-5">
									<article class="">
										<div class="post-video">
											<iframe width="854" height="480" src="https://www.youtube.com/embed/6e2Z87KAzMw?list=PLzr5fRV1AGV8UIx66V7IYhbQPNkYrJnj7" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
										</div>
									</article>
								</div>
								
								<div class="col-lg-7">
									<article class="">
										<div>
											<label><strong>Lego Mindstorms EV3 Robotics Lesson 3 - On-brick programming - Move block / Wait for x seconds block</strong></label>
											<label>Magic Monk, Published on Dec 14, 2014</label>
											<p></p>
										</div> 
									</article>
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-5">
									<article class="">
										<div class="post-video">
											<iframe width="854" height="480" src="https://www.youtube.com/embed/60U4DfwhELs?list=PLzr5fRV1AGV8UIx66V7IYhbQPNkYrJnj7" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
										</div>
									</article>
								</div>
								
								<div class="col-lg-7">
									<article class="">
										<div>
											<label><strong>Lego Mindstorms EV3 Robotics Lesson 4 - Build a robot in 5 minutes</strong></label>
											<label>Magic Monk, Published on Dec 15, 2014</label>
											<p></p>
										</div> 
									</article>
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-5">
									<article class="">
										<div class="post-video">
											<iframe width="854" height="480" src="https://www.youtube.com/embed/PpQhir1d4zY?list=PLzr5fRV1AGV8UIx66V7IYhbQPNkYrJnj7" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
										</div>
									</article>
								</div>
								
								<div class="col-lg-7">
									<article class="">
										<div>
											<label><strong>Lego Mindstorms EV3 Robotics Lesson 5 - Transfer a simple program from PC to robot</strong></label>
											<label>Magic Monk, Published on Dec 15, 2014</label>
											<p></p>
										</div> 
									</article>
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-5">
									<article class="">
										<div class="post-video">
											<iframe width="854" height="480" src="https://www.youtube.com/embed/aNro_0R4854?list=PLzr5fRV1AGV8UIx66V7IYhbQPNkYrJnj7" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
										</div>
									</article>
								</div>
								
								<div class="col-lg-7">
									<article class="">
										<div>
											<label><strong>Lego Mindstorms EV3 Robotics Lesson 6 - Loops</strong></label>
											<label>Magic Monk, Published on Dec 16, 2014</label>
											<p></p>
										</div> 
									</article>
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-5">
									<article class="">
										<div class="post-video">
											<iframe width="854" height="480" src="https://www.youtube.com/embed/OYGykxZUsu4?list=PLzr5fRV1AGV8UIx66V7IYhbQPNkYrJnj7" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
										</div>
									</article>
								</div>
								
								<div class="col-lg-7">
									<article class="">
										<div>
											<label><strong>Lego Mindstorms EV3 Robotics Lesson 7 - Wait Until block and Ultrasonic sensor</strong></label>
											<label>Magic Monk, Published on Dec 16, 2014</label>
											<p></p>
										</div> 
									</article>
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-5">
									<article class="">
										<div class="post-video">
											<iframe width="854" height="480" src="https://www.youtube.com/embed/EaykkCvQA2g?list=PLzr5fRV1AGV8UIx66V7IYhbQPNkYrJnj7" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
										</div>
									</article>
								</div>
								
								<div class="col-lg-7">
									<article class="">
										<div>
											<label><strong>Lego Mindstorms EV3 Robotics Lesson 8 - Looping combined with Wait until</strong></label>
											<label>Magic Monk, Published on Dec 16, 2014</label>
											<p></p>
										</div> 
									</article>
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-5">
									<article class="">
										<div class="post-video">
											<iframe width="854" height="480" src="https://www.youtube.com/embed/A8dPM1yMhuY?list=PLzr5fRV1AGV8UIx66V7IYhbQPNkYrJnj7" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
										</div>
									</article>
								</div>
								
								<div class="col-lg-7">
									<article class="">
										<div>
											<label><strong>Lego Mindstorms EV3 Robotics Lesson 9 - How many centimetres?</strong></label>
											<label>Magic Monk, Published on Feb 25, 2015</label>
											<p></p>
										</div> 
									</article>
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-5">
									<article class="">
										<div class="post-video">
											<iframe width="854" height="480" src="https://www.youtube.com/embed/GEehGsBytaA?list=PLzr5fRV1AGV8UIx66V7IYhbQPNkYrJnj7" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
										</div>
									</article>
								</div>
								
								<div class="col-lg-7">
									<article class="">
										<div>
											<label><strong>Lego Mindstorms EV3 Robotics Lesson 10 - Gyro sensor</strong></label>
											<label>Magic Monk, Published on Feb 26, 2015</label>
											<p></p>
										</div> 
									</article>
								</div>
							</div>
							
							
							<div class="row">
								<div class="col-lg-5">
									<article class="">
										<div class="post-video">
											<iframe width="854" height="480" src="https://www.youtube.com/embed/33LIXpEI5E0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
										</div>
									</article>
								</div>
								
								<div class="col-lg-7">
									<article class="">
										<div>
											<label><strong>Lego Mindstorms EV3 Robotics Lesson 11 - Line following robot</strong></label>
											<label>Magic Monk, Published on Feb 27, 2015</label>
											<p></p>
										</div> 
									</article>
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-5">
									<article class="">
										<div class="post-video">
											<iframe width="854" height="480" src="https://www.youtube.com/embed/jCZPEDZjYA8" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
										</div>
									</article>
								</div>
								
								<div class="col-lg-7">
									<article class="">
										<div>
											<label><strong>Lego Mindstorms EV3 Robotics Lesson 12 - Switch inside switch</strong></label>
											<label>Magic Monk, Published on Feb 27, 2015</label>
											<p></p>
										</div> 
									</article>
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-5">
									<article class="">
										<div class="post-video">
											<iframe width="854" height="480" src="https://www.youtube.com/embed/xUdaAvPQEFY?list=PLzr5fRV1AGV8UIx66V7IYhbQPNkYrJnj7" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
										</div>
									</article>
								</div>
								
								<div class="col-lg-7">
									<article class="">
										<div>
											<label><strong>Lego Mindstorms EV3 Robotics Lesson 13 - Randomness</strong></label>
											<label>Magic Monk, Published on Mar 14, 2015</label>
											<p></p>
										</div> 
									</article>
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-5">
									<article class="">
										<div class="post-video">
											<iframe width="854" height="480" src="https://www.youtube.com/embed/bTmARm1jdV4?list=PLzr5fRV1AGV8UIx66V7IYhbQPNkYrJnj7" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
										</div>
									</article>
								</div>
								
								<div class="col-lg-7">
									<article class="">
										<div>
											<label><strong>Lego Mindstorms EV3 Robotics Lesson 14 - Variables, Loop interrupt, Multiple starts </strong></label>
											<label>Magic Monk, Published on Mar 29, 2015</label>
											<p></p>
										</div> 
									</article>
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-5">
									<article class="">
										<div class="post-video">
											<iframe width="854" height="480" src="https://www.youtube.com/embed/CW9_cCH8mpo?list=PLzr5fRV1AGV8UIx66V7IYhbQPNkYrJnj7" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
										</div>
									</article>
								</div>
								
								<div class="col-lg-7">
									<article class="">
										<div>
											<label><strong>Lego Mindstorms EV3 Robotics Lesson 15 - Data Logging</strong></label>
											<label>Magic Monk, Published on Apr 10, 2015</label>
											<p></p>
										</div> 
									</article>
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-5">
									<article class="">
										<div class="post-video">
											<iframe width="854" height="480" src="https://www.youtube.com/embed/oTtf6qFZtfc?list=PLzr5fRV1AGV8UIx66V7IYhbQPNkYrJnj7" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
										</div>
									</article>
								</div>
								
								<div class="col-lg-7">
									<article class="">
										<div>
											<label><strong>Lego Mindstorms EV3 Robotics Lesson 16 - Drawing a distance vs. time graph of the robot as it moves</strong></label>
											<label>Magic Monk, Published on Apr 11, 2015</label>
											<p></p>
										</div> 
									</article>
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-5">
									<article class="">
										<div class="post-video">
											<iframe width="854" height="480" src="https://www.youtube.com/embed/0o0eRnDQOg4?list=PLzr5fRV1AGV8UIx66V7IYhbQPNkYrJnj7" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
										</div>
									</article>
								</div>
								
								<div class="col-lg-7">
									<article class="">
										<div>
											<label><strong>Lego Mindstorms EV3 Robotics Lesson 17 - Displaying text on screen, using brick buttons</strong></label>
											<label>Magic Monk, Published on Oct 14, 2015</label>
											<p></p>
										</div> 
									</article>
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-5">
									<article class="">
										<div class="post-video">
											<iframe width="854" height="480" src="https://www.youtube.com/embed/6Pgk3oFbsMA?list=PLzr5fRV1AGV8UIx66V7IYhbQPNkYrJnj7" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
										</div>
									</article>
								</div>
								
								<div class="col-lg-7">
									<article class="">
										<div>
											<label><strong>Lego Mindstorms EV3 Robotics Lesson 18 - Displaying variables on screen and update on button press</strong></label>
											<label>Magic Monk, Published on Mar 14, 2015</label>
											<p></p>
										</div> 
									</article>
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-5">
									<article class="">
										<div class="post-video">
											<iframe width="854" height="480" src="https://www.youtube.com/embed/nMXy9TURb6k?list=PLzr5fRV1AGV8UIx66V7IYhbQPNkYrJnj7" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
										</div>
									</article>
								</div>
								
								<div class="col-lg-7">
									<article class="">
										<div>
											<label><strong>Lego Mindstorms EV3 Robotics Lesson 19 - Saving data to file on button press</strong></label>
											<label>Magic Monk, Published on Nov 22, 2015</label>
											<p></p>
										</div> 
									</article>
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-5">
									<article class="">
										<div class="post-video">
											<iframe width="854" height="480" src="https://www.youtube.com/embed/bLVLy70HD6k?list=PLzr5fRV1AGV8UIx66V7IYhbQPNkYrJnj7" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
										</div>
									</article>
								</div>
								
								<div class="col-lg-7">
									<article class="">
										<div>
											<label><strong>Lego Mindstorms EV3 Robotics Lesson 20 - Build a reaction time tester using Timers</strong></label>
											<label>Magic Monk, Published on Nov 22, 2015</label>
											<p></p>
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