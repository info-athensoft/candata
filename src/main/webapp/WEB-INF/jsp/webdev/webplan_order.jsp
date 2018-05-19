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
<c:set var="pageName" value="webplan_order"></c:set>
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
								<h1><spring:message code="page-title-webdev-webplan-order"/></h1>
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
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/webdev/product.html?lang=${loc}" target="_blank"><spring:message code="webdev-sidebar-link-5"/></a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/webdev/case.html?lang=${loc}" target="_blank"><spring:message code="webdev-sidebar-link-6"/></a></li>
									<li class="nav-item"><a class="nav-link active" href="#"><spring:message code="webdev-sidebar-link-7"/></a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/support/faq-webdev.html?lang=${loc}" target="_blank"><spring:message code="webdev-sidebar-link-8"/></a></li>
								</ul>

								<hr class="invisible mt-5 mb-2">

								<h4 class="heading-primary"><spring:message code="webdev-sidebar-title-2"/></h4>
								<p><spring:message code="webdev-sidebar-form-text"/>&nbsp;&nbsp;
									<a href="/support/contactus.html?lang=${loc}" target="_blank"><spring:message code="webdev-sidebar-form-btn"/></a></p>

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
							<h3><spring:message code="webdev-webplan-order-title-1-1"/></h3>
							<div class="row">
								<div class="col">
									<p class="">
										<spring:message code="webdev-webplan-order-content-1-1"/>
									</p>
								</div>
							</div>
							<div class="row">
								<!-- plan 1 -->
								<div class="col-sm-12" id="plan-1">
									<div class="featured-box featured-box-primary text-left mt-3 mt-lg-4">
										<div class="box-content">
											<h4 class="heading-primary text-uppercase mb-3"><spring:message code="webdev-webplan-order-header-1"/></h4>
											<div class="form-row">
												<div class="col-lg-9">
													<div class="checkbox">
														<label>
															<input type="checkbox" value="bg1" id="biz-goal-0" checked="checked" disabled="disabled">
															<spring:message code="webdev-webplan-order-item-1_1"/>
														</label>
													</div>
						
													<div class="checkbox">
														<label>
															<input type="checkbox" value="bg2" id="biz-goal-1" checked="checked" disabled="disabled">
															<spring:message code="webdev-webplan-order-item-1_2"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="bg3" id="biz-goal-2" checked="checked" disabled="disabled">
															<spring:message code="webdev-webplan-order-item-1_3"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="bg4" id="biz-goal-3" checked="checked" disabled="disabled">
															<spring:message code="webdev-webplan-order-item-1_4"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="bg5" id="biz-goal-4" checked="checked" disabled="disabled">
															<spring:message code="webdev-webplan-order-item-1_5"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="bg6" id="biz-goal-5" checked="checked" disabled="disabled">
															<spring:message code="webdev-webplan-order-item-1_6"/>
														</label>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- END plan 1 -->
								
								<!-- plan 2 -->
								<div class="col-sm-12" id="plan-2">
									<div class="featured-box featured-box-primary text-left mt-3 mt-lg-4">
										<div class="box-content">
											<h4 class="heading-primary text-uppercase mb-3"><spring:message code="webdev-webplan-order-header-2"/></h4>
											<div class="form-row">
												<div class="col-lg-9">
													<div class="checkbox">
														<label>
															<input type="checkbox" value="bg1" id="biz-goal-0" checked="checked" disabled="disabled">
															<spring:message code="webdev-webplan-order-item-2_1"/>
														</label>
													</div>
						
													<div class="checkbox">
														<label>
															<input type="checkbox" value="bg2" id="biz-goal-1" checked="checked" disabled="disabled">
															<spring:message code="webdev-webplan-order-item-2_2"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="bg3" id="biz-goal-2" checked="checked" disabled="disabled">
															<spring:message code="webdev-webplan-order-item-2_3"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="bg4" id="biz-goal-3" checked="checked" disabled="disabled">
															<spring:message code="webdev-webplan-order-item-2_4"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="bg5" id="biz-goal-4" checked="checked" disabled="disabled">
															<spring:message code="webdev-webplan-order-item-2_5"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="bg6" id="biz-goal-5" checked="checked" disabled="disabled">
															<spring:message code="webdev-webplan-order-item-2_6"/>
														</label>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- END plan 2 -->
								
								<!-- plan 3 -->
								<div class="col-sm-12" id="plan-3">
									<div class="featured-box featured-box-primary text-left mt-3 mt-lg-4">
										<div class="box-content">
											<h4 class="heading-primary text-uppercase mb-3"><spring:message code="webdev-webplan-order-header-3"/></h4>
											<div class="form-row">
												<div class="col-lg-9">
													<div class="checkbox">
														<label>
															<input type="checkbox" value="bg1" id="biz-goal-0" checked="checked" disabled="disabled">
															<spring:message code="webdev-webplan-order-item-3_1"/>
														</label>
													</div>
						
													<div class="checkbox">
														<label>
															<input type="checkbox" value="bg2" id="biz-goal-1" checked="checked" disabled="disabled">
															<spring:message code="webdev-webplan-order-item-3_2"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="bg3" id="biz-goal-2" checked="checked" disabled="disabled">
															<spring:message code="webdev-webplan-order-item-3_3"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="bg4" id="biz-goal-3" checked="checked" disabled="disabled">
															<spring:message code="webdev-webplan-order-item-3_4"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="bg5" id="biz-goal-4" checked="checked" disabled="disabled">
															<spring:message code="webdev-webplan-order-item-3_5"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="bg6" id="biz-goal-5" checked="checked" disabled="disabled">
															<spring:message code="webdev-webplan-order-item-3_6"/>
														</label>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- END plan 3 -->
								
								<!-- page content -->
								<div class="col-sm-12">
									<div class="featured-box featured-box-primary text-left mt-3 mt-lg-4">
										<div class="box-content">
											<h4 class="heading-primary text-uppercase mb-3"><spring:message code="webdev-webplan-order-header-4"/></h4>
											
											<div class="form-row">
												<div class="col-lg-4">
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="page-topic-0" checked="checked">
															<spring:message code="webdev-webplan-order-page-1"/>
														</label>
													</div>
						
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="page-topic-1" checked="checked">
															<spring:message code="webdev-webplan-order-page-2"/>
														</label>
													</div>
												</div>
												
												<div class="col-lg-4">	
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="page-topic-2" checked="checked">
															<spring:message code="webdev-webplan-order-page-3"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="page-topic-3" checked="checked">
															<spring:message code="webdev-webplan-order-page-4"/>
														</label>
													</div>
												</div>
												
												<div class="col-lg-4">	
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="page-topic-4" checked="checked">
															<spring:message code="webdev-webplan-order-page-5"/>
														</label>
													</div>
													
													<div class="checkbox">
														<label>
															<input type="checkbox" value="" id="page-topic-5" checked="checked">
															<spring:message code="webdev-webplan-order-page-6"/>
														</label>
													</div>
												</div>
											</div>
											
											<div class="form-row">
												<label class="col-lg-3 control-label text-lg-left pt-2"><spring:message code="webdev-webplan-order-req-1"/></label>
												<div class="form-group col-lg-1">
													<input type="text" value="0" class="form-control form-control-sm mt-2" id="extraPageNumber">
												</div>
											</div>
											<div class="form-row">	
												<label class="col-lg-3 control-label text-lg-left pt-2"><spring:message code="webdev-webplan-order-req-2"/></label>
												<div class="form-group col-lg-1">
													<input type="text" value="0" class="form-control form-control-sm mt-2" id="extraLangNumber">
												</div>
											</div>
											<div class="form-row">	
												<label class="col-lg-3 control-label text-lg-left pt-2"><spring:message code="webdev-webplan-order-req-3"/></label>
												<div class="form-group col-lg-6">
													<textarea rows="3" class="form-control form-control-sm mt-2" id="pageTopicDesc"></textarea>
												</div>
											</div>
											
										</div>
									</div>
								</div>
								<!-- END page content -->
								
								<!-- other req -->
								<div class="col-sm-12">
									<div class="featured-box featured-box-primary text-left mt-3 mt-lg-4">
										<div class="box-content">
											<h4 class="heading-primary text-uppercase mb-3"><spring:message code="webdev-webplan-order-header-5"/></h4>
											<div class="form-row">
												<label class="col-lg-3 control-label text-lg-left pt-2"><spring:message code="webdev-webplan-order-req-4"/></label>
												<div class="form-group col-lg-6">
													<textarea rows="6" class="form-control form-control-sm mt-2" id="otherReqDesc"></textarea>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- END other req -->
								
							</div>
							<!-- END ROW -->
							
							<hr class="invisible mt-3 mb-2"/>
							<div class="row">
								<label class="col-lg-2 pt-2 text-lg-right"><spring:message code="pricing-form-from-direction"/></label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="customerName" placeholder='<spring:message code="pricing-form-from-customer"/>'/></div>
								
								<!--  <label class="col-lg-1 pt-2 text-lg-right">@</label> -->
								<div class="col-lg-4">
									<input type="text" class="form-control" id="customerEmail" placeholder='<spring:message code="pricing-form-from-email"/>'/></div>
									
								<div class="col-lg-2">
									<a href="javascript:void(0);" class="btn btn-primary" onclick="placeOrder();"><spring:message code="webdev-webplan-order-btn-1"/></a></div>
								
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
											<p><a href="" class="btn btn-light"><spring:message code="common-faq-btn"/></a></p>
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
											<p><a href="" class="btn btn-light"><spring:message code="common-contactus-btn"/></a></p>
										</div>
									</div>
								</div>
							</div>
							<!-- END support -->
							
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
		$(document).ready(function(){  
		     $("#plan-1").hide();
		     $("#plan-2").hide();
		     $("#plan-3").hide();
		     
		     var webplanNo = '${webplanNo}';
		     
		     //alert(webplanNo);
		     
		     if(webplanNo=='3'){
		    	 $("#page-topic-5").prop('checked', true);
		     }else{
		    	 $("#page-topic-5").prop('checked', false);
		     }
		     
		     $("#plan-"+webplanNo).show();
		}); 
		
		
		function placeOrder(){
			
			var strWebPlan = "Web Plan - ";
			var webplanNo = '${webplanNo}';
			if(webplanNo=='1'){
				strWebPlan += "One-page site";
			}
			if(webplanNo=='2'){
				strWebPlan += "Corporate site";
			}
			if(webplanNo=='3'){
				strWebPlan += "Catalog site";
			}
			
			//page topic
			var pagetopic = new Array(6);
			pagetopic[0] = "home";
			pagetopic[1] = "about us";
			pagetopic[2] = "introduction to product or service";
			pagetopic[3] = "feature";
			pagetopic[4] = "contact us";
			pagetopic[5] = "product or service list";
			
			var strPagetopic = "";
			
			var hasChecked = false;
			for(var i=0; i<pagetopic.length; i++){
				if($("#page-topic-"+i).is(':checked')){
					hasChecked = true;
					strPagetopic += pagetopic[i]+"<br/>";
				}
			}
			
			//if(strBizgoal.replace(/(^\s*)|(\s*$)/g, "").length ==0){
			if(!hasChecked){
				strPagetopic = "No page topic selected.<br/>"
			}
			
			
			//end of page topic
			
			//other req
			var extraPageNumber = "Extra page number: "+$("#extraPageNumber").val();
			var extraLangNumber = "Extra language number: "+$("#extraLangNumber").val();
			var pageTopicDesc 	= "Web page topic list: "+$("#pageTopicDesc").val();
			var otherReqDesc 	= "Other requirement description: "+$("#otherReqDesc").val();
			
			//alert(strPagetopic + extraPageNumber+ " "+extraLangNumber +" "+pageTopicDesc+" "+otherReqDesc);
			
			//user info
			var customerName = $("#customerName").val();
			var customerEmail = $("#customerEmail").val();
			
			customerName=encodeURI(customerName);
			customerEmail=encodeURI(customerEmail);
			
			var orderStr = strWebPlan+"<br/>"+strPagetopic+"<br/>"+extraPageNumber+"<br/>"+extraLangNumber+"<br/>"+pageTopicDesc+"<br/>"+otherReqDesc;
			orderStr = encodeURI(orderStr);
			
					
			var lang = '${loc}';
			$.ajax({
				type	:	"post",
				url		:	"/webdev/webplan/order?orderStr="+orderStr+"&lang="+lang+"&customerName="+customerName+"&customerEmail="+customerEmail,
				dataType:	"html",
				//data	: {	quoteStr : quoteStr },
				//contentType: 'text/html; charset=utf-8',
				timeout : 5000,
				success:function(data){
					window.location.href="/webdev/webplan.html?lang="+lang;				
				}		
			});
		}
		
		
		
			
		
		
		</script>
	</body>
</html>