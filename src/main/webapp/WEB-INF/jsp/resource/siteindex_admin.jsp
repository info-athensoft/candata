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
<c:set var="pageName" value="webcase"></c:set>
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
		
		<title><spring:message code="head-title-resource"/></title>

		<meta name="keywords" content="<spring:message code='seo-keywords-webcase'/>" />
		<meta name="description" content="<spring:message code='seo-desc-webcase'/>">
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
			.text-sm{
				font-size:0.9em !important;
			}
		</style>
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
									<li class="active"><a href="${webapp_name}/rsc/siteindex.html?lang=${loc}"><spring:message code="menu-resource"/></a></li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<h1><spring:message code="page-title-rsc-siteindex"/></h1>
							</div>
						</div>
					</div>
				</section>
			
				
				<div class="container">

					<div class="row">
						<div class="col-lg-3 order-2 order-lg-1">
							<aside class="sidebar">
								<h4 class="heading-primary"><spring:message code="rsc-sidebar-title-siteindex"/></h4>
								
								<form id="siteIndexForm" action="/rsc/siteindexes/create" method="POST">
									
									<div class="form-row">
										<div class="form-group col">
											<input type="hidden" value="admin" name="siteReferrer" id="siteStatus">
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col">
											<label><spring:message code="rsc-siteindex-form-url"/> *</label>
											<input type="text" value="" data-msg-required="website base url" maxlength="100" class="form-control form-control-sm" name="siteUrl" id="siteUrl" required placeholder="www.yourname.com">
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col">
											<label>Privacy Type *</label>
											<select class="form-control form-control-sm" name="siteStatus">
												<option value="1" selected>Public</option>
												<option value="2">Private</option>
											</select>
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col">
											<label><spring:message code="rsc-siteindex-form-name"/> *</label>
											<input type="text" value="" data-msg-required="website name" maxlength="100" class="form-control form-control-sm" name="siteName" id="siteName" required placeholder="your website name">
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col">
											<label><spring:message code="rsc-siteindex-form-desc"/> *</label>
											<textarea maxlength="5000" data-msg-required="Website description" rows="3" class="form-control form-control-sm" name="siteDesc" id="siteDesc" required></textarea>
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col">
											<input type="submit" value='<spring:message code="rsc-siteindex-form-btn-submit"/>' class="btn btn-primary mb-4" data-loading-text="Submitting...">

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
								
								<!-- 
								<hr class="invisible mt-5 mb-2">
								
								<h4 class="heading-primary"><spring:message code="webdev-case-sidebar-filter-title"/></h4>

								<ul class="nav nav-list flex-column mb-4 sort-source" data-sort-id="portfolio" data-option-key="filter" data-plugin-options="{'layoutMode': 'fitRows', 'filter': '*'}">
									<li class="nav-item" data-option-value="*"><a class="nav-link" href="#"><spring:message code="webdev-case-sidebar-filter-item-0"/></a></li>
									<li class="nav-item" data-option-value=".onepagesite"><a class="nav-link" href="#"><spring:message code="webdev-case-sidebar-filter-item-1"/></a></li>
									<li class="nav-item" data-option-value=".corporatesite"><a class="nav-link" href="#"><spring:message code="webdev-case-sidebar-filter-item-2"/></a></li>
									<li class="nav-item" data-option-value=".catalogsite"><a class="nav-link" href="#"><spring:message code="webdev-case-sidebar-filter-item-3"/></a></li>
									
								</ul>

								<hr class="invisible mt-5 mb-2">
								 -->
								 
								<h4 class="heading-primary"><spring:message code="rsc-sidebar-title-nav"/></h4>

								<ul class="nav nav-list flex-column mb-4 sort-source">
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/rsc/siteindexes.html?lang=${loc}" target="_blank"><spring:message code="rsc-sidebar-link-siteindex"/></a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/rsc/siteindexes.html?lang=${loc}" target="_blank"><spring:message code="rsc-sidebar-link-download"/></a></li>
								</ul>
							</aside>
						</div>
						
						<!-- case show -->
						<div class="col-lg-9 order-1 order-lg-2">
							<div class="toggle toggle-primary toggle-sm" data-plugin-toggle>
								<c:forEach items="${listSiteIndex}" var="siteindex">
									<section class="toggle">
										<label><img alt="" src="${img_dir}/icon/favicon.ico" width="20"/> ${siteindex.siteName} &nbsp;&nbsp;&nbsp;&nbsp; [${siteindex.siteUrl}]</label>
										<div class="toggle-content">
											<p class="text-sm"><i class="fa fa-tag"></i>&nbsp;&nbsp;${siteindex.siteKeyword}<br/>${siteindex.siteDesc}</p>
										</div>
									</section>
								</c:forEach>
							</div>
						</div>
						<!-- END case show -->
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