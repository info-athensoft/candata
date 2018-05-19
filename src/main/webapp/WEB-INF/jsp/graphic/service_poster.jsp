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
<c:set var="pageName" value="graphic_poster"/>
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
		
		<title><spring:message code="head-title-graphic"/></title>

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
									<li class="active"><a href="${webapp_name}/graphic/graphic.html?lang=${loc}"><spring:message code="menu-graphic"/></a></li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<h1><spring:message code="page-title-graphic"/></h1>
							</div>
						</div>
					</div>
				</section>
			
				<div class="container">

					<div class="row">
						<div class="col-lg-3 order-2 order-lg-1">
							<aside class="sidebar">

								<h4 class="heading-primary"><spring:message code="graphic-sidebar-title-3"/></h4>

								<jsp:include page="sidebar-graphic-service-list.jsp"/>

								<hr class="invisible mt-5 mb-2">
								
								<h4 class="heading-primary"><spring:message code="graphic-sidebar-title-nav"/></h4>
								<ul class="nav nav-list flex-column mb-4 sort-source">
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/graphic/index.html?lang=${loc}"><spring:message code="graphic-sidebar-link-overview"/></a></li>
									<li class="nav-item"><a class="nav-link active" href="${webapp_name}/graphic/service/catalog.html?lang=${loc}"><spring:message code="graphic-sidebar-link-service"/></a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/graphic/demo.html?lang=${loc}"><spring:message code="graphic-sidebar-link-demo"/></a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/graphic/pricing.html?lang=${loc}"><spring:message code="graphic-sidebar-link-pricing"/></a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/support/faq-graphic.html?lang=${loc}"><spring:message code="graphic-sidebar-link-faq"/></a></li>
								</ul>
								
								<hr class="invisible mt-5 mb-2">
								
								<h4 class="heading-primary"><spring:message code="webdev-sidebar-title-2"/></h4>
								<p><spring:message code="webdev-sidebar-form-text"/>&nbsp;&nbsp;
									<a href="/support/contactus.html?lang=${loc}"><spring:message code="webdev-sidebar-form-btn"/></a></p>
								
								<form id="contactForm" action="/support/mailInquiry" method="POST">
									<div class="form-row">
										<div class="form-group col">
											<label><spring:message code="contactus-form-clientname"/> *</label>
											<input type="text" value="" data-msg-required="Please enter your name." maxlength="100" class="form-control" name="name" id="name" required>
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col">
											<label><spring:message code="contactus-form-clientemail"/> *</label>
											<input type="email" value="" data-msg-required="Please enter your email address." data-msg-email="Please enter a valid email address." maxlength="100" class="form-control" name="email" id="email" required>
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col">
											<label><spring:message code="contactus-form-subject"/></label>
											<input type="text" value="" data-msg-required="Please enter the subject." maxlength="100" class="form-control" name="subject" id="subject" required>
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col">
											<label><spring:message code="contactus-form-message"/> *</label>
											<textarea maxlength="5000" data-msg-required="Please enter your message." rows="3" class="form-control" name="message" id="message" required></textarea>
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col">
											<input type="submit" value='<spring:message code="contactus-form-btn-sendmessage"/>' class="btn btn-primary mb-4" data-loading-text="Loading...">
								
											<div class="alert alert-success d-none" id="contactSuccess">
												Message has been sent to us.
											</div>
								
											<div class="alert alert-danger d-none" id="contactError">
												Error sending your message.
											</div>
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col">
											<input type="hidden" value="${loc}" name="lang"/>
											<input type="hidden" value="${pageName}" name="pageName"/>
										</div>
									</div>
								</form>
							</aside>
						</div>
						
						<div class="col-lg-9 order-1 order-lg-2">
							
							<hr class="invisible mt-4 mb-2" id="graphic-service-poster"/>
							
							<!-- main features -->
							<div class="blog-posts">
								
								<div class="post-image">
										<div class="owl-carousel owl-theme" data-plugin-options="{'items':1}">
											<div>
												<div class="img-thumbnail d-block">
													<img class="img-fluid" src="${img_dir}/graphicservice/big/poster.jpg" alt="design catalog">
												</div>
											</div>
										</div>
								</div>
								<div class="post-content">
									<h3><spring:message code="graphic-service-poster"/></h3>
									<p><spring:message code="graphic-service-poster-desc"/></p>
									
									<ul class="list list-inline list-icons">
										<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="graphic-service-type-digital"/></li>
										<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="graphic-service-type-web"/></li>
										<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="graphic-service-type-printing"/></li>
									</ul>
								</div>
							</div>
							
							<!-- END main features -->
							
							<hr class="invisible mt-3 mb-2"/>
							
							<!-- pricing table -->
							<!--  
							<hr class="long"/>
							<div class="post-content">
							</div>
							-->
							<!-- END pricing table -->
							
							<hr class="invisible mt-3 mb-4"/>
							
							<!-- quote form -->
							<div class="post-content">
								<h3><spring:message code="graphic-service-quoteform-title"/></h3>
								<div class="col-sm-12">
									<div class="featured-box featured-box-primary text-left mt-3 mt-lg-4">
										<div class="box-content">
											<div class="form-row">
												<label class="col-lg-2 control-label text-lg-right pt-2">
													<spring:message code="graphic-quoteform-fieldname-purpose"/>
												</label>
												<div class="form-group col-lg-3">
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="">
															<spring:message code="graphic-quoteform-fieldvalue-forweb"/>
														</label>
													</div>
						
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="">
															<spring:message code="graphic-quoteform-fieldvalue-forprint"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="">
															<spring:message code="graphic-quoteform-fieldvalue-fordigital"/>
														</label>
													</div>
												</div>
											</div>
											
											<div class="form-row">
												<label class="col-lg-2 control-label text-lg-right pt-2">
													<spring:message code="graphic-quoteform-fieldname-dimension"/>
												</label>
												<div class="form-group col-lg-6">
													<input type="text" class="form-control form-control-sm mt-2" id="" placeholder='<spring:message code="graphic-quoteform-placeholder-dimension"/>'/>
												</div>
											</div>
											
											<div class="form-row">
												<label class="col-lg-2 control-label text-lg-right pt-2">
													<spring:message code="graphic-quoteform-fieldname-themecolor"/>
												</label>
												<div class="form-group col-lg-6">
													<input type="text" class="form-control form-control-sm mt-2" id="" placeholder='<spring:message code="graphic-quoteform-placeholder-preferredcolor"/>'>
												</div>
											</div>
											
											<div class="form-row">
												<label class="col-lg-2 control-label text-lg-right pt-2">
													<spring:message code="graphic-quoteform-fieldname-imgprocess"/>
												</label>
												<div class="form-group col-lg-3">
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="">
															<spring:message code="graphic-quoteform-fieldvalue-imglight"/>
														</label>
													</div>
						
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="">
															<spring:message code="graphic-quoteform-fieldvalue-imgknock"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="">
															<spring:message code="graphic-quoteform-fieldvalue-rmdefect"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="">
															<spring:message code="graphic-quoteform-fieldvalue-imgcrop"/>
														</label>
													</div>
												</div>
											</div>
											
											<div class="form-row">
												<label class="col-lg-2 control-label text-lg-right pt-2">
													<spring:message code="graphic-quoteform-fieldname-comment"/>
												</label>
												<div class="form-group col-lg-6">
													<textarea rows="5" class="form-control form-control-sm mt-2" id="" placeholder='<spring:message code="graphic-quoteform-placeholder-comment"/>'></textarea>
												</div>
											</div>
											
										</div>
									</div>
								</div>
							</div>
							<!-- END quote form -->
							
							<hr class="invisible mt-3 mb-2"/>
							
							<div class="row">
								<label class="col-lg-2 pt-2 text-lg-right"><spring:message code="pricing-form-from-direction"/></label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="customerName" placeholder='<spring:message code="pricing-form-from-customer"/>'/></div>
								
								<label class="col-lg-1 pt-2 text-lg-right">@</label>
								<div class="col-lg-4">
									<input type="text" class="form-control" id="customerEmail" placeholder='<spring:message code="pricing-form-from-email"/>'/></div>
									
								<div class="col-lg-2">
									<a href="javascript:void(0);" class="btn btn-primary" onclick="requestQuote();"><spring:message code="pricing-form-from-btn"/></a>
								</div>
							</div>
							<!-- END page content -->
							
							<hr class="invisible mt-3 mb-2"/>
							
							<!-- instruction -->
							<hr class="long"/>
							<div class="post-content">
								<h3><spring:message code="graphic-service-policy-title"/></h3>
								<div class="row">
									<div class="col-lg-12">
										<ol class="list list-ordened list-ordened-style-3">
											<li><spring:message code="graphic-service-policy-common-3"/></li>
											<li><spring:message code="graphic-service-policy-common-4"/></li>
											<li><spring:message code="graphic-service-policy-common-5"/></li>
											<li><spring:message code="graphic-service-policy-common-7"/></li>
											<li><spring:message code="graphic-service-policy-common-6"/></li>
											<li><spring:message code="graphic-service-policy-common-8"/></li>
											<li><spring:message code="graphic-service-policy-common-9"/></li>
											<li><spring:message code="graphic-service-policy-common-2"/></li>
											<li><spring:message code="graphic-service-policy-common-1"/></li>
										</ol>
									</div>
								</div>
							</div>
							<!-- END instruction -->
							
							
							<hr class="invisible mt-4 mb-4">
							
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
							
							<!-- latest work -->
							<h3><spring:message code="graphic-title-3-1"/></h3>
							<div class="row">
								<div class="col-lg-4">
									<a href="${webapp_name}/graphic/demo.html?lang=${loc}" target="_blank">
										<span class="thumb-info thumb-info-lighten thumb-info-centered-info thumb-info-no-borders">
											<span class="thumb-info-wrapper">
												<img src="${img_dir}/graphic/demo/poster-audi.jpg" class="img-fluid" alt="related work">
												<span class="thumb-info-title">
													<span class="thumb-info-inner">Auto</span>
													<span class="thumb-info-type">Poster</span>
												</span>
											</span>
										</span>
									</a>
								</div>
								<div class="col-lg-4">
									<a href="${webapp_name}/graphic/demo.html?lang=${loc}" target="_blank">
										<span class="thumb-info thumb-info-lighten thumb-info-centered-info thumb-info-no-borders">
											<span class="thumb-info-wrapper">
												<img src="${img_dir}/graphic/demo/Menu-Restaurant.jpg" class="img-fluid" alt="related work">
												<span class="thumb-info-title">
													<span class="thumb-info-inner">Restaurant</span>
													<span class="thumb-info-type">Menu</span>
												</span>
											</span>
										</span>
									</a>
								</div>
								<div class="col-lg-4">
									<a href="${webapp_name}/graphic/demo.html?lang=${loc}" target="_blank">
										<span class="thumb-info thumb-info-lighten thumb-info-centered-info thumb-info-no-borders">
											<span class="thumb-info-wrapper">
												<img src="${img_dir}/graphic/demo/Catalog-Furniture.jpg" class="img-fluid" alt="related work">
												<span class="thumb-info-title">
													<span class="thumb-info-inner">Furniture</span>
													<span class="thumb-info-type">Catalog</span>
												</span>
											</span>
										</span>
									</a>
								</div>
							</div>
							<!-- END of latest work -->
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