<%@ page contentType="text/html; charset=utf-8"%>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- page variables  -->
<c:set var="img_dir" value="/images"></c:set>
<!-- END page variables -->

<!-- i18n -->
<c:set var="loc" value="zh_CN"/>
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
					<a class="dropdown-item dropdown-toggle" href="#?lang=${loc}"> 关于我们 </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#?lang=${loc}" target="_blank"> 关于我们 </a></li>
						<li><a class="dropdown-item" href="#?lang=${loc}" target="_blank"> 核心团队 </a></li>
						<li><a class="dropdown-item" href="#?lang=${loc}" target="_blank"> 顾问专家</a></li>
					</ul>
				</li>
				
				<li class="dropdown">
					<a class="dropdown-item dropdown-toggle" href="#?lang=${loc}"> 核心技术 </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#?lang=${loc}" target="_blank"> 深度学习 </a></li>
						<li><a class="dropdown-item" href="#?lang=${loc}" target="_blank"> 神经网络 </a></li>
						<li><a class="dropdown-item" href="#?lang=${loc}" target="_blank"> 自然语言处理</a></li>
						<li><a class="dropdown-item" href="#?lang=${loc}" target="_blank"> 数据可视化</a></li>
					</ul>
				</li>
				
				<li class="dropdown">
					<a class="dropdown-item dropdown-toggle" href="#?lang=${loc}"> 产品和服务 </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#?lang=${loc}" target="_blank"> 智能对话机器人 </a></li>
						<li><a class="dropdown-item" href="#?lang=${loc}" target="_blank"> 数据分析应用</a></li>
					</ul>
				</li>
				
				<li class="dropdown">
					<a class="dropdown-item dropdown-toggle" href="#?lang=${loc}"> 解决方案 </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#?lang=${loc}" target="_blank"> 方案一 </a></li>
						<li><a class="dropdown-item" href="#?lang=${loc}" target="_blank"> 方案二</a></li>
					</ul>
				</li>
				
				 
				<!-- project demo -->
				<li class="dropdown dropdown-mega">
					<a class="dropdown-item dropdown-toggle" href="/about/comingsoon.html?lang=${loc}"> 案例展示 </a>
					<ul class="dropdown-menu">
						<li>
							<div class="dropdown-mega-content">
								<div class="row">
									<div class="col-lg-3">
										<span class="dropdown-mega-sub-title">交通运输业</span>
										<ul class="dropdown-mega-sub-nav">
											<li><a class="dropdown-item" href="/blog/post/371434458460318498?lang=${loc}">纽约曼哈顿出租车智能调度系统支持 </a></li>
										</ul>
									</div>
									
									
									<div class="col-lg-3">
										<span class="dropdown-mega-sub-title">电子商务</span>
										<ul class="dropdown-mega-sub-nav">
											<li><a class="dropdown-item" href="/blog/post/371434458460318498?lang=${loc}">日本电子零售价格预测 </a></li>
										</ul>
									</div>
									
									
									<div class="col-lg-3">
										<span class="dropdown-mega-sub-title">金融行业</span>
										<ul class="dropdown-mega-sub-nav">
											<li><a class="dropdown-item" href="/blog/post/371434458460318498?lang=${loc}">某某集团投资风险分析与控制 </a></li>
										</ul>
									</div>
									
									<div class="col-lg-3">
										<span class="dropdown-mega-sub-title">医疗行业</span>
										<ul class="dropdown-mega-sub-nav">
											<li><a class="dropdown-item" href="/blog/post/371434458460318498?lang=${loc}">某某集团投资风险分析与控制 </a></li>
										</ul>
									</div>
									
								</div>
							</div>
						</li>
					</ul>
				</li>
				
				
				
 				<!-- menu - language -->
				 
				<li class="dropdown">
					<a class="dropdown-item dropdown-toggle" href="/about/comingsoon.html?lang=${loc}"> <spring:message code="link-support"/> </a>
					<ul class="dropdown-menu">
						<!-- <a class="nav-link" href="/support/support.html?lang=${loc}"> -->
						<li><a class="dropdown-item" href="/about/comingsoon.html?lang=${loc}"><spring:message code="link-support"/></a></li>
						<li><a class="dropdown-item" href="/support/contactus.html?lang=${loc}"><spring:message code="link-contact"/></a></li>
					</ul>
				</li> 
				 
			</ul>
		</nav>
	</div>
	<ul class="header-social-icons social-icons d-none d-sm-block">
		<li class="social-icons-facebook"><a
			href="http://www.facebook.com/info.athensoft" target="_blank" title="Facebook"><i class="fa fa-facebook"></i></a></li>
		<li class="social-icons-twitter"><a
			href="http://www.twitter.com/Athensoft" target="_blank" title="Twitter"><i class="fa fa-twitter"></i></a></li>
		<li class="social-icons-linkedin"><a
			href="http://www.linkedin.com/" target="_blank" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
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