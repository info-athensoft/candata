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
<c:set var="demo_img_dir" value="/images/event"/>
<c:set var="img_dir" value="/images"/>


<c:set var="theme1" value="arone-classic"/>
<c:set var="theme2" value="arone-innovative"/>
<c:set var="theme3" value="arone-partical"/>
<c:set var="theme4" value="canvas-default"/>
<c:set var="theme5" value="canvas-fullwidth"/>
<c:set var="theme6" value="canvas-register"/>
<c:set var="theme7" value="canvas-slider"/>
<c:set var="theme8" value="porto-agency-1"/>
<c:set var="theme9" value="porto-event-1"/>
<c:set var="theme10" value="synx-classic"/>
<c:set var="theme11" value="synx-corporate-2"/>
<c:set var="theme12" value="synx-corporate"/>

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

		<meta name="keywords" content="live demo, demo"/>
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
		
		<style>
		/* Page Header Custom - Create your Own */
		.page-header.custom-product {
			background-image: url(${demo_img_dir}/event-bg.jpg);
			background-repeat: no-repeat;
			background-color: #999;
			border-top: 5px solid #888;
			padding: 0;
			overflow: hidden;
			background-size:100% auto;
		}
		</style>

	</head>
	<body>
		<div class="body">
			<!-- header -->
			<jsp:include page="${inc_dir}/header_inc.jsp"></jsp:include>
			
			
			<div role="main" class="main">

				<section class="page-header custom-product">
					<div class="container">
						<div class="row">
							<div class="col-sm-7 py-4">
								<h1>欢迎参加 <strong>Athensoft 三周年庆系列活动</strong></h1>
								<p class="lead">我们在活动期间倾情为新老顾客和朋友提供各种免费和打折服务礼包，借此感谢大家一直以来对我们的关心和支持。</p>
								<!--  <a href="/support/contactus.html?lang=${loc}" target="_blank" class="btn btn-light btn-lg mb-5">现在联系</a> -->
								<a href="/index.html?lang=${loc}" target="_blank" class="btn btn-light btn-lg mb-5">返回首页</a>
								
							</div>
							<!--
							<div class="col-sm-5 align-items-end justify-content-end d-flex">
								 <img class="img-fluid" alt="" src="${img_dir}/custom-header-bg.jpg"> 
							</div> -->
						</div>
					</div>
				</section>
				
				<hr class="invisible mt-5 mb-2"/> 
				
				<div class="row">
					<div class="col-lg-12 text-center">
						<h2 class="mt-2 mb-0">活动第二波 <strong>超值精美单页形象网站</strong> </h2>
						<p class="lead"> 5折优惠  + 附赠礼包
 							<!-- <span class="alternative-font text-4">... all live demos included!</span>  -->
 						</p>
 						<div class="alert alert-info alert-lg">
 							<p>活动时间：2018-4-2至 2018-4-15 23:59:59</p>
 							<p>活动价格：只要$179+tx   （原价$359+tx）</p>
 							<p><strong>附赠礼包：</strong></p>
							<p>免费响应式精美设计12选1</p>
							<p>首年免费发布（第二年起CAD$10/月）</p>
							<p>赠送价值CAD$180维护服务优惠券</p>
							
 						</div>
						
 						<div class="row">
 							<div class="col-lg-3 text-left"></div>
 							<div class="col-lg-3 text-left">
							
							
							<p><strong>活动流程：</strong></p>
							<ul class="list list-icons">
								<li><i class="fa fa-caret-right"></i>微信或邮件报名</li>
								<li><i class="fa fa-caret-right"></i>注明标题"参加周年庆活动2"</li>
								<li><i class="fa fa-caret-right"></i>明确选择模板</li>
								<li><i class="fa fa-caret-right"></i>接收确认信</li>
								<li><i class="fa fa-caret-right"></i>在线付款</li>
								<li><i class="fa fa-caret-right"></i>电邮提交完整的文字和图片</li>
								<li><i class="fa fa-caret-right"></i>等待制作</li>
								<li><i class="fa fa-caret-right"></i>交付使用</li>
							</ul>
							
						</div>
						
						<div class="col-lg-3 text-left">
							<p><strong>活动说明：</strong></p>
							<ul class="list list-icons">
								<li><i class="fa fa-caret-right"></i>顾客须提交完整的文字内容和相关图片</li>
								<li><i class="fa fa-caret-right"></i>顾客须保证所提交文字内容完全正确</li>
								<li><i class="fa fa-caret-right"></i>顾客自行负责文案、翻译及校对</li>
								<li><i class="fa fa-caret-right"></i>内容或图片不足引起的延时不计算制作时间内</li>
								<li><i class="fa fa-caret-right"></i>最长制作时间48小时</li>
								<li><i class="fa fa-caret-right"></i>我们保留一切对此项活动解释权</li>
							</ul>
							
						</div>
						
 						<div class="col-lg-3 text-left"></div>
 						
 						<div class="col-lg-12 text-center">
	 						<div class="alert alert-info">
	 							<p><strong>联系我们：</strong></p>
								<p>
									微信：Athens314 &nbsp;&nbsp;&nbsp;&nbsp;邮箱：info@athensoft.com<br/>
								 	活动首页：www.athensoft.com/event/onepage.html<br/>
									官网：www.athensoft.com</p>
								<img src="${img_dir}/logo/wechat-qr.jpg" alt="wechat qrcode" width="10%"/>
	 						</div>
 						</div>
 						
 						
 					</div>
						
					</div>
				</div>
				
				<section class="section section-no-border section-default m-0 pt-5" id="demos">
					<div class="container-fluid sample-item-container">
						<div class="row">
							<div class="col-lg-12 text-center">
								<h2 class="mt-2 mb-0"> 单页网站主题模板 <strong>12 选 1</strong></h2>
								<p class="lead"></p>
								<!-- 
								<a class="open-demo-options btn btn-3d btn-xl btn-quaternary mt-3 mb-2" href="#mainDemos">VIEW MAIN DEMO <i class="ml-3 fa fa-long-arrow-right"></i></a>
								 -->
							</div>
						</div>
				
						<div class="row portfolio-list sort-destination" data-sort-id="portfolio">
							<div class="col-lg-4 isotope-item corporatesite">
								<div class="portfolio-item">
									<a href="http://www.athensoft.com${demo_img_dir}/theme/big/${theme1}.jpg">
										<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
											<span class="thumb-info-wrapper">
												<img src="${demo_img_dir}/theme/${theme1}.jpg" class="img-fluid" alt="">
												
												<span class="thumb-info-action">
													<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
												</span>
											</span>
										</span>
									</a>
									<div style="text-align:center;">
										<p></p>
										<span class="sample-item-description"><h5>${theme1}</h5></span>
									</div>
								</div>
							</div>
							
							<div class="col-lg-4 isotope-item corporatesite">
								<div class="portfolio-item">
									<a target="_blank" href="http://www.athensoft.com${demo_img_dir}/theme/big/${theme2}.jpg">
										<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
											<span class="thumb-info-wrapper">
												<img src="${demo_img_dir}/theme/${theme2}.jpg" class="img-fluid" alt="">
												<span class="thumb-info-action">
													<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
												</span>
											</span>
										</span>
									</a>
									<div style="text-align:center;">
										<p></p>
										<span class="sample-item-description"><h5>${theme2}</h5></span>
									</div>
								</div>
							</div>
							
							<div class="col-lg-4 isotope-item corporatesite">
								<div class="portfolio-item">
									<a target="_blank" href="http://www.athensoft.com${demo_img_dir}/theme/big/${theme3}.jpg">
										<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
											<span class="thumb-info-wrapper">
												<img src="${demo_img_dir}/theme/${theme3}.jpg" class="img-fluid" alt="">
												<span class="thumb-info-action">
													<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
												</span>
											</span>
										</span>
									</a>
									<div style="text-align:center;">
										<p></p>
										<span class="sample-item-description"><h5>${theme3}</h5></span>
									</div>
								</div>
							</div>
							
							
							<div class="col-lg-4 isotope-item corporatesite">
								<div class="portfolio-item">
									<a target="_blank" href="http://www.athensoft.com${demo_img_dir}/theme/big/${theme4}.jpg">
										<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
											<span class="thumb-info-wrapper">
												<img src="${demo_img_dir}/theme/${theme4}.jpg" class="img-fluid" alt="">
												<span class="thumb-info-action">
													<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
												</span>
											</span>
										</span>
									</a>
									<div style="text-align:center;">
										<p></p>
										<span class="sample-item-description"><h5>${theme4}</h5></span>
									</div>
								</div>
							</div>
							
							
							<div class="col-lg-4 isotope-item corporatesite">
								<div class="portfolio-item">
									<a target="_blank" href="http://www.athensoft.com${demo_img_dir}/theme/big/${theme5}.jpg">
										<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
											<span class="thumb-info-wrapper">
												<img src="${demo_img_dir}/theme/${theme5}.jpg" class="img-fluid" alt="">
												<span class="thumb-info-action">
													<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
												</span>
											</span>
										</span>
									</a>
									<div style="text-align:center;">
										<p></p>
										<span class="sample-item-description"><h5>${theme5}</h5></span>
									</div>
								</div>
							</div>
							
							
							<div class="col-lg-4 isotope-item corporatesite">
								<div class="portfolio-item">
									<a target="_blank" href="http://www.athensoft.com${demo_img_dir}/theme/big/${theme6}.jpg">
										<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
											<span class="thumb-info-wrapper">
												<img src="${demo_img_dir}/theme/${theme6}.jpg" class="img-fluid" alt="">
												<span class="thumb-info-action">
													<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
												</span>
											</span>
										</span>
									</a>
									<div style="text-align:center;">
										<p></p>
										<span class="sample-item-description"><h5>${theme6}</h5></span>
									</div>
								</div>
							</div>
							
							
							<div class="col-lg-4 isotope-item corporatesite">
								<div class="portfolio-item">
									<a target="_blank" href="http://www.athensoft.com${demo_img_dir}/theme/big/${theme7}.jpg">
										<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
											<span class="thumb-info-wrapper">
												<img src="${demo_img_dir}/theme/${theme7}.jpg" class="img-fluid" alt="">
												<span class="thumb-info-action">
													<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
												</span>
											</span>
										</span>
									</a>
									<div style="text-align:center;">
										<p></p>
										<span class="sample-item-description"><h5>${theme7}</h5></span>
									</div>
								</div>
							</div>
							
							
							<div class="col-lg-4 isotope-item corporatesite">
								<div class="portfolio-item">
									<a target="_blank" href="http://www.athensoft.com${demo_img_dir}/theme/big/${theme8}.jpg">
										<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
											<span class="thumb-info-wrapper">
												<img src="${demo_img_dir}/theme/${theme8}.jpg" class="img-fluid" alt="">
												<span class="thumb-info-action">
													<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
												</span>
											</span>
										</span>
									</a>
									<div style="text-align:center;">
										<p></p>
										<span class="sample-item-description"><h5>${theme8}</h5></span>
									</div>
								</div>
							</div>
							
							
							<div class="col-lg-4 isotope-item corporatesite">
								<div class="portfolio-item">
									<a target="_blank" href="http://www.athensoft.com${demo_img_dir}/theme/big/${theme9}.jpg">
										<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
											<span class="thumb-info-wrapper">
												<img src="${demo_img_dir}/theme/${theme9}.jpg" class="img-fluid" alt="">
												<span class="thumb-info-action">
													<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
												</span>
											</span>
										</span>
									</a>
									<div style="text-align:center;">
										<p></p>
										<span class="sample-item-description"><h5>${theme9}</h5></span>
									</div>
								</div>
							</div>
							
							
							<div class="col-lg-4 isotope-item corporatesite">
								<div class="portfolio-item">
									<a target="_blank" href="http://www.athensoft.com${demo_img_dir}/theme/big/${theme10}.jpg">
										<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
											<span class="thumb-info-wrapper">
												<img src="${demo_img_dir}/theme/${theme10}.jpg" class="img-fluid" alt="">
												<span class="thumb-info-action">
													<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
												</span>
											</span>
										</span>
									</a>
									<div style="text-align:center;">
										<p></p>
										<span class="sample-item-description"><h5>${theme10}</h5></span>
									</div>
								</div>
							</div>
							
							
							<div class="col-lg-4 isotope-item corporatesite">
								<div class="portfolio-item">
									<a target="_blank" href="http://www.athensoft.com${demo_img_dir}/theme/big/${theme11}.jpg">
										<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
											<span class="thumb-info-wrapper">
												<img src="${demo_img_dir}/theme/${theme11}.jpg" class="img-fluid" alt="">
												<span class="thumb-info-action">
													<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
												</span>
											</span>
										</span>
									</a>
									<div style="text-align:center;">
										<p></p>
										<span class="sample-item-description"><h5>${theme11}</h5></span>
									</div>
								</div>
							</div>
							
							<div class="col-lg-4 isotope-item corporatesite">
								<div class="portfolio-item">
									<a target="_blank" href="http://www.athensoft.com${demo_img_dir}/theme/big/${theme12}.jpg">
										<span class="thumb-info thumb-info-lighten thumb-info-no-borders">
											<span class="thumb-info-wrapper">
												<img src="${demo_img_dir}/theme/${theme12}.jpg" class="img-fluid" alt="">
												<span class="thumb-info-action">
													<span class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
												</span>
											</span>
										</span>
									</a>
									<div style="text-align:center;">
										<p></p>
										<span class="sample-item-description"><h5>${theme12}</h5></span>
									</div>
								</div>
							</div>
							
							
						</div>
					</div>
					
				</section>
				
				<hr class="invisible mt-5 mb-2"/>
				
				
				<div class="row mt-5 counters counters-text-dark">
					<div class="col-lg-3 col-sm-6">
						<div class="counter appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="300">
							<i class="fa fa-user"></i>
							<strong data-to="318" data-append="+">0</strong>
							<label>Happy Clients</label>
							<p class="text-color-primary mb-5">They can’t be wrong</p>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6">
						<div class="counter appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="600">
							<i class="fa fa-desktop"></i>
							<strong data-to="9540">0</strong>
							<label>Page views per month</label>
							<p class="text-color-primary mb-5">Many more to come</p>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6">
						<div class="counter appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="900">
							<i class="fa fa-ticket"></i>
							<strong data-to="1016" data-append="+">0</strong>
							<label>Answered Questions</label>
							<p class="text-color-primary mb-5">Satisfaction guaranteed</p>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6">
						<div class="counter appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="1200">
							<i class="fa fa-clock-o"></i>
							<strong data-to="2544" data-append="+">0</strong>
							<label>Development Hours</label>
							<p class="text-color-primary mb-5">Well-designed right for you</p>
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
		
		<!-- Examples -->
		<script src="${webapp_name}/js/examples/examples.demos.js"></script>
		<script src="${webapp_name}/js/examples/examples.demos2.js"></script>
		<script src="${webapp_name}/js/examples/examples.demos3.js"></script>

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