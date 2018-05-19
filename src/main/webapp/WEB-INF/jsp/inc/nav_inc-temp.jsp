<%@ page contentType="text/html; charset=utf-8"%>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- page variables  -->
<c:set var="img_dir" value="/images"></c:set>
<!-- END page variables -->

<!-- i18n -->
<c:set var="loc" value="en_US"/>
<c:if test="${!(empty param.lang)}">
  <c:set var="loc" value="${param.lang}"/>
</c:if>
<fmt:setLocale value="${loc}" />
<!-- END i18n -->

<div class="header-nav">
	<div
		class="header-nav-main header-nav-main-effect-1 header-nav-main-sub-effect-1">
		<nav class="collapse">
			<ul class="nav nav-pills" id="mainNav">
			
				<li class=""><a class="nav-link active" href="/index.html?lang=${loc}"> <spring:message code="menu-home"/> </a></li>
				
				<li class="dropdown">
					<a class="dropdown-item dropdown-toggle" href="#?lang=${loc}"> <spring:message code="menu-web"/> </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="/webdev/webdev.html?lang=${loc}" target="_blank"> <spring:message code="menu-web-1"/> </a></li>
						<li><a class="dropdown-item" href="/webdev/webplan.html?lang=${loc}" target="_blank"> <spring:message code="menu-web-2"/> </a></li>
						<li><a class="dropdown-item" href="/webdev/webcustom.html?lang=${loc}" target="_blank"> <spring:message code="menu-web-3"/> </a></li>
						<li><a class="dropdown-item" href="/webdev/websupport.html?lang=${loc}" target="_blank"> <spring:message code="menu-web-4"/> </a></li>
						<li><a class="dropdown-item" href="/webdev/product.html?lang=${loc}" target="_blank"> <spring:message code="menu-web-5"/> </a></li>
						<li><a class="dropdown-item" href="/webdev/case.html?lang=${loc}" target="_blank"> <spring:message code="menu-web-6"/> </a></li>
						<li><a class="dropdown-item" href="/webdev/pricing.html?lang=${loc}" target="_blank"> <spring:message code="menu-web-7"/> </a></li>
						<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}" target="_blank"> <spring:message code="menu-web-8"/> </a></li>
					</ul></li>
				
				
				<!-- menu - graphic
				<li class="dropdown">
					<a class="dropdown-item dropdown-toggle" href="/graphic/index.html?lang=${loc}"> <spring:message code="menu-graphic"/> </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="/graphic/graphic.html?lang=${loc}" target="_blank"><spring:message code="menu-graphic-1"/></a></li>
						<li><a class="dropdown-item" href="/graphic/portfolio.html?lang=${loc}" target="_blank"><spring:message code="menu-graphic-2"/></a></li>
						<li><a class="dropdown-item" href="/graphic/case.html?lang=${loc}" target="_blank"><spring:message code="menu-graphic-3"/></a></li>
						<li><a class="dropdown-item" href="/graphic/pricing.html?lang=${loc}" target="_blank"><spring:message code="menu-graphic-4"/></a></li>
						<li><a class="dropdown-item" href="/support/faq-graphic.html?lang=${loc}" target="_blank"><spring:message code="menu-graphic-5"/></a></li>
					</ul>
				</li>
				-->
				 
				<li class="dropdown">
					<a class="dropdown-item dropdown-toggle" href="/about/comingsoon.html?lang=${loc}"> <spring:message code="menu-graphic"/> </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}"><spring:message code="menu-graphic-1"/></a></li>
						<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}"><spring:message code="menu-graphic-2"/></a></li>
						<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}"><spring:message code="menu-graphic-3"/></a></li>
						<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}"><spring:message code="menu-graphic-4"/></a></li>
						<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}"><spring:message code="menu-graphic-5"/></a></li>
					</ul>
				</li>
				
				<!-- menu - adogo 
				<li class="dropdown">
					<a class="dropdown-item dropdown-toggle" href="/adogo/index.html?lang=${loc}"> <spring:message code="menu-adogo"/> </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="/adogo/adogo.html?lang=${loc}"><spring:message code="menu-adogo-1"/></a></li>
						<li><a class="dropdown-item" href="/adogo/quickstart.html?lang=${loc}"><spring:message code="menu-adogo-2"/></a></li>
						<li><a class="dropdown-item" href="/adogo/register.html?lang=${loc}"><spring:message code="menu-adogo-3"/></a></li>
					</ul>
				</li> 
				-->
				
				<li class="dropdown">
					<a class="dropdown-item dropdown-toggle" href="/about/comingsoon.html?lang=${loc}"> <spring:message code="menu-adogo"/> </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}"><spring:message code="menu-adogo-1"/></a></li>
						<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}"><spring:message code="menu-adogo-2"/></a></li>
						<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}"><spring:message code="menu-adogo-3"/></a></li>
					</ul>
				</li>
				
				<!-- menu - tour -->
				<li class="dropdown dropdown-mega">
					<a class="dropdown-item dropdown-toggle" href="/about/comingsoon.html?lang=${loc}"> <spring:message code="menu-edu"/> </a>
					<ul class="dropdown-menu">
						<li>
							<div class="dropdown-mega-content">
								<div class="row">
									<div class="col-lg-3">
										<span class="dropdown-mega-sub-title">Software Development</span>
										<ul class="dropdown-mega-sub-nav">
											<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}">Java Programming</a></li>
											<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}">Spring</a></li>
											<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}">Design Pattern</a></li>
											<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}">UML</a></li>
											<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}">Maven</a></li>
											<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}">Eclipse</a></li>
											<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}">Git</a></li>
										</ul>
									</div>
									<div class="col-lg-3">
										<span class="dropdown-mega-sub-title">AI and Bigdata</span>
										<ul class="dropdown-mega-sub-nav">
											<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}">Big Data</a></li>
											<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}">Artificial Intelligence</a></li>
											<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}">Machine Learning</a></li>
											<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}">Python</a></li>
											<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}">Kafka</a></li>
											<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}">Storm</a></li>
											<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}">Samza</a></li>
										</ul>
									</div>
									<div class="col-lg-3">
										<span class="dropdown-mega-sub-title">Online Marketing</span>
										<ul class="dropdown-mega-sub-nav">
											<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}">Social Media</a></li>
											<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}">Google Analytics</a></li>
											<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}">Google AdWords</a></li>
										</ul>
									</div>
									<div class="col-lg-3">
										<span class="dropdown-mega-sub-title">Design and Media</span>
										<ul class="dropdown-mega-sub-nav">
											<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}">Graphic Design</a></li>
											<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}">Printing</a></li>
										</ul>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</li>
				
 				<!-- menu - language -->
				<li class="dropdown">
					<a class="dropdown-item dropdown-toggle" href="#"> <spring:message code="menu-lang"/> </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="/index.html?lang=en_US"><img alt="English" src="${img_dir}/language/canada.gif"/>&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="lang_en"/></a></li>
						<li><a class="dropdown-item" href="/index.html?lang=fr_CA"><img alt="English" src="${img_dir}/language/french.gif"/>&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="lang_fr"/></a></li>
						<li><a class="dropdown-item" href="/index.html?lang=zh_CN"><img alt="Chinese Simplied" src="${img_dir}/language/chineseS.gif"/>&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="lang_chs"/></a></li>
						<li><a class="dropdown-item" href="/index.html?lang=zh_CN"><img alt="Chinese Traditional" src="${img_dir}/language/chineseS.gif"/>&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="lang_cht"/></a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
	<ul class="header-social-icons social-icons d-none d-sm-block">
		<li class="social-icons-facebook"><a
			href="http://www.facebook.com/info.athensoft" target="_blank" title="Facebook"><i
				class="fa fa-facebook"></i></a></li>
		<li class="social-icons-twitter"><a
			href="http://www.twitter.com/Athensoft" target="_blank" title="Twitter"><i
				class="fa fa-twitter"></i></a></li>
		<li class="social-icons-linkedin"><a
			href="http://www.linkedin.com/" target="_blank" title="Linkedin"><i
				class="fa fa-linkedin"></i></a></li>
	</ul>
	<button class="btn header-btn-collapse-nav" data-toggle="collapse"
		data-target=".header-nav-main nav">
		<i class="fa fa-bars"></i>
	</button>
</div>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-113930092-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-113930092-1');
</script>