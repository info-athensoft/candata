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
<c:set var="pageName" value="webservice"></c:set>
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
								<h1><spring:message code="page-title-webdev-websupport"/></h1>
							</div>
						</div>
					</div>
				</section>
			
				<div class="container">

					<div class="row">
						<div class="col-lg-3 order-2 order-lg-1">
							<aside class="sidebar">

								<h4 class="heading-primary"><spring:message code="webdev-sidebar-title-1"/></h4>

								<ul class="nav nav-list flex-column mb-4 sort-source" data-sort-id="portfolio" data-option-key="filter" data-plugin-options="{'layoutMode': 'fitRows', 'filter': '*'}">
									<li class="nav-item" data-option-value="*"><a class="nav-link" href="${webapp_name}/webdev/webdev.html?lang=${loc}" target="_blank"><spring:message code="webdev-sidebar-link-1"/></a></li>
									<li class="nav-item" data-option-value=".websites"><a class="nav-link" href="${webapp_name}/webdev/webplan.html?lang=${loc}" target="_blank"><spring:message code="webdev-sidebar-link-2"/></a></li>
									<li class="nav-item" data-option-value=".logos"><a class="nav-link" href="${webapp_name}/webdev/webcustom.html?lang=${loc}" target="_blank"><spring:message code="webdev-sidebar-link-3"/></a></li>
									<li class="nav-item" data-option-value=".brands"><a class="nav-link active" href="#"><spring:message code="webdev-sidebar-link-4"/></a></li>
									<li class="nav-item" data-option-value=".brands"><a class="nav-link" href="${webapp_name}/webdev/product.html?lang=${loc}" target="_blank"><spring:message code="webdev-sidebar-link-5"/></a></li>
									<li class="nav-item" data-option-value=".medias"><a class="nav-link" href="${webapp_name}/webdev/case.html?lang=${loc}" target="_blank"><spring:message code="webdev-sidebar-link-6"/></a></li>
									<li class="nav-item" data-option-value=".medias"><a class="nav-link" href="${webapp_name}/webdev/pricing.html?lang=${loc}" target="_blank"><spring:message code="webdev-sidebar-link-7"/></a></li>
									<li class="nav-item" data-option-value=".medias"><a class="nav-link" href="${webapp_name}/support/faq-webdev.html?lang=${loc}" target="_blank"><spring:message code="webdev-sidebar-link-8"/></a></li>
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
							<h3><spring:message code="webdev-websupport-title-1-1"/></h3>
							<div class="row">
								<div class="col">
									<p class="">
										<spring:message code="webdev-websupport-content-1-1"/>
									</p>
								</div>
							</div>

							<hr class="invisible mt-3 mb-4">
							
							<!-- main business -->
							<h3><spring:message code="webdev-websupport-title-2-1"/></h3>
							
							<div class="row">
								<div class="col">
									<p class="">
										<spring:message code="webdev-websupport-content-2-1"/>
									</p>
								</div>
							</div>
							
							<hr class="invisible mt-2 mb-3" id=""/>
							
							<div class="col-lg-12 isotope-item mt-4">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webservice/domain.jpg" class="img-fluid" alt="" width="50%">
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
													<h4 class="heading-primary"><spring:message code="webdev-websupport-service-domain-title"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-websupport-service-domain-desc"/></p>
										
										<p></p>
									</div>
								</div>
							</div>
							
							<hr class="short" id=""/>
							
							<div class="col-lg-12 isotope-item mt-4">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webservice/hosting.jpg" class="img-fluid" alt="" width="50%">
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
													<h4 class="heading-primary"><spring:message code="webdev-websupport-service-hosting-title"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-websupport-service-hosting-desc"/></p>
										
										<p></p>
									</div>
								</div>
							</div>
							
							<hr class="short" id=""/>
							
							<div class="col-lg-12 isotope-item mt-4">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webservice/datamaintenance.jpg" class="img-fluid" alt="">
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
													<h4 class="heading-primary"><spring:message code="webdev-websupport-service-data_maintenance-title"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-websupport-service-data_maintenance-desc"/></p>
										
										<p></p>
									</div>
								</div>
							</div>
							
							<hr class="short" id=""/>
							
							<div class="col-lg-12 isotope-item mt-4">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webservice/contentmaintenance.jpg" class="img-fluid" alt="">
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
													<h4 class="heading-primary"><spring:message code="webdev-websupport-service-content_maintenance-title"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-websupport-service-content_maintenance-desc"/></p>
										
										<p></p>
									</div>
								</div>
							</div>
							
							<hr class="short" id=""/>
							
							<div class="col-lg-12 isotope-item mt-4">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webservice/systemmaintenance.jpg" class="img-fluid" alt="">
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
													<h4 class="heading-primary"><spring:message code="webdev-websupport-service-system_maintenance-title"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-websupport-service-system_maintenance-desc"/></p>
										
										<p></p>
									</div>
								</div>
							</div>
							
							<hr class="short" id=""/>
							
							<div class="col-lg-12 isotope-item mt-4">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webservice/projectplanning.jpg" class="img-fluid" alt="">
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
													<h4 class="heading-primary"><spring:message code="webdev-websupport-service-project_planning-title"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-websupport-service-project_planning-desc"/></p>
										
										<p></p>
									</div>
								</div>
							</div>
							
							<hr class="short" id=""/>
							
							<div class="col-lg-12 isotope-item mt-4">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webservice/techconsulting.jpg" class="img-fluid" alt="">
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
													<h4 class="heading-primary"><spring:message code="webdev-websupport-service-tech_consulting-title"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-websupport-service-tech_consulting-desc"/></p>
										
										<p></p>
									</div>
								</div>
							</div>
							
							<hr class="short" id=""/>
							
							<div class="col-lg-12 isotope-item mt-4">
								<div class="row">
									<div class="col-lg-4">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten thumb-info-no-borders">
													<span class="thumb-info-wrapper">
														<img src="${img_dir}/webservice/techtraining.jpg" class="img-fluid" alt="">
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
													<h4 class="heading-primary"><spring:message code="webdev-websupport-service-tech_training-title"/></h4>	
												</div>
												<div class="col-md-3 text-center text-md-right">
													<!-- <a href="#" class="btn btn-primary btn-xs">Learn More</a> -->
												</div>
											</div>
										</div>

										<p class="mt-3"><spring:message code="webdev-websupport-service-tech_training-desc"/></p>
										
										<p></p>
									</div>
								</div>
							</div>
						
							<hr class="invisible mt-4"/>
							
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