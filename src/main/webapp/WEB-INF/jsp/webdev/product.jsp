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
<c:set var="pageName" value="webproduct"></c:set>
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

		<meta name="keywords" content="<spring:message code='seo-keywords-webproduct'/>" />
		<meta name="description" content="<spring:message code='seo-keywords-webproduct'/>">
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
								<h1><spring:message code="page-title-webdev-product"/></h1>
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
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/webdev/webdev.html?lang=${loc}" target="_blank"><spring:message code="webdev-sidebar-link-1"/></a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/webdev/webplan.html?lang=${loc}" target="_blank"><spring:message code="webdev-sidebar-link-2"/></a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/webdev/webcustom.html?lang=${loc}" target="_blank"><spring:message code="webdev-sidebar-link-3"/></a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/webdev/websupport.html?lang=${loc}" target="_blank"><spring:message code="webdev-sidebar-link-4"/></a></li>
									<li class="nav-item"><a class="nav-link active" href="#"><spring:message code="webdev-sidebar-link-5"/></a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/webdev/case.html?lang=${loc}" target="_blank"><spring:message code="webdev-sidebar-link-6"/></a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/webdev/pricing.html?lang=${loc}" target="_blank"><spring:message code="webdev-sidebar-link-7"/></a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/support/faq-webdev.html?lang=${loc}" target="_blank"><spring:message code="webdev-sidebar-link-8"/></a></li>
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
						
							<!-- overview -->
							<h3><spring:message code="webdev-product-title-1-1"/></h3>
							<div class="row">
								<div class="col">
									<p class="">
										<spring:message code="webdev-product-content-1-1a"/>
										<br/>
										<spring:message code="webdev-product-content-1-1b"/>
									</p>
									<p class="">
										<spring:message code="webdev-product-content-1-2a"/>
										<br/>
										<a href="#webdev-comp-item"><spring:message code="webdev-comp-item"/></a>,&nbsp;&nbsp;
										<a href="#webdev-comp-price"><spring:message code="webdev-comp-price"/></a>,&nbsp;&nbsp;
										<a href="#webdev-comp-inventory"><spring:message code="webdev-comp-inventory"/></a>,&nbsp;&nbsp;
										<a href="#webdev-comp-order"><spring:message code="webdev-comp-order"/></a>,&nbsp;&nbsp;
										<a href="#webdev-comp-invoice"><spring:message code="webdev-comp-invoice"/></a>,&nbsp;&nbsp;
										<a href="#webdev-comp-cart"><spring:message code="webdev-comp-cart"/></a>,&nbsp;&nbsp;
										<a href="#webdev-comp-pay"><spring:message code="webdev-comp-pay"/></a>,&nbsp;&nbsp;
										<a href="#webdev-comp-news"><spring:message code="webdev-comp-news"/></a>,&nbsp;&nbsp;
										<a href="#webdev-comp-comment"><spring:message code="webdev-comp-comment"/></a>,&nbsp;&nbsp;
										<a href="#webdev-comp-acct"><spring:message code="webdev-comp-acct"/></a>,&nbsp;&nbsp;
										<a href="#webdev-comp-uaas"><spring:message code="webdev-comp-uaas"/></a>
									</p>
									<p class="">
										<spring:message code="webdev-product-content-1-3a"/>
										<br/>
										<spring:message code="webdev-product-content-1-3b"/>
									</p>
									<p class="">
										<spring:message code="webdev-product-content-1-4a"/>
										<br/>
										<a href="#webdev-fn-i18n"><spring:message code="webdev-fn-i18n"/></a>,&nbsp;&nbsp;
										<a href="#webdev-fn-mail"><spring:message code="webdev-fn-mail"/></a>,&nbsp;&nbsp;
										<a href="#webdev-fn-fileupload"><spring:message code="webdev-fn-fileupload"/></a>,&nbsp;&nbsp;
										<a href="#webdev-it-social-fb"><spring:message code="webdev-it-social-fb"/></a>,&nbsp;&nbsp;
										<a href="#webdev-it-social-tw"><spring:message code="webdev-it-social-tw"/></a>,&nbsp;&nbsp;
										<a href="#webdev-it-social-yt"><spring:message code="webdev-it-social-yt"/></a>,&nbsp;&nbsp;
										<a href="#webdev-it-ga"><spring:message code="webdev-it-ga"/></a>,&nbsp;&nbsp;
										<a href="#webdev-it-gmap"><spring:message code="webdev-it-gmap"/></a>
									</p>
								</div>
							</div>

							<hr class="invisible mt-3 mb-4">
							
							<!-- main business -->
							<h3><spring:message code="webdev-product-title-2-1"/></h3>
							
							<div class="row">
								<div class="col">
									
									<p class="">
										<spring:message code="webdev-product-content-2-1a"/><br/>
										<spring:message code="webdev-product-content-2-1b"/>
									</p>
									<p class="">
										<spring:message code="webdev-product-content-2-2a"/><br/>
										<spring:message code="webdev-product-content-2-2b"/>
									</p>
								</div>
							</div>
							
							<hr class="invisible mt-2 mb-3" id="webdev-comp-item"/>
							
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webproduct/comp-item.jpg" class="img-fluid" alt="product management" width="50%">
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="portfolio-info">
											<div class="row">
												<div class="col-md-9">
													<h4 class="heading-primary"><spring:message code="webdev-comp-item"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-comp-item-desc"/></p>
										
										<ul class="list list-inline list-icons">
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-corp"/></li>
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-catalog"/></li>
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-ecomm"/></li>
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-erp"/></li>
										</ul>
									</div>
								</div>
							</div>
							
							<hr class="short" id="webdev-comp-price"/>
							
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webproduct/comp-price.jpg" class="img-fluid" alt="pricing management" width="50%">
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="portfolio-info">
											<div class="row">
												<div class="col-md-9">
													<h4 class="heading-primary"><spring:message code="webdev-comp-price"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-comp-price-desc"/></p>
										
										<ul class="list list-inline list-icons">
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-corp"/></li>
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-catalog"/></li>
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-ecomm"/></li>
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-erp"/></li>
										</ul>
									</div>
								</div>
							</div>
							
							<hr class="short" id="webdev-comp-inventory"/>
							
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webproduct/comp-inventory.jpg" class="img-fluid" alt="inventory management">
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="portfolio-info">
											<div class="row">
												<div class="col-md-9">
													<h4 class="heading-primary"><spring:message code="webdev-comp-inventory"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-comp-inventory-desc"/></p>
										
										<ul class="list list-inline list-icons">
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-ecomm"/></li>
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-erp"/></li>
										</ul>
									</div>
								</div>
							</div>
							
							<hr class="short" id="webdev-comp-order"/>
							
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webproduct/comp-order.jpg" class="img-fluid" alt="order management">
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="portfolio-info">
											<div class="row">
												<div class="col-md-9">
													<h4 class="heading-primary"><spring:message code="webdev-comp-order"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-comp-order-desc"/></p>
										
										<ul class="list list-inline list-icons">
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-corp"/></li>
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-ecomm"/></li>
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-erp"/></li>
										</ul>
									</div>
								</div>
							</div>
							
							<hr class="short" id="webdev-comp-invoice"/>
							
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webproduct/comp-invoice.jpg" class="img-fluid" alt="invoice management">
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="portfolio-info">
											<div class="row">
												<div class="col-md-9">
													<h4 class="heading-primary"><spring:message code="webdev-comp-invoice"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-comp-invoice-desc"/></p>
										
										<ul class="list list-inline list-icons">
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-corp"/></li>
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-ecomm"/></li>
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-erp"/></li>
										</ul>
									</div>
								</div>
							</div>
							
							<hr class="short" id="webdev-comp-cart"/>
							
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webproduct/comp-cart.jpg" class="img-fluid" alt="shopping cart">
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="portfolio-info">
											<div class="row">
												<div class="col-md-9">
													<h4 class="heading-primary"><spring:message code="webdev-comp-cart"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-comp-cart-desc"/></p>
										
										<ul class="list list-inline list-icons">
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-ecomm"/></li>
										</ul>
									</div>
								</div>
							</div>
							
							<hr class="short" id="webdev-comp-pay"/>
							
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webproduct/comp-pay.jpg" class="img-fluid" alt="payment">
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="portfolio-info">
											<div class="row">
												<div class="col-md-9">
													<h4 class="heading-primary"><spring:message code="webdev-comp-pay"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-comp-pay-desc"/></p>
										
										<ul class="list list-inline list-icons">
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-corp"/></li>
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-ecomm"/></li>
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-erp"/></li>
										</ul>
									</div>
								</div>
							</div>
							
							<hr class="short" id="webdev-comp-news"/>
							
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webproduct/comp-news.jpg" class="img-fluid" alt="news management">
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="portfolio-info">
											<div class="row">
												<div class="col-md-9">
													<h4 class="heading-primary"><spring:message code="webdev-comp-news"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-comp-news-desc"/></p>
										
										<ul class="list list-inline list-icons">
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-all"/></li>
										</ul>
									</div>
								</div>
							</div>
							
							<hr class="short" id="webdev-comp-comment"/>
							
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webproduct/comp-comment.jpg" class="img-fluid" alt="comment management">
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="portfolio-info">
											<div class="row">
												<div class="col-md-9">
													<h4 class="heading-primary"><spring:message code="webdev-comp-comment"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-comp-comment-desc"/></p>
										
										<ul class="list list-inline list-icons">
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-all"/></li>
										</ul>
									</div>
								</div>
							</div>
							
							<hr class="short" id="webdev-comp-acct"/>
							
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webproduct/comp-acct.jpg" class="img-fluid" alt="account management">
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="portfolio-info">
											<div class="row">
												<div class="col-md-9">
													<h4 class="heading-primary"><spring:message code="webdev-comp-acct"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-comp-acct-desc"/></p>
										
										<ul class="list list-inline list-icons">
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-all"/></li>
										</ul>
									</div>
								</div>
							</div>
							
							<hr class="short" id="webdev-comp-uaas"/>
							
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webproduct/comp-uaas.jpg" class="img-fluid" alt="authentication athorization privileges">
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="portfolio-info">
											<div class="row">
												<div class="col-md-9">
													<h4 class="heading-primary"><spring:message code="webdev-comp-uaas"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-comp-uaas-desc"/></p>
										
										<ul class="list list-inline list-icons">
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-corp"/></li>
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-ecomm"/></li>
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-erp"/></li>
										</ul>
									</div>
								</div>
							</div>
							
							<hr class="tall"/>
							
							<!-- main business 2 -->
							<h3><spring:message code="webdev-product-title-3-1"/></h3>
							
							<div class="row">
								<div class="col">
									
									<p class="">
										<spring:message code="webdev-product-content-3-1a"/><br/>
										<spring:message code="webdev-product-content-3-1b"/>
									</p>
									<p class="">
										<spring:message code="webdev-product-content-3-2a"/><br/>
										<spring:message code="webdev-product-content-3-2b"/>
									</p>
								</div>
							</div>
							
							<hr class="invisible mt-2 mb-3" id="webdev-fn-i18n"/>
							
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webproduct/fnc-i18n.jpg" class="img-fluid" alt="i18n multi language" width="50%">
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="portfolio-info">
											<div class="row">
												<div class="col-md-9">
													<h4 class="heading-primary"><spring:message code="webdev-fn-i18n"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-fn-i18n-desc"/></p>
										
										<ul class="list list-inline list-icons">
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-all"/></li>
										</ul>
									</div>
								</div>
							</div>
							
							<hr class="invisible mt-2 mb-3" id="webdev-fn-mail"/>
							
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webproduct/fnc-email.jpg" class="img-fluid" alt="email subscribe" width="50%">
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="portfolio-info">
											<div class="row">
												<div class="col-md-9">
													<h4 class="heading-primary"><spring:message code="webdev-fn-mail"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-fn-mail-desc"/></p>
										
										<ul class="list list-inline list-icons">
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-all"/></li>
										</ul>
									</div>
								</div>
							</div>
							
							<hr class="invisible mt-2 mb-3" id="webdev-fn-fileupload"/>
							
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webproduct/fnc-fileupload.jpg" class="img-fluid" alt="upload" width="50%">
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="portfolio-info">
											<div class="row">
												<div class="col-md-9">
													<h4 class="heading-primary"><spring:message code="webdev-fn-fileupload"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-fn-fileupload-desc"/></p>
										
										<ul class="list list-inline list-icons">
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-all"/></li>
										</ul>
									</div>
								</div>
							</div>
							
							<hr class="invisible mt-2 mb-3" id="webdev-it-social-fb"/>
							
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webproduct/fnc-fb.jpg" class="img-fluid" alt="facebook" width="50%">
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="portfolio-info">
											<div class="row">
												<div class="col-md-9">
													<h4 class="heading-primary"><spring:message code="webdev-it-social-fb"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-it-social-fb-desc"/></p>
										
										<ul class="list list-inline list-icons">
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-all"/></li>
										</ul>
									</div>
								</div>
							</div>
							
							<hr class="invisible mt-2 mb-3" id="webdev-it-social-tw"/>
							
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webproduct/fnc-tw.jpg" class="img-fluid" alt="twitter" width="50%">
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="portfolio-info">
											<div class="row">
												<div class="col-md-9">
													<h4 class="heading-primary"><spring:message code="webdev-it-social-tw"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-it-social-tw-desc"/></p>
										
										<ul class="list list-inline list-icons">
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-all"/></li>
										</ul>
									</div>
								</div>
							</div>
							
							
							<hr class="invisible mt-2 mb-3" id="webdev-it-social-yt"/>
							
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webproduct/fnc-yt.jpg" class="img-fluid" alt="youtube" width="50%">
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="portfolio-info">
											<div class="row">
												<div class="col-md-9">
													<h4 class="heading-primary"><spring:message code="webdev-it-social-yt"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-it-social-yt-desc"/></p>
										
										<ul class="list list-inline list-icons">
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-all"/></li>
										</ul>
									</div>
								</div>
							</div>
							
							<hr class="invisible mt-2 mb-3" id="webdev-it-ga"/>
							
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webproduct/fnc-ga.jpg" class="img-fluid" alt="google analytics" width="50%">
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="portfolio-info">
											<div class="row">
												<div class="col-md-9">
													<h4 class="heading-primary"><spring:message code="webdev-it-ga"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-it-ga-desc"/></p>
										
										<ul class="list list-inline list-icons">
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-all"/></li>
										</ul>
									</div>
								</div>
							</div>
							
							
							<hr class="invisible mt-2 mb-3" id="webdev-it-gmap"/>
							
							<div class="col-lg-12 isotope-item mt-4 brands">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webproduct/fnc-gmap.jpg" class="img-fluid" alt="google map" width="50%">
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="portfolio-info">
											<div class="row">
												<div class="col-md-9">
													<h4 class="heading-primary"><spring:message code="webdev-it-gmap"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-it-gmap-desc"/></p>
										
										<ul class="list list-inline list-icons">
											<li class="list-inline-item"><i class="fa fa-check-circle"></i> <spring:message code="webdev-prod-type-website-all"/></li>
										</ul>
									</div>
								</div>
							</div>
							
							<hr class="invisible mt-2 mb-4">
							
							<!-- call-to-action -->
							<section class="call-to-action featured featured-primary mb-5">
								<div class="col-sm-9 col-lg-9">
									<div class="call-to-action-content">
										<p class="mb-0"><spring:message code="common-cta-title"/></p>
									</div>
								</div>
								<div class="col-sm-3 col-lg-3">
									<div class="call-to-action-btn">
										<a href="/support/contactus.html?lang=${loc}" target="_blank" class="btn btn-lg btn-primary"><spring:message code="common-cta-btn"/></a>
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