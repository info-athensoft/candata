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
		
		<title>Internship at Athensoft</title>

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
									<li><a href="${webapp_name}/index.html?lang=${loc}">HOME</a></li>
									<li class="active"><a href="#">ATHENSOFT INTERNSHIP</a></li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<h1>INTERNSHIP</h1>
							</div>
						</div>
					</div>
				</section>
				
				
				<div class="container">
					<div class="row">
						<div class="col-lg-3 order-2 order-lg-1">
							<aside class="sidebar">
								<h4 class="heading-primary">Outline</h4>
								
								<ul class="nav nav-list flex-column mb-4 sort-source" data-sort-id="portfolio" data-option-key="filter" data-plugin-options="{'layoutMode': 'fitRows', 'filter': '*'}">
									<li class="nav-item" data-option-value=".p"><a class="nav-link" href="#">Personal Information</a></li>
									<li class="nav-item" data-option-value=".w"><a class="nav-link" href="#">Working Information</a></li>
									<li class="nav-item" data-option-value=".s"><a class="nav-link" href="#">Schedule</a></li>
									<li class="nav-item" data-option-value=".a"><a class="nav-link" href="#">Assignment</a></li>
									<li class="nav-item" data-option-value=".h"><a class="nav-link" href="#">History</a></li>
									<li class="nav-item" data-option-value=".r"><a class="nav-link" href="#">Rules</a></li>
								</ul>
								<hr class="invisible mt-2 mb-2">
								<a href="/team/signout" class="btn btn-primary btn-sm">&nbsp;&nbsp;&nbsp;&nbsp;Sign Out&nbsp;&nbsp;&nbsp;&nbsp;</a>
								
								<hr class="invisible mt-4 mb-2">
								<h4 class="heading-primary"><strong>Important Notice</strong></h4>
								<strong>2018-02-22 by management</strong>
								<p>All Internship working related email should be sent to <strong><code>athensoft.com@gmail.com</code></strong>, which applies to attendance email, 
									working submissions, reports if no special instructions announced.</p>
								
								<hr class="short"/>
								<strong>2018-02-22 by management</strong>
								<p>Attendance emails and daily report emails should not be postponed to the next day.</p>
							</aside>
						</div>
						
						<div class="col-lg-9 order-1 order-lg-2">
							<div class="col">
								<!-- <h3>Internship Program</h3> -->
								
								<h4>Personal Information</h4>
								<div class="row">
									<label class="col-lg-3"><strong>Trainee Name : </strong></label>
									<label class="col-lg-3">Liu, Yang</label>
									<label class="col-lg-3"><strong>Status in Canada : </strong></label>
									<label class="col-lg-3">Intl. Student</label>
								</div>
								
								<div class="row">
									<label class="col-lg-3"><strong>School Name : </strong></label>
									<label class="col-lg-3">La Salle College</label>
									<label class="col-lg-3"><strong>Academic Status : </strong></label>
									<label class="col-lg-3">In 2nd Year</label>
								</div>
								
								<div class="row">
									<label class="col-lg-3"><strong>Primary email : </strong></label>
									<label class="col-lg-3">leon846666@gmail.com</label>
									<label class="col-lg-3"><strong>Phone Number : </strong></label>
									<label class="col-lg-3">N/A</label>
								</div>
								
								<hr class="short"/>
								
								<h4>Working Information</h4>
								<div class="row">
									<label class="col-lg-3"><strong>Status : </strong></label>
									<label class="col-lg-3"><span class="badge badge-success badge-sm">ACTIVE</span></label>
								</div>
								<div class="row">
									<label class="col-lg-3"><strong>Position : </strong></label>
									<label class="col-lg-3">Java/Web Developer Lv1</label>
									<label class="col-lg-3"><strong>Supervisor : </strong></label>
									<label class="col-lg-3">Athens Zhang</label>
								</div>
								<div class="row">
									<label class="col-lg-3"><strong>Starting date : </strong></label>
									<label class="col-lg-3">2018-02-23</label>
									<label class="col-lg-3"><strong>Termination date : </strong></label>
									<label class="col-lg-3">TBA</label>
								</div>
								<div class="row">
									<label class="col-lg-3"><strong>Attendance Record : </strong></label>
									<label class="col-lg-3"><strong>REQUIRED</strong></label>
									<label class="col-lg-3"><strong>Method : </strong></label>
									<label class="col-lg-3">Email</label>
								</div>
								<div class="row">
									<label class="col-lg-3"><strong>Workload : </strong></label>
									<label class="col-lg-3">22 hours per week</label>
									<label class="col-lg-3"><strong>Accumulated Hours : </strong></label>
									<label class="col-lg-3"><strong>0</strong> hours</label>
								</div>
								<div class="row">
									<label class="col-lg-3"><strong>Work Type : </strong></label>
									<label class="col-lg-3">Cross-function</label>
									<label class="col-lg-3"><strong>Work Method : </strong></label>
									<label class="col-lg-3">Remote and Face-to-Face</label>
								</div>
								
								
								
								<hr class="short"/>
								
								<h4>Schedule</h4>
								
								<div>
									<table class="table table-striped table-bordered">
										<thead>
											<tr class="info">
												<th>Mon</th><th>Tues</th><th>Wed</th><th>Thurs</th><th>Fri</th><th>Sat</th><th>Sun</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>17:00 - 21:00</td>
												<td>13:00 - 17:00</td>
												<td>12:00 - 15:00</td>
												<td>14:00 - 16:00<br/>20:00 - 21:00</td>
												<td>10:00 - 12:00<br/>14:00 - 18:00</td>
												<td>13:00 - 17:00</td>
												<td>Closed</td>
											</tr>
											<tr>
												<td>2 hours</td>
												<td>4 hours</td>
												<td>3 hours</td>
												<td>3 hours</td>
												<td>6 hours</td>
												<td>4 hours</td>
												<td>--</td>
											</tr>
										</tbody>
									</table>
								</div>
								
								<h4>Assignment</h4>
								
								<div>
									<table class="table table-striped table-bordered">
										<thead>
											<tr class="success">
												<th>SN</th><th>WK#</th><th>LIST OF TASK</th><th>ESTIMATED DURATION</th><th>TASK STATUS</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>8</td>
												<td>
													<ul>
														<li>Preparation for work</li>
														<li>Warm-up practice (ADT and JUnit4)</li>
													</ul>
												</td>
												<td>10 hours</td>
												<td>ON</td>
											</tr>
										</tbody>
									</table>
									
									<hr class="invisible mt-2 mb-2"/>
									<h5>Description</h5>
									
										<strong>1. Preparation work</strong><br/>
										<ul>
											<li>1.1 create a dropbox account</li>
											<li>1.2 create a github account</li>
											<li>1.3 create a slack account</li>
										</ul>
										<p><strong>Notes:</strong> <br/>
										-When finished, let Supervisor know and wait for invitation
										</p>
										
										<strong>2. Warm-up practice</strong><br/>
										<ul>
											<li>2.1 Perform a research and write an essay in summary-style on the subject of Java Collection Framework</li>
											<li>2.2 Create a Java project and write codes for each ADT (Abstract Data Type) defined in above framework</li>
											<li>2.3 Write test codes for each unit using JUnit 4</li>
										</ul>
										<p><strong>Goals:</strong> <br/>
										- To review Set, List, Map and all commonly used interfaces and classes.<br/>
										- To look insight into the ADTs and wisely use them in future projects.<br/>
										- To test team environment<br/>
										- To be familiar to working with maven, junit, git, eclipse<br/>
										- To post to public for content marketing.<br/>
										</p>
										
										<p><strong>Notes:</strong> <br/>
										- The task of #2 is not necessarily in strict order, you may take control of that at convenience.<br/>
										- As for the project, it must be created using eclipse, maven, jdk1.8+, built-in git in eclipse, junit4<br/>
										- It should be shared and push to github<br/>
										- Declaration, initialization, traversal the ADT classes in various ways are recommended.<br/>
										- As for the essay you may copy, excerpt, combine, rewrite or composite based-on materials on the Internet or from books.<br/>
										- Comparison, where-to-use and why-to-use concerns must be elaborated in your essay.<br/>
										- Do not write the codes in a single huge class, separate them into different files and organized them well<br/>
										</p>
										
										<p><strong>Project info:</strong><br/>
										Repository URL: <code>https://github.com/athensedu/javase2018.git</code><br/>
										Branches: <code>master, dev-ly</code><br/>
										Java Project Name: <code>javase2018</code><br/>
										Parent package: <code>com.athensoft.util.adt</code><br/>
										</p>
								</div>
								
								<h4>Conventions</h4>
								<div>
									<ul>
										<li>Attendant email should be in the title as such <code>[Internship][your name]Attendance-yyyy-mm-dd</code></li>
										<li>Report email should be in the title as such <code>[Internship][your name]Report-yyyy-mm-dd</code></li>
										<li>All Internship related email should be sent to <code>athensoft.com@gmail.com</code></li>
									</ul>
								</div>
								
								<h4>History</h4>
								
								<div>
									<table class="table table-striped table-bordered">
										<thead>
											<tr class="dark">
												<th>SN</th><th>WEEK NO.</th><th>LIST OF TASK</th><th>ESTIMATED DURATION</th><th>REAL DURATION</th><th>TASK STATUS</th><th>ASSESSMENT</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>--</td>
												<td>--</td>
												<td>--</td>
												<td>--</td>
												<td>--</td>
												<td>--</td>
												<td>--</td>
											</tr>
										</tbody>
									</table>
								</div>
								
								<h4>Rules</h4>
								<div>
									<ul>
										<li>All Practitioners have their obligations to respect the codes, rules, conventions, values of the company.</li>
										<li>All Practitioners should respect the tasks assigned and deadlines.</li>
										<li>All Practitioners should respect the confirmed schedules and attendant records.</li>
										<li>All Practitioners must follow the confidentiality agreement which is presented both in written and in verbal.</li>
										<li>Informatique Athensoft has the full ownership of all design, codes, documents and all related artifacts which are contributed by practitioners during the days of internship.</li>
										<li>The management reserves all the rights of interpreting the aforementioned rules.</li>
									</ul>
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

	</body>
</html>