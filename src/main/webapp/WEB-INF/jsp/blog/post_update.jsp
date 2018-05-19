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
		
		<title><spring:message code="head-title-knowledge"/></title>

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
									<li class="active"><a href="${webapp_name}/index.html?lang=${loc}"><spring:message code="menu-knowledge"/></a></li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<h1><spring:message code="page-title-knowledge"/></h1>
							</div>
						</div>
					</div>
				</section>
			
				<div class="container">

					<div class="row">
						<div class="col-lg-3 order-2 order-lg-1">
							<aside class="sidebar">
								<h4 class="heading-primary">博客分类</h4>

								<ul class="nav nav-list flex-column mb-4 sort-source">
									<li class="nav-item"><strong>知识频道</strong></li>
									<li class="nav-item"><a href="#">软件研发</a></li>
									<li class="nav-item"><a href="#">软件测试</a></li>
									<li class="nav-item"><a href="#">大数据</a></li>
									<li class="nav-item"><a href="#">在线推广</a></li>
									<li class="nav-item"><a href="#">平面设计</a></li>
								</ul>
								
								<hr class="invisible mt-5 mb-2">

							</aside>
						</div>
						
						<div class="col-lg-9 order-1 order-lg-2">
							<div class="row">
								<div class="col-lg-12">
									<a href="/blog/list?lang=zh_CN" class="btn btn-primary float-right mb-2">+ View List </a>
								</div>
							</div>
							
							<div class="featured-boxes">
								<div class="row">
									<div class="col-md-12">
										<div class="featured-box featured-box-primary text-left mt-5">
											<div class="box-content">
												<h4 class="heading-primary text-uppercase mb-3">Editing a Post</h4>
												<form action="/blog/update" id="formSignIn" method="post" name="postForm">
													
													<div class="form-row">
														<input type="hidden" name="postUUID" value="${post.postUUID}"/>
														<input type="hidden" name="postStatus" value="${post.postStatus}"/>
														<input type="hidden" name="topicNo" value="${post.topicNo}"/>
													</div>
													
													<div class="form-row">
														<div class="form-group col-lg-2 mt-2">
															<label class="float-right">Channel</label>
														</div>
														<div class="form-group col-lg-6">
															<select class="form-control" name="channelNo" id="channelNo">
																<option value="1" ${post.channelNo == 1 ? 'selected' : ''}>1: Knowledge</option>
																<option value="2" ${post.channelNo == 2 ? 'selected' : ''}>2: Education</option>
															</select>
														</div>
													</div>
													
													<div class="form-row">
														<div class="form-group col-lg-2 mt-2">
															<label class="float-right">Topic Class</label>
														</div>
														<div class="form-group col-lg-6">
															<select class="form-control" name="topicClassNo" id="topicClassNo">
																<!-- 
																<option value="1" ${post.topicClassNo == 1 ? 'selected' : ''}>1: Software Development</option>
																<option value="2" ${post.topicClassNo == 2 ? 'selected' : ''}>2: Quality Assurance (QA)</option>
																<option value="3" ${post.topicClassNo == 3 ? 'selected' : ''}>3: Artificial Intelligence (AI)</option>
																<option value="4" ${post.topicClassNo == 4 ? 'selected' : ''}>4: Big Data and Machine Learning (ML)</option>
																<option value="5" ${post.topicClassNo == 5 ? 'selected' : ''}>5: Digital Marketing</option>
																<option value="6" ${post.topicClassNo == 6 ? 'selected' : ''}>6: Graphic Design</option>
																-->
															</select>
														</div>
													</div>
													
													<div class="form-row">
														<div class="form-group col-lg-2 mt-2">
															<label class="float-right">Topic</label>
														</div>
														<div class="form-group col-lg-6">
															<input type="text" value="${post.topicName}" class="form-control" name="topicName">
														</div>
													</div>
													
													<div class="form-row">
														<div class="form-group col-lg-2 mt-2">
															<label class="float-right">Post Title</label>
														</div>
														<div class="form-group col-lg-6">
															<input type="text" value="${post.postTitle}" class="form-control" name="postTitle">
														</div>
													</div>
													
													<div class="form-row">
														<div class="form-group col-lg-2 mt-2">
															<label class="float-right">Author</label>
														</div>
														<div class="form-group col-lg-6">
															<input type="text" value="${post.postAuthor}" class="form-control" name="postAuthor">
														</div>
													</div>
													
													<div class="form-row">
														<div class="form-group col-lg-2 mt-2">
															<label class="float-right">Tags</label>
														</div>
														<div class="form-group col-lg-6">
															<input type="text" value="${post.postTags}" class="form-control" name="postTags">
														</div>
													</div>
													
													<div class="form-row">
														<div class="form-group col-lg-2 mt-2">
															<label class="float-right">Original Author</label>
														</div>
														<div class="form-group col-lg-6">
															<input type="text" value="${post.originalAuthor}" class="form-control" name="originalAuthor">
														</div>
													</div>
													
													<div class="form-row">
														<div class="form-group col-lg-2 mt-2">
															<label class="float-right">Original Link</label>
														</div>
														<div class="form-group col-lg-10">
															<input type="text" value="${post.originalLink}" class="form-control" name="originalLink">
														</div>
													</div>
													
													<!-- 
													<div class="form-row">
														<div class="form-group col-lg-2 mt-2">
															<label class="float-right">Content Link</label>
														</div>
														<div class="form-group col-lg-10">
															<input type="text" value="" class="form-control" name="postContentUrl">
														</div>
													</div>
													 -->
													 
													<div class="form-row">
														<div class="form-group col-lg-2 mt-2">
															<label class="float-right">Content</label>
														</div>
														<div class="form-group col-lg-10">
															<textarea rows="5" class="form-control" name="content">${post.postContent.postContent}</textarea>
														</div>
													</div>
												 	
													<div class="form-row">
														<div class="form-group col-lg-2 mt-2">
															<label class="float-right"></label>
														</div>
														<div class="form-group col-lg-6">
															<input type="submit" value="Update" class="btn btn-primary mb-5" data-loading-text="Loading...">
															<!-- 
															<input type="submit" value="Login" class="btn btn-primary float-right mb-5" data-loading-text="Loading...">
															 -->
														</div>
														
													</div>
												</form>
											</div>
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
			$(document).ready(function(){
				selectInit();
			});
		
			function selectInit(){
				var channelNo = '${post.channelNo}';
				var topicClassNo = '${post.topicClassNo}';
				
				//alert(channelNo+":"+topicClassNo);
				
				if(channelNo=='1'){
					//alert(channel_no);
					$('#topicClassNo option').remove();
					$('#topicClassNo').append('<option value="0">-- Choose a topic class --</option>');
					$('#topicClassNo').append('<option value="1">1: Software Development</option>');
					$('#topicClassNo').append('<option value="2">2: Quality Assurance (QA)</option>');
					$('#topicClassNo').append('<option value="3">3: Artificial Intelligence (AI)</option>');
					$('#topicClassNo').append('<option value="4">4: Big Data and Machine Learning (ML)</option>');
					$('#topicClassNo').append('<option value="5">5: Digital Marketing</option>');
					$('#topicClassNo').append('<option value="6">6: Graphic Design</option>');
					
					$('#channelNo option[value='+channelNo+']').attr("selected","selected");
					$('#topicClassNo option[value='+topicClassNo+']').attr("selected","selected");
					
				}else if(channelNo=='2'){
					//alert(channel_no);
					$('#topicClassNo option').remove();
					$('#topicClassNo').append('<option value="0">-- Choose a topic class --</option>');
					$('#topicClassNo').append('<option value="1">1: Web Developer</option>');
					$('#topicClassNo').append('<option value="2">2: Java Developer</option>');
					$('#topicClassNo').append('<option value="3">3: QA</option>');
					$('#topicClassNo').append('<option value="4">4: Big Data Engineer</option>');
					$('#topicClassNo').append('<option value="5">5: Graphic Designer</option>');
					
					$('#channelNo option[value='+channelNo+']').attr("selected","selected");
					$('#topicClassNo option[value='+topicClassNo+']').attr("selected","selected");
				}else{
					alert("[ERROR] selectChannel()");
				}
			}
		
		
			function selectChannel(){
				var channelNo = $("#channelNo").val();
				
				if(channelNo=='1'){
					//alert(channel_no);
					$('#topicClassNo option').remove();
					$('#topicClassNo').append('<option value="0">-- Choose a topic class --</option>');
					$('#topicClassNo').append('<option value="1">1: Software Development</option>');
					$('#topicClassNo').append('<option value="2">2: Quality Assurance (QA)</option>');
					$('#topicClassNo').append('<option value="3">3: Artificial Intelligence (AI)</option>');
					$('#topicClassNo').append('<option value="4">4: Big Data and Machine Learning (ML)</option>');
					$('#topicClassNo').append('<option value="5">5: Digital Marketing</option>');
					$('#topicClassNo').append('<option value="6">6: Graphic Design</option>');
					
					$('#channelNo option[value='+topicClassNo+']').attr("selected","selected");
					
				}else if(channelNo=='2'){
					//alert(channel_no);
					$('#topicClassNo option').remove();
					$('#topicClassNo').append('<option value="0">-- Choose a topic class --</option>');
					$('#topicClassNo').append('<option value="1">1: Web Developer</option>');
					$('#topicClassNo').append('<option value="2">2: Java Developer</option>');
					$('#topicClassNo').append('<option value="3">3: QA</option>');
					$('#topicClassNo').append('<option value="4">4: Big Data Engineer</option>');
					$('#topicClassNo').append('<option value="5">5: Graphic Designer</option>');
					
					$('#channelNo option[value='+topicClassNo+']').attr("selected","selected");
				}else{
					alert("[ERROR] selectChannel()");
				}
				
			}
		</script>
	</body>
</html>