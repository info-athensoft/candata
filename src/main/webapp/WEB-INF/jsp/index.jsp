<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- global variables settings -->
<c:set var="webapp_name" value=""/>
<!-- END global variables settings -->

<!-- page variables  -->
<c:set var="inc_dir" value="inc"/>
<c:set var="img_dir" value="images"></c:set>
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

		<meta name="keywords" content="<spring:message code='seo-keywords-index'/>"/>
		<meta name="description" content="<spring:message code='seo-desc-index'/>">
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
				<jsp:include page="${inc_dir}/slider_inc.jsp"></jsp:include>

				<div class="home-intro" id="home-intro">
					<div class="container">

						<div class="row align-items-center">
							<div class="col-lg-8">
								<p>
									<spring:message code="index-slogan-1"/> <em><spring:message code="index-slogan-2"/></em>
									<span><spring:message code="index-slogan-3"/></span>
								</p>
							</div>
							<div class="col-lg-4">
								<div class="get-started text-left text-lg-right">
									<a href="/webdev/pricing.html?lang=${loc}" class="btn btn-lg btn-primary"><spring:message code="index-btnlink-quote-1"/></a>
									<div class="learn-more"><spring:message code="index-btnlink-quote-2"/><a href="/webdev/webdev.html?lang=${loc}"><spring:message code="index-btnlink-quote-3"/></a></div>
								</div>
							</div>
						</div>

					</div>
				</div>

				<div class="container">

					<div class="row text-center">
						<div class="col">
							<h2 class="mb-2 word-rotator-title">
								Informatique Athensoft <strong></strong> <spring:message code="index-intro-1"/>
							</h2>
							<p class="lead">
								<spring:message code="index-intro-2"/>
							</p>
						</div>
					</div>

				</div>
				
				
				 
				<section class="section">
					<div class="container">

						<div class="row">
							<div class="col">
								<div class="row">
									<div class="col-lg-4">
										<div class="feature-box feature-box-style-2">
											<div class="feature-box-icon">
												<i class="fa fa-tv"></i>
											</div>
											<div class="feature-box-info">
												<h4 class="mb-0"><spring:message code="index-feature-title-1"/></h4>
												<p class="mb-4"><spring:message code="index-feature-1"/></p>
											</div>
										</div>
										<div class="feature-box feature-box-style-2">
											<div class="feature-box-icon">
												<i class="fa fa-paint-brush"></i>
											</div>
											<div class="feature-box-info">
												<h4 class="mb-0"><spring:message code="index-feature-title-2"/></h4>
												<p class="mb-4"><spring:message code="index-feature-2"/></p>
											</div>
										</div>
									</div>
									<div class="col-lg-4">
										<div class="feature-box feature-box-style-2">
											<div class="feature-box-icon">
												<i class="fa fa-share-alt"></i>
											</div>
											<div class="feature-box-info">
												<h4 class="mb-0"><spring:message code="index-feature-title-3"/></h4>
												<p class="mb-4"><spring:message code="index-feature-3"/></p>
											</div>
										</div>
										<div class="feature-box feature-box-style-2">
											<div class="feature-box-icon">
												<i class="fa fa-question-circle"></i>
											</div>
											<div class="feature-box-info">
												<h4 class="mb-0"><spring:message code="index-feature-title-4"/></h4>
												<p class="mb-4"><spring:message code="index-feature-4"/></p>
											</div>
										</div>
									</div>
									<div class="col-lg-4">
										<div class="feature-box feature-box-style-2">
											<div class="feature-box-icon">
												<i class="fa fa-cloud"></i>
											</div>
											<div class="feature-box-info">
												<h4 class="mb-0"><spring:message code="index-feature-title-5"/></h4>
												<p class="mb-4"><spring:message code="index-feature-5"/></p>
											</div>
										</div>
										<div class="feature-box feature-box-style-2">
											<div class="feature-box-icon">
												<i class="fa fa-rocket"></i>
											</div>
											<div class="feature-box-info">
												<h4 class="mb-0"><spring:message code="index-feature-title-6"/></h4>
												<p class="mb-4"><spring:message code="index-feature-6"/></p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>

				<div class="container">
					<div class="row">
						<div class="col-lg-4">
							<img class="img-fluid mt-5 appear-animation" src="${img_dir}/local/home/content-1.jpg" alt="website design" data-appear-animation="fadeInLeft">
						</div>
						<div class="col-lg-7 col-lg-offset-1">
							<h2 class="mt-5"><strong><spring:message code="index-content-title-1a"/></strong> <spring:message code="index-content-title-1b"/></h2>
							<p class="lead">
								<spring:message code="index-content-1a"/>
							</p>
							<p>
								<a href="/webdev/webdev.html?lang=${loc}"><spring:message code="index-content-1b"/></a>
							</p>
						</div>
					</div>

					<hr class="tall">

					<div class="row">
						<div class="col-lg-7">
							<h2 class="mt-5"><strong><spring:message code="index-content-title-2a"/></strong> <spring:message code="index-content-title-2b"/></h2>
							<p class="lead">
								 <spring:message code="index-content-2a"/>
							</p>
							<p>
								<a href="/graphic/graphic.html?lang=${loc}"><spring:message code="index-content-2b"/></a>
							</p>
						</div>
						<div class="col-lg-4 col-lg-offset-1 mt-5">
							<img class="img-fluid appear-animation" src="${img_dir}/local/home/content-2.jpg" alt="graphic design" data-appear-animation="fadeInRight">
						</div>
					</div>
					
					<hr class="tall">
					
					<div class="row">
						<div class="col-lg-4">
							<img class="img-fluid mt-5 appear-animation" src="${img_dir}/local/home/content-3.jpg" alt="adogo online marketing brand" data-appear-animation="fadeInLeft">
						</div>
						<div class="col-lg-7 col-lg-offset-1">
							<h2 class="mt-5"><strong><spring:message code="index-content-title-3a"/></strong> <spring:message code="index-content-title-3b"/></h2>
							<p class="lead">
								<spring:message code="index-content-3a"/>
							</p>
							<p>
								<!-- <a href="/adogo/adogo.html?lang=${loc}"><spring:message code="index-content-3b"/></a>  -->
								<a href="/about/comingsoon.html?lang=${loc}"><spring:message code="index-content-3b"/></a>
							</p>
						</div>
					</div>
					
					<hr class="tall">

					<div class="row">
						<div class="col-lg-7">
							<h2 class="mt-5"><strong><spring:message code="index-content-title-4a"/></strong> <spring:message code="index-content-title-4b"/></h2>
							<p class="lead">
								 <spring:message code="index-content-4a"/>
							</p>
							<p>
								<a href="/about/comingsoon.html?lang=${loc}"><spring:message code="index-content-4b"/></a>
							</p>
						</div>
						<div class="col-lg-4 col-lg-offset-1 mt-5">
							<img class="img-fluid appear-animation" src="${img_dir}/local/home/content-4.jpg" alt="knowledge social media" data-appear-animation="fadeInRight">
						</div>
					</div>
					 
					<hr class="tall">
					<!-- 
					<div class="row text-center">
						<div class="col">
							<h2 class="mb-0 word-rotator-title mt-5">
								Our <strong>Portfolio</strong>
							</h2>
							<p class="lead mb-5">
								Check out what we have been doing
							</p>
						</div>
					</div>
					 -->
					 
					<div class="row text-center">
						<div class="col">
							<h2 class="mb-0 word-rotator-title mt-5">
								<spring:message code="index-testimonial-title-1"/>
							</h2>
							<p class="lead mb-5">
								<spring:message code="index-testimonial-title-2"/>
							</p>
						</div>
					</div>
					 
				</div>
				
				<!-- portfolio -->
				
				<!-- END portfolio -->
				
				<!-- testimonial -->
				<section class="parallax section section-text-light section-parallax section-center mt-0" data-plugin-parallax data-plugin-options="{'speed': 1.5}" data-image-src="${img_dir}/local/home/testimonial-img.jpg">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-10">
								<div class="owl-carousel owl-theme nav-bottom rounded-nav" data-plugin-options="{'items': 1, 'loop': false}">
									<div>
										<div class="col">
											<div class="testimonial testimonial-style-2 testimonial-with-quotes mb-0">
												<div class="testimonial-author">
													<img src="${img_dir}/client/client-1.png" class="img-fluid rounded-circle" alt="client">
												</div>
												<blockquote>
													<p><spring:message code="index-testimonial-quote-1"/></p>
												</blockquote>
												<div class="testimonial-author">
													<p><strong><spring:message code="index-testimonial-owner-1"/></strong><span><spring:message code="index-testimonial-position-1"/></span></p>
												</div>
											</div>
										</div>
									</div>
									<div>
										<div class="col">
											<div class="testimonial testimonial-style-2 testimonial-with-quotes mb-0">
												<div class="testimonial-author">
													<img src="${img_dir}/client/client-2.png" class="img-fluid rounded-circle" alt="client">
												</div>
												<blockquote>
													<p><spring:message code="index-testimonial-quote-2"/></p>
												</blockquote>
												<div class="testimonial-author">
													<p><strong><spring:message code="index-testimonial-owner-2"/></strong><span><spring:message code="index-testimonial-position-2"/></span></p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!-- END testimonial -->
				
				<div class="container">
					<div class="row text-center">
						<div class="col">
							<h2 class="mb-0 word-rotator-title mt-4">
								<spring:message code="index-partner-title-1"/>
							</h2>
							<p class="lead"><spring:message code="index-partner-title-2"/></p>
						</div>
					</div>
					<div class="row text-center mt-5">
						<div class="owl-carousel owl-theme" data-plugin-options="{'items': 6, 'autoplay': true, 'autoplayTimeout': 3000}">
							<div>
								<img class="img-fluid" src="${img_dir}/partner/csbg-big.jpg" alt="partner">
							</div>
							<div>
								<img class="img-fluid" src="${img_dir}/partner/metous-big.jpg" alt="partner">
							</div>
							<div>
								<a href="https://www.fengyun365.com/"><img class="img-fluid" src="${img_dir}/partner/fengyun365-big.jpg" alt="partner"></a>
							</div>
							<div>
								<a href="https://www.zhenimport.com/"><img class="img-fluid" src="${img_dir}/partner/zhenimport-big.jpg" alt="partner"></a>
							</div>
							<div>
								<img class="img-fluid" src="${img_dir}/partner/jdesignstudio-big.jpg" alt="partner">
							</div>
							<div>
								<img class="img-fluid" src="${img_dir}/partner/silvertac-big.jpg" alt="partner">
							</div>
							<div>
								<img class="img-fluid" src="${img_dir}/partner/petmuyuyan-big.jpg" alt="partner">
							</div>
							<div>
								<img class="img-fluid" src="${img_dir}/partner/muyuyan-big.jpg" alt="partner">
							</div>
							<div>
								<img class="img-fluid" src="${img_dir}/partner/tongda-big.jpg" alt="partner">
							</div>
							<div>
								<img class="img-fluid" src="${img_dir}/partner/vvintlgroup-big.jpg" alt="partner">
							</div>
							<div>
								<img class="img-fluid" src="${img_dir}/partner/xinyueanni-big.jpg" alt="partner">
							</div>
						</div>
					</div>
				</div>
				
				<!-- 
				<section class="call-to-action call-to-action-default with-button-arrow content-align-center call-to-action-in-footer">
					<div class="container">
						<div class="row">
							<div class="col-md-9 col-lg-9">
								<div class="call-to-action-content">
									<h3>Informatique Athensoft is <strong>everything</strong> you need to create an <strong>awesome</strong> website!</h3>
									<p class="mb-0">The <strong>#1 Selling</strong> HTML Site Template on ThemeForest</p>
								</div>
							</div>
							<div class="col-md-3 col-lg-3">
								<div class="call-to-action-btn">
									<a href="#" target="_blank" class="btn btn-lg btn-primary">Buy Now!</a><span class="arrow hlb d-none d-md-block" data-appear-animation="rotateInUpLeft" style="top: -40px; left: 70%;"></span>
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
		 
		 <!-- language switching -->
		<script>
			$(document).ready(function(){
				
				var lc = "${loc}";
				var lc2 = $("#lang_current").text();
				//alert("wo cao:"+lc+" ,"+lc2);
				
				var langName = "";			
				
				if(lc =="en_US"){
					langName = "English";
					$("#lang_flag").removeClass("flag-ca").addClass("flag-ca");
				}else if(lc == "fr_CA"){
					langName = "Français";
					$("#lang_flag").removeClass("flag-ca").addClass("flag-ca");
				}else if(lc == "zh_CN"){
					langName = "中文";
					$("#lang_flag").removeClass("flag-cn").addClass("flag-cn");
				}
				
				$("#lang_current").text(langName);
				
				//lang_flag
			});
		</script>
	</body>
</html>