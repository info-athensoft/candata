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
<c:set var="pageName" value="graphicdemo"></c:set>
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
								<h1><spring:message code="page-title-graphic-demo"/></h1>
							</div>
						</div>
					</div>
				</section>
			
			
				
				<div class="container">

					<div class="row">
						<div class="col-lg-3 order-2 order-lg-1">
							<aside class="sidebar">

								<h4 class="heading-primary"><spring:message code="graphic-demo-sidebar-title-nav"/></h4>

								<ul class="nav nav-list flex-column mb-4 sort-source" data-sort-id="portfolio" data-option-key="filter" data-plugin-options="{'layoutMode': 'fitRows', 'filter': '*'}">
									<li class="nav-item" data-option-value="*"><a class="nav-link active" href="#"><spring:message code="graphic-demo-sidebar-link-all"/></a></li>
									<li class="nav-item" data-option-value=".catalog"><a class="nav-link" href="#"><spring:message code="graphic-demo-sidebar-link-catalog"/></a></li>
									<li class="nav-item" data-option-value=".brochure"><a class="nav-link" href="#"><spring:message code="graphic-demo-sidebar-link-brochure"/></a></li>
									<li class="nav-item" data-option-value=".menu"><a class="nav-link" href="#"><spring:message code="graphic-demo-sidebar-link-menu"/></a></li>
									<li class="nav-item" data-option-value=".logo"><a class="nav-link" href="#"><spring:message code="graphic-demo-sidebar-link-logo"/></a></li>
									<li class="nav-item" data-option-value=".package"><a class="nav-link" href="#"><spring:message code="graphic-demo-sidebar-link-package"/></a></li>
									<li class="nav-item" data-option-value=".magazine"><a class="nav-link" href="#"><spring:message code="graphic-demo-sidebar-link-magazine"/></a></li>
									<li class="nav-item" data-option-value=".mockprod"><a class="nav-link" href="#"><spring:message code="graphic-demo-sidebar-link-mockprod"/></a></li>
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
							<div class="sort-destination-loader sort-destination-loader-showing">
								<div class="row portfolio-list sort-destination image-gallery lightbox" data-sort-id="portfolio" data-plugin-options="{'delegate': 'a.lightbox-portfolio', 'type': 'image', 'gallery': {'enabled': true}}">
									
									<div class="col-lg-6 isotope-item mockprod">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/mockprod-ipods.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/mockprod-ipods.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">iPods</span>
															<span class="thumb-info-type">Mock Product</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item magazine">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/magazine1.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/magazine1.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Celebrity Interview</span>
															<span class="thumb-info-type">Magazine</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item magazine">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/magazine2.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/magazine2.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Celebrity Interview</span>
															<span class="thumb-info-type">Magazine</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item magazine">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/magazine3.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/magazine3.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Celebrity Interview</span>
															<span class="thumb-info-type">Magazine</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item magazine">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/magazine4.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/magazine4.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Celebrity Interview</span>
															<span class="thumb-info-type">Magazine</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item magazine">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/magazine5.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/magazine5.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Celebrity Interview</span>
															<span class="thumb-info-type">Magazine</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									
									
									<div class="col-lg-6 isotope-item logo">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/logo-workshop-box.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/logo-workshop-box.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Box</span>
															<span class="thumb-info-type">Logo</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item logo">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/logo-workshop-mug.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/logo-workshop-mug.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Mug</span>
															<span class="thumb-info-type">Logo</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item logo">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/logo-workshop-plate.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/logo-workshop-plate.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Plate</span>
															<span class="thumb-info-type">Logo</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item logo">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/logo-workshop-tshirt.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/logo-workshop-tshirt.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">T-Shirt</span>
															<span class="thumb-info-type">Logo</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item brochure">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/brochure-fiat.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/brochure-fiat.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Auto</span>
															<span class="thumb-info-type">Brochure</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item brochure">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/brochure-fiat2.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/brochure-fiat2.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Auto</span>
															<span class="thumb-info-type">Brochure</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item brochure">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/brochure-fiatcover.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/brochure-fiatcover.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Auto</span>
															<span class="thumb-info-type">Brochure</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item poster">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/poster-audi.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/poster-audi.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Auto</span>
															<span class="thumb-info-type">Poster</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item logo">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/logo-babycarrot1.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/logo-babycarrot1.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Baby Carrot</span>
															<span class="thumb-info-type">Logo</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item logo">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/logo-babycarrot2.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/logo-babycarrot2.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Baby Carrot</span>
															<span class="thumb-info-type">Logo</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item logo">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/logo-babycarrot3.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/logo-babycarrot3.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Baby Carrot</span>
															<span class="thumb-info-type">Logo</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									
									<div class="col-lg-6 isotope-item brochure">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/TypeSpecimen-Optima1.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/TypeSpecimen-Optima1.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Optima</span>
															<span class="thumb-info-type">Type Specimen</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item brochure">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/TypeSpecimen-Optima2.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/TypeSpecimen-Optima2.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Optima</span>
															<span class="thumb-info-type">Type Specimen</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item brochure">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/TypeSpecimen-Optima3.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/TypeSpecimen-Optima3.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Optima</span>
															<span class="thumb-info-type">Type Specimen</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									
									<div class="col-lg-6 isotope-item catalog">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/Catalog-Furniture.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/Catalog-Furniture.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Furniture</span>
															<span class="thumb-info-type">Catalog</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item brochure">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/RecipeBook-Pastry.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/RecipeBook-Pastry.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Pastry Recipe</span>
															<span class="thumb-info-type">Brochure</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item menu">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/Menu-Restaurant.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/Menu-Restaurant.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Restaurant</span>
															<span class="thumb-info-type">Menu</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item logo">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/logo-rivalgames.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/logo-rivalgames.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Rival Games</span>
															<span class="thumb-info-type">Logo</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									
									
									<div class="col-lg-6 isotope-item catalog">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/catalog-zhenimport1.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/catalog-zhenimport1.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Zhenimport</span>
															<span class="thumb-info-type">Catalog</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item catalog">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/catalog-zhenimport2.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/catalog-zhenimport2.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Zhenimport</span>
															<span class="thumb-info-type">Catalog</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item package">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/noodle-allflavor.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/noodle-allflavor.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Instant Noodle</span>
															<span class="thumb-info-type">Package</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item package">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/noodle-chicken.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/noodle-chicken.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Instant Noodle</span>
															<span class="thumb-info-type">Package</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item package">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/noodle-seafood.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/noodle-seafood.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Instant Noodle</span>
															<span class="thumb-info-type">Package</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6 isotope-item package">
										<div class="portfolio-item image-gallery-item">
											<a href="${img_dir}/graphic/demo/noodle-veggie.jpg" class="lightbox-portfolio">
												<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/graphic/demo/noodle-veggie.jpg" class="img-fluid" alt="">
														<span class="thumb-info-title">
															<span class="thumb-info-inner">Instant Noodle</span>
															<span class="thumb-info-type">Package</span>
														</span>
														<span class="thumb-info-action">
															<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									
								</div>
							</div>
							
							<!-- announcement -->
							<hr class="long"/>
							<div class="post-content">
								<h3><spring:message code="graphic-demo-title-declaration"/></h3>
								<div class="row">
									<div class="col-lg-12">
										<ol class="list list-ordened list-ordened-style-3">
											<li><spring:message code="graphic-demo-title-declaration-content"/></li>
										</ol>
									</div>
								</div>
							</div>
							<!-- END announcement -->
							
							
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