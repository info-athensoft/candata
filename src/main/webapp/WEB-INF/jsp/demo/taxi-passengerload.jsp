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
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/demo/taxi/index.html?lang=${loc}" target="_blank">项目简介</a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/webdev/webplan.html?lang=${loc}" target="_blank">数据视图</a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/demo/taxi/taxi-heatmap.html?lang=${loc}" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;曼哈顿出租车密度分布动态图</a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/demo/taxi/taxi-passengerload.html?lang=${loc}" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;载客量按日期时间分布图</a></li>
									<li class="nav-item"><a class="nav-link" href="">预测分析</a></li>
									<li class="nav-item"><a class="nav-link" href="#?lang=${loc}" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;运营时间预测</a></li>
									<li class="nav-item"><a class="nav-link" href="${webapp_name}/webdev/websupport.html?lang=${loc}" target="_blank">参考</a></li>
								</ul>
							</aside>
						</div>
						
						<div class="col-lg-9 order-1 order-lg-2">
						
							<!-- overview -->
							<h3>预测结果与分析</h3>
							<div class="row">
								<div class="col">
									<p class="">
										<strong>图表说明</strong><br/>
										X轴： ORDER ID 表示某一次出租车出车订单编号<br/>
										Y轴： 该次出车业务运行的总耗时，以秒为单位<br/>
									</p>
									
																	
								</div>
							</div>

							<hr class="invisible mt-3 mb-4">
							
							<!-- main business -->
							<div id="data-filter">
								选取时间单位：
								<button class="btn btn-primary" onclick="showByMonth();">Month</button>
								<!-- <button class="btn btn-primary" onclick="showByWeek();">Week</button>  -->
								<button class="btn btn-primary" onclick="showByDay();">Day</button>
							</div>
							<div id="container" style="width:100%; height:400px;"></div>
							
							<p class="">
								<strong>图例说明</strong><br/>
								点击右侧 -Pred- 可以开关预测结果曲线<br/>
								点击右侧 -Real- 可以开关实际记录曲线<br/>
							</p>
							
							<p class="">
								<strong>如何理解预测图表？</strong><br/>
								两条曲线重合度越高，说明预测结果越接近实际发生的结果。<br/>
								<br/>
							</p>
							
							<p class="">
								<strong>预测结果分析</strong>
								<br/>
								分析效果
							</p>
							<p class="">
								<strong>应用</strong>
								<br/>
								应用效果
							</p>
							
							<hr class="tall"/>
							
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
		
		$(document).ready(function(){
			showWithJSON();
		});
		
		
		function showWithJSON(){
			$.ajax({
				type    :   "get",
		        contentType : 'application/json; charset=utf-8',
		     	url: "/json/taxi.json",	   
		        dataType:   "json",
		        timeout :   100000,
		        
		        beforeSend : function(){
		        	$("#container").html("<br/><br/>处理JSON中，请耐心等待...");
		        },
		        
		        success:function(data){
		        	//alert("success");
		        	//console.log(data.predData);
		        	var vendor1 = data.listPassengerLoad1;
		        	var vendor2 = data.listPassengerLoad2;
		        	var labelData = data.labelData;
		            plot(vendor1,vendor2,labelData);
		        },
		        error:function(data){
		           alert("ERROR: failed.");
		            
		        },            
		        complete: function(XMLHttpRequest, textStatus){
		            //reset to avoid duplication
		        }     
				
				
			});
		}
		
		
		function show(){
			var param;
			
			$.ajax({
				type    :   "get",
		        contentType : 'application/json; charset=utf-8',
		     	url     : 	"/demo/taxi/taxipassengerloadbydatetime",
		     	/* data	:	param, */
		        dataType:   "json",
		        timeout :   100000,
		        
		        beforeSend : function(){
		        	$("#container").html("<br/><br/>处理中，请耐心等待...");
		        },
		        
		        success:function(data){
		        	//alert("success");
		        	//console.log(data.predData);
		        	var vendor1 = data.listPassengerLoad1;
		        	var vendor2 = data.listPassengerLoad2;
		        	var labelData = data.labelData;
		            plot(vendor1,vendor2,labelData);
		        },
		        error:function(data){
		           alert("ERROR: failed.");
		            
		        },            
		        complete: function(XMLHttpRequest, textStatus){
		            //reset to avoid duplication
		        }     
				
				
			});
		}
		
		
		function showByMonth(){
			$.ajax({
				type    :   "get",
		        contentType : 'application/json; charset=utf-8',
		     	url: "/json/taxibymonth.json",	   
		        dataType:   "json",
		        timeout :   100000,
		        
		        beforeSend : function(){
		        	$("#container").html("<br/><br/>处理JSON中，请耐心等待...");
		        },
		        
		        success:function(data){
		        	//alert("success");
		        	//console.log(data.predData);
		        	var vendor1 = data.listPassengerLoad1;
		        	var vendor2 = data.listPassengerLoad2;
		        	var labelData = data.labelData;
		            plot(vendor1,vendor2,labelData);
		        },
		        error:function(data){
		           alert("ERROR: failed.");
		            
		        },            
		        complete: function(XMLHttpRequest, textStatus){
		            //reset to avoid duplication
		        }     
				
				
			});
		}
		
		function showByDay(){
			showWithJSON();
		}
		
		
		function plot(predData,realData,labelData){
			//var predData = [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175];
			//var realData = [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434];
			
		    var myChart = Highcharts.chart('container', {

		        title: {
		            text: '载客量按日期时间分布图'
		        },

		        subtitle: {
		            text: '按指定时间单位分组'
		        },
				
		       	xAxis: {
		            title: {
		                text: '日期时间粒度单位'
		            },
		            categories: labelData
		        },
		        
		        yAxis: {
		            title: {
		                text: '载客数小计'
		            }
		        },
		        legend: {
		            layout: 'vertical',
		            align: 'right',
		            verticalAlign: 'middle'
		        },

		        plotOptions: {
		            series: {
		            	label: {
		                    connectorAllowed: false
		                }
		        		/*,
		                pointStart: 1001*/
		               /* data: ['a','a2','a3','a4','a5','a6','a7','a8','a9','a10'] */
		               
		               
		            }
		        },

		        series: [{
		            name: 'Vendor 1',
		            data: predData
		        }, {
		            name: 'Vendor 2',
		            data: realData
		        }],

		        responsive: {
		            rules: [{
		                condition: {
		                    maxWidth: 500
		                },
		                chartOptions: {
		                    legend: {
		                        layout: 'horizontal',
		                        align: 'center',
		                        verticalAlign: 'bottom'
		                    }
		                }
		            }]
		        }

		    });
		}
		
		
		</script>
	</body>
</html>