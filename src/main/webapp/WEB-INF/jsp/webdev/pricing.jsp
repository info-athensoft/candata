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
<c:set var="pageName" value="webpricing"></c:set>
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
		
		<title><spring:message code="head-title-webdev"/></title>

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
									<li class="active"><a href="${webapp_name}/webdev/webdev.html?lang=${loc}"><spring:message code="menu-web"/></a></li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<h1><spring:message code="page-title-webdev-pricing"/></h1>
							</div>
						</div>
					</div>
				</section>
			
				<div class="container">

					<div class="row">
						<div class="col-lg-3 order-2 order-lg-1">
							<aside class="sidebar">

								<h4 class="heading-primary"><spring:message code="webdev-sidebar-title-1"/></h4>

								<ul class="nav nav-list flex-column mb-4 sort-source">
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/webdev/webdev.html?lang=${loc}"><spring:message code="webdev-sidebar-link-1"/></a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/webdev/webplan.html?lang=${loc}"><spring:message code="webdev-sidebar-link-2"/></a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/webdev/webcustom.html?lang=${loc}"><spring:message code="webdev-sidebar-link-3"/></a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/webdev/websupport.html?lang=${loc}"><spring:message code="webdev-sidebar-link-4"/></a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/webdev/product.html?lang=${loc}"><spring:message code="webdev-sidebar-link-5"/></a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/webdev/case.html?lang=${loc}"><spring:message code="webdev-sidebar-link-6"/></a></li>
									<li class="nav-item"><a class="nav-link active" href="#"><spring:message code="webdev-sidebar-link-7"/></a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/support/faq-webdev.html?lang=${loc}"><spring:message code="webdev-sidebar-link-8"/></a></li>
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
								
								<hr class="invisible mt-2 mb-2">
								
								<a class="twitter-timeline" 
									data-width="220" 
									data-height="320" 
									data-theme="light" 
									data-chrome="nofooter noborders transparent noscrollbar"
									href="https://twitter.com/Athensoft?ref_src=twsrc%5Etfw">Tweets by Athensoft</a> 
									<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
								
							</aside>
						</div>
						
						<div class="col-lg-9 order-1 order-lg-2">
							
							<!-- quote form -->
							<h3><spring:message code="pricing-title-1-1"/></h3>
							<div class="row">
								<div class="col">
									<p class="">
										<spring:message code="pricing-content-1-1"/>
									</p>
								</div>
							</div>
							<div class="row">
								<!-- business purpose -->
								<div class="col-sm-12">
									<div class="featured-box featured-box-primary text-left mt-3 mt-lg-4">
										<div class="box-content">
											<h4 class="heading-primary text-uppercase mb-3"><spring:message code="pricing-form-section-title-1"/></h4>
											<div class="form-row">
												<div class="col-lg-9">
													<div class="checkbox">
														<label>
															<input type="checkbox" value="bg1" id="biz-goal-0">
															<spring:message code="pricing-form-section-item-1_1"/>
														</label>
													</div>
						
													<div class="checkbox">
														<label>
															<input type="checkbox" value="bg2" id="biz-goal-1">
															<spring:message code="pricing-form-section-item-1_2"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="bg3" id="biz-goal-2">
															<spring:message code="pricing-form-section-item-1_3"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="bg4" id="biz-goal-3">
															<spring:message code="pricing-form-section-item-1_4"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="bg5" id="biz-goal-4">
															<spring:message code="pricing-form-section-item-1_5"/>
														</label>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- END business purpose -->
								
								<!-- page content -->
								<div class="col-sm-12">
									<div class="featured-box featured-box-primary text-left mt-3 mt-lg-4">
										<div class="box-content">
											<h4 class="heading-primary text-uppercase mb-3"><spring:message code="pricing-form-section-title-2"/></h4>

											<div class="form-row">
												<label class="col-lg-3 control-label text-lg-right pt-2"><spring:message code="pricing-form-section-item-2_1"/></label>
												<div class="form-group col-lg-1">
													<input type="text" value="5" class="form-control form-control-sm mt-2" id="qtyWebpage">
												</div>
											</div>
											
											<div class="form-row">
												<label class="col-lg-3 control-label text-lg-right pt-2"><spring:message code="pricing-form-section-item-2_2"/></label>
												<div class="form-group col-lg-1">
													<input type="text" value="1" class="form-control form-control-sm mt-2" id="qtyLang">
												</div>
											</div>
											
											<div class="form-row">
												<label class="col-lg-3 control-label text-lg-right pt-2"><spring:message code="pricing-form-section-item-2_3"/></label>
												<div class="form-group col-lg-1">
													<input type="text" value="20" class="form-control form-control-sm mt-2" id="qtyImage">
												</div>
											</div>
											
											<div class="form-row">
												<label class="col-lg-2 control-label text-lg-right pt-0"><spring:message code="pricing-form-section-title-2a"/></label>
												<div class="col-lg-9">
													<div class="radio">
														<label>
															<input type="radio" name="copywrite" id="copywrite1" value="1" checked="checked">
															<spring:message code="pricing-form-section-item-2a_1"/>
														</label>
													</div>
													<div class="radio">
														<label>
															<input type="radio" name="copywrite" id="copywrite2" value="2">
															<spring:message code="pricing-form-section-item-2a_2"/>
														</label>
													</div>
													<div class="radio">
														<label>
															<input type="radio" name="copywrite" id="copywrite3" value="3">
															<spring:message code="pricing-form-section-item-2a_3"/>
														</label>
													</div>
												</div>
											</div>
											
											<div class="form-row">
												<label class="col-lg-2 control-label text-lg-right pt-0"><spring:message code="pricing-form-section-title-2b"/></label>
												<div class="col-lg-9">
													<div class="radio">
														<label>
															<input type="radio" name="translate" id="translate1" value="1" checked="checked">
															<spring:message code="pricing-form-section-item-2b_1"/>
														</label>
													</div>
													<div class="radio">
														<label>
															<input type="radio" name="translate" id="translate2" value="2">
															<spring:message code="pricing-form-section-item-2b_2"/>
														</label>
													</div>
													<div class="radio">
														<label>
															<input type="radio" name="translate" id="translate3" value="3">
															<spring:message code="pricing-form-section-item-2b_3"/>
														</label>
													</div>
												</div>
											</div>
											
										</div>
									</div>
								</div>
								<!-- END page content -->
								
								<!-- component -->
								<div class="col-sm-12">
									<div class="featured-box featured-box-primary text-left mt-3 mt-lg-4">
										<div class="box-content">
											<h4 class="heading-primary text-uppercase mb-3"><spring:message code="pricing-form-section-title-3"/></h4>
											<div class="form-row">
												<div class="col-lg-4">
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="bizcomponent-0">
															<spring:message code="webdev-comp-item"/>
														</label>
													</div>
						
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="bizcomponent-1">
															<spring:message code="webdev-comp-price"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="bizcomponent-2">
															<spring:message code="webdev-comp-inventory"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="bizcomponent-3">
															<spring:message code="webdev-comp-order"/>
														</label>
													</div>
												</div>
												
												<div class="col-lg-4">
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="bizcomponent-4">
															<spring:message code="webdev-comp-invoice"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="bizcomponent-5">
															<spring:message code="webdev-comp-cart"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="bizcomponent-6">
															<spring:message code="webdev-comp-pay"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="bizcomponent-7">
															<spring:message code="webdev-comp-news"/>
														</label>
													</div>
												</div>
												
												<div class="col-lg-4">
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="bizcomponent-8">
															<spring:message code="webdev-comp-comment"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="bizcomponent-9">
															<spring:message code="webdev-comp-acct"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="bizcomponent-10">
															<spring:message code="webdev-comp-uaas"/>
														</label>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- END component -->
								
								<!-- function -->
								<div class="col-sm-12">
									<div class="featured-box featured-box-primary text-left mt-3 mt-lg-4">
										<div class="box-content">
											<h4 class="heading-primary text-uppercase mb-3"><spring:message code="pricing-form-section-title-4"/></h4>
											<div class="form-row">
												<div class="col-lg-4">
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="bizfunc-0">
															<spring:message code="webdev-fn-i18n"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="bizfunc-1">
															<spring:message code="webdev-fn-mail"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="bizfunc-2">
															<spring:message code="webdev-fn-fileupload"/>
														</label>
													</div>
												</div>
												
												<div class="col-lg-4">
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="bizfunc-3">
															<spring:message code="webdev-it-social-fb"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="bizfunc-4">
															<spring:message code="webdev-it-social-tw"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="bizfunc-5">
															<spring:message code="webdev-it-social-yt"/>
														</label>
													</div>
												</div>
												
												<div class="col-lg-4">
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="bizfunc-6">
															<spring:message code="webdev-it-ga"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="bizfunc-7">
															<spring:message code="webdev-it-gmap"/>
														</label>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- END function -->
								
								
								<!-- content and data -->
								<div class="col-sm-12">
									<div class="featured-box featured-box-primary text-left mt-3 mt-lg-4">
										<div class="box-content">
											<h4 class="heading-primary text-uppercase mb-3"><spring:message code="pricing-form-section-title-5"/></h4>
											<div class="form-row">
												<div class="col-lg-9">
													<div class="radio">
														<label>
															<input type="radio" name="contentmaintain" id="contentmaintain1" value="1" checked="">
															<spring:message code="pricing-form-section-item-5_1"/>
														</label>
													</div>
													<div class="radio">
														<label>
															<input type="radio" name="contentmaintain" id="contentmaintain2" value="2">
															<spring:message code="pricing-form-section-item-5_2"/>
														</label>
													</div>
													
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- END content and data -->
								
								
								<!-- domain name -->
								<div class="col-sm-12">
									<div class="featured-box featured-box-primary text-left mt-3 mt-lg-4">
										<div class="box-content">
											<h4 class="heading-primary text-uppercase mb-3"><spring:message code="pricing-form-section-title-6"/></h4>
											<div class="form-row">
												<div class="col-lg-9">
													<div class="radio">
														<label>
															<input type="radio" name="domainname" id="domainname1" value="1" checked="">
															<spring:message code="pricing-form-section-item-6_1"/>
														</label>
													</div>
													<div class="radio">
														<label>
															<input type="radio" name="domainname" id="domainname2" value="2">
															<spring:message code="pricing-form-section-item-6_2"/>
														</label>
													</div>
													<div class="radio">
														<label>
															<input type="radio" name="domainname" id="domainname3" value="3">
															<spring:message code="pricing-form-section-item-6_3"/>
														</label>
													</div>
													<div class="radio">
														<label>
															<input type="radio" name="domainname" id="domainname4" value="4">
															<spring:message code="pricing-form-section-item-6_4"/>
														</label>
													</div>
													<div class="radio">
														<label>
															<input type="radio" name="domainname" id="domainname5" value="5">
															<spring:message code="pricing-form-section-item-6_5"/>
														</label>
													</div>
													
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- END domain name -->
								
								
								<!-- hosting -->
								<div class="col-sm-12">
									<div class="featured-box featured-box-primary text-left mt-3 mt-lg-4">
										<div class="box-content">
											<h4 class="heading-primary text-uppercase mb-3"><spring:message code="pricing-form-section-title-7"/></h4>
											<div class="form-row">
												<div class="col-lg-9">
													<div class="radio">
														<label>
															<input type="radio" name="hosting" id="hosting1" value="1" checked="">
															<spring:message code="pricing-form-section-item-7_1"/>
														</label>
													</div>
													<div class="radio">
														<label>
															<input type="radio" name="hosting" id="hosting2" value="2">
															<spring:message code="pricing-form-section-item-7_2"/>
														</label>
													</div>
													<div class="radio">
														<label>
															<input type="radio" name="hosting" id="hosting3" value="3">
															<spring:message code="pricing-form-section-item-7_3"/>
														</label>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- END hosting -->
								
							</div>
							<!-- END ROW -->
							
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
											
 
 							<hr class="tall"/>
							
							<!-- support -->
							<div class="row">
								<div class="col-lg-6">
									<div class="feature-box feature-box-style-6">
										<div class="feature-box-icon">
											<i class="fa fa-bars"></i>
										</div>
										<div class="feature-box-info">
											<h4 class="mb-2"><spring:message code="common-faq-title"/></h4>
											<p class="mb-4"><spring:message code="common-faq-content"/></p>
											<p><a href="/about/comingsoon.html?lang=${loc}" class="btn btn-light"><spring:message code="common-faq-btn"/></a></p>
										</div>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="feature-box feature-box-style-6">
										<div class="feature-box-icon">
											<i class="fa fa-bars"></i>
										</div>
										<div class="feature-box-info">
											<h4 class="mb-2"><spring:message code="common-contactus-title"/></h4>
											<p class="mb-4"><spring:message code="common-contactus-content"/></p>
											<p><a href="/support/contactus.html?lang=${loc}" class="btn btn-light"><spring:message code="common-contactus-btn"/></a></p>
										</div>
									</div>
								</div>
							</div>
							
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
		<script>
		function requestQuote(){
			//alert("requestQuote");
			
			//buisness goal
			var bizgoal = new Array(5);
			bizgoal[0] = "I will take it as corporate site";
			bizgoal[1] = "I will take it as catalog site";
			bizgoal[2] = "I will take it as e-commerce site";
			bizgoal[3] = "I will take it as business web app";
			bizgoal[4] = "I will take it as primary site";
			
			var strBizgoal = "";
			
			var hasChecked = false;
			for(var i=0; i<bizgoal.length; i++){
				if($("#biz-goal-"+i).is(':checked')){
					hasChecked = true;
					strBizgoal += bizgoal[i]+"<br/>";
				}
			}
			
			//if(strBizgoal.replace(/(^\s*)|(\s*$)/g, "").length ==0){
			if(!hasChecked){
				strBizgoal = "The business goal is not clear.<br/>"
			}
			//end of buisness goal
			
			
			//web page content
			var pagecontent = new Array(5);
			pagecontent[0] = "Qty of web page : "+$("#qtyWebpage").val();
			pagecontent[1] = "Qty of language : "+$("#qtyLang").val();
			pagecontent[2] = "Qty of image : "+$("#qtyImage").val();
			pagecontent[3] = $("input[type='radio'][name='copywrite']:checked").val();
			pagecontent[4] = $("input[type='radio'][name='translate']:checked").val();
			
			var strPagecontent = "";
			
			switch(pagecontent[3]){
				case '1':
					pagecontent[3]="copywrite : no need";
					break;
				case '2':
					pagecontent[3]="copywrite : I need, but delegate to the 3rd party";
					break;
				case '3':
					pagecontent[3]="copywrite : I need, and delegate to Athensoft";
					break;
				default:
					break;
			}
			
			switch(pagecontent[4]){
				case '1':
					pagecontent[4]="translate : no need";
					break;
				case '2':
					pagecontent[4]="translate : I need, but delegate to the 3rd party";
					break;
				case '3':
					pagecontent[4]="translate : I need, and delegate to Athensoft";
					break;
				default:
					break;
			}
			
			for(var i=0; i<pagecontent.length; i++){
				strPagecontent += pagecontent[i]+"<br/>";
			}
			//end of web page content
			
			
			//business component
			var bizcomponent = new Array(11);
			bizcomponent[0] = "item";
			bizcomponent[1] = "price";
			bizcomponent[2] = "inventory";
			bizcomponent[3] = "order";
			bizcomponent[4] = "invoice";
			bizcomponent[5] = "cart";
			bizcomponent[6] = "pay";
			bizcomponent[7] = "news";
			bizcomponent[8] = "comment";
			bizcomponent[9] = "acct";
			bizcomponent[10] = "uaas";
			
			var strBizcomponent = "";
			
			var hasChecked2 = false;
			for(var i=0; i<bizcomponent.length; i++){
				if($("#bizcomponent-"+i).is(':checked')){
					hasChecked2 = true;
					strBizcomponent += bizcomponent[i]+",";
				}
			}
			
			//if(strBizcomponent.replace(/(^\s*)|(\s*$)/g, "").length ==0){
			if(!hasChecked2){
				strBizcomponent = "Business component : none selected.<br/>"
			}else{
				strBizcomponent = "Business component : <br/>"+strBizcomponent;
			}
			//end business component
			
			
			//business func
			var bizfunc = new Array(8);
			bizfunc[0] = "i18n";
			bizfunc[1] = "email";
			bizfunc[2] = "fileupload";
			bizfunc[3] = "facebook integration";
			bizfunc[4] = "twitter integration";
			bizfunc[5] = "youtube integration";
			bizfunc[6] = "Google Analytics integration";
			bizfunc[7] = "Google Map integration";
			
			var strBizfunc = "";
			
			for(var i=0; i<bizfunc.length; i++){
				if($("#bizfunc-"+i).is(':checked')){
					strBizfunc += bizfunc[i]+",";
				}
			}
			
			if(strBizfunc.replace(/(^\s*)|(\s*$)/g, "").length ==0){
				strBizfunc = "Business function : none selected.<br/>"
			}else{
				strBizfunc = "Business function : <br/>"+strBizfunc;
			}
			//end business func
			
			
			//content maintain
			var contentmaintain = new Array(1);
			contentmaintain[0] = $("input[type='radio'][name='contentmaintain']:checked").val();
			var strContentmaintain = "";
			
			switch(contentmaintain[0]){
				case '1':
					contentmaintain[0]="content maintain : no need of content or data maintain";
					break;
				case '2':
					contentmaintain[0]="content maintain : I need content or data maintain";
					break;
				default:
					break;
			}
			
			for(var i=0; i<contentmaintain.length; i++){
				strContentmaintain += contentmaintain[i]+"<br/>";
			}
			//end content maintain
			
			
			//domain name
			var domainname = new Array(1);
			domainname[0] = $("input[type='radio'][name='domainname']:checked").val();
			var strDomainname = "";
			
			switch(domainname[0]){
				case '1':
					domainname[0]="domain name : I already have domian name, and I can manage by myself";
					break;
				case '2':
					domainname[0]="domain name : I already have domian name, and I will delegate to Athensoft to manage";
					break;
				case '3':
					domainname[0]="domain name : I have no domain name yet, and I will purchase and manage by myself";
					break;
				case '4':
					domainname[0]="domain name : I have no domain name yet, and I will purchase by myself, will delegate to Athensoft to manage";
					break;
				case '5':
					domainname[0]="domain name : I have no domain name yet, and I will delegate to Athensoft to purchase and manage";
					break;
				default:
					break;
			}
			
			for(var i=0; i<domainname.length; i++){
				strDomainname += domainname[i]+"<br/>";
			}
			//end domain name
			
			
			
			//hosting
			var hosting = new Array(1);
			hosting[0] = $("input[type='radio'][name='hosting']:checked").val();
			var strHosting = "";
			
			switch(hosting[0]){
				case '1':
					hosting[0]="hosting : I already have hosting";
					break;
				case '2':
					hosting[0]="hosting : I have no hosting yet, and I will purchase by myself";
					break;
				case '3':
					hosting[0]="hosting : I have no hosting yet, and I will delegate to Athensoft to purchase and manage";
					break;
				default:
					break;
			}
			
			for(var i=0; i<hosting.length; i++){
				strHosting += hosting[i]+"<br/>";
			}
			//end hosting
			
			
			//user info
			var customerName = $("#customerName").val();
			var customerEmail = $("#customerEmail").val();
			
			customerName=encodeURI(customerName);
			customerEmail=encodeURI(customerEmail);
			
			alert(strBizgoal+"\r\r"+strPagecontent+"\r"+strBizcomponent+"\r\r"+strBizfunc+"\r\r"+strContentmaintain+"\r"+strDomainname+"\r\r"+strHosting);

			var quoteStr = strBizgoal+"<br/>"+strPagecontent+"<br/>"+strBizcomponent+"<br/>"+strBizfunc+"<br/>"+strContentmaintain+"<br/>"+strDomainname+"<br/>"+strHosting;
			quoteStr = encodeURI(quoteStr);
			
			
					
			var lang = '${loc}';
			$.ajax({
				type	:	"post",
				url		:	"/webdev/webcustom/quote?quoteStr="+quoteStr+"&lang="+lang+"&customerName="+customerName+"&customerEmail="+customerEmail,
				dataType:	"html",
				//data	: {	quoteStr : quoteStr },
				timeout : 5000,
				success:function(data){
					window.location.href="/webdev/webcustom.html?lang="+lang;				
				}		
			});
			
		}
		
		</script>
	</body>
</html>