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
								<h1>纽约市出租车运营时间优化系统</h1>
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
									<li class="nav-item"><a class="nav-link" href="#?lang=${loc}" target="_blank">项目简介</a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/webdev/webplan.html?lang=${loc}" target="_blank">数据视图</a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/demo/taxi/taxi-heatmap.html?lang=${loc}" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;曼哈顿出租车运营动态图</a></li>
									<li class="nav-item"><a class="nav-link" href="">预测分析</a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/demo/taxi/taxi-predresult.html?lang=${loc}" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;运营时间预测</a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/webdev/websupport.html?lang=${loc}" target="_blank">参考</a></li>
								</ul>
							</aside>
						</div>
						
						<div class="col-lg-9 order-1 order-lg-2">
						
							<!-- overview -->
							<h3>项目简介</h3>
							<div class="row">
								<div class="col">
									
									<p class="">
										城市公交系统（公交汽车和出租车）的调度优化是目前大数据背景下的一个应用热点。本案例利用纽约市城市出租车运行数据展示了一个基于机器学习和大数据分析的出租车运行时间预测系统。
									</p>
									
									<p class="">
										<strong>背景说明</strong><br/>
在比如纽约，东京，上海，北京和香港等人口众多，交通繁忙和拥堵的大都市，城市公交系统异常繁忙。如何应用大量的出租车运营数据对出租车派发系统的优化和效率提高成为城市出租车管理部门非常重要的工作。
									</p>
									
									<p class="">
										<strong>当前的问题和困境</strong>
										<br/>
										1. 出租车管理公司的困难与诉求<br/>
										出租车运营派发系统由于乘客单位时间内叫单过多，等候派发的出租车在系统队列里过多，导致派发系统不够灵活
出租车运营公司需要预先估价，而乘车时间受到多维度因素影响，仅仅依靠地图距离测算不够精确（要描述解释清楚）


										<br/><br/>
										
										
										2. 乘客的困难和诉求<br/>
										乘客希望在出行前预先知道什么时候乘车最优，即便是可以在线地图查询到实时道路拥堵情况，也还是很难精确预估从一点到另一点的时间。

高峰时间段、天气变化时、交通拥堵发生，打车难，订车难，合理安排订车、发车时间。

乘客有时需要知道在哪个时间段订车比较合理。由于一天当中，出租车的可用情况分布是不均匀的，留出适当的时间弹性，避免延误和意外。

但是也不可无限扩大时间弹性，造成时间浪费，因此需要精确安排打车时间，节约时间成本。

可以帮助游客、外来访客等暂住人口，了解打车费用，避免宰客。从而规范化出租车行业服务质量，提高城市形象。提升边际效益。
										
									</p>
									
									<p class="">
										<strong>预测目标</strong><br/>
										利用机器学习和数据分析算法，定制化的特征工程来精确预测每一单出租车运营时间<br/>
									</p>
									
									<p class="">
										<strong>商业意义</strong>
									</p>
									<ul>
										<li>通过精准预测运营时间，可以指导派发系统过滤掉预估时间较长的车号，使其不占用派发系统队列，从而提高派发系统效率，减少冗余。</li>
										<li>精准预测运营时间给乘客和出租车司机精准参考</li>
										<li>为运营公司定价提供精准可靠的量化依据</li>
									</ul>
									
									<p class="">
										<strong>解决方案</strong>
									</p>
									<ul>
										<li>基于深入的特征工程分析</li>
										<li>基于分布式的机器学习和多模型组合算法</li>
									</ul>
																	
								</div>
							</div>

							<hr class="invisible mt-3 mb-4">
							
							
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
		
		<!-- Highchart api -->
		<script src="https://code.highcharts.com/highcharts.js"></script>
		
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


		<!-- chart data -->
		<script type="text/javascript">
		//$(document).ready(function(){
			
		//});
		
		
		</script>
	</body>
</html>