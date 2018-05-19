<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">				
	<div class="logo">
		<a href="index.jsp">
			<img alt="Informatique Athensoft" width="80" height="80" data-sticky-width="40" data-sticky-height="40" src="img/logo/athensoftlogo-128.gif">
		</a>
	</div>
	<div class="search">
		<form id="searchForm" action="search_site.do" method="get">  
			<div class="input-group">
				<input type="text" class="form-control search" name="q" id="q" placeholder="Search..." required>
				<span class="input-group-btn">
					<button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
				</span>
			</div>
		</form>  
	</div>
	<nav>
		<ul class="nav nav-pills nav-top">
			<c:if test='${empty accountName}'>
				<li>
					<a href="signup.do"><i class="fa fa-angle-right"></i>Sign up</a>
				</li>
				<li>
					<a href="signin.do"><i class="fa fa-angle-right"></i>Sign in</a>
				</li>
			</c:if>	
			<c:if test='${!empty accountName}'>
				<li>
					<a href="####"><i class="fa fa-male"></i>${accountName}</a>
				</li>
				<li>
					<a href="userlogout.do"><i class="fa fa-angle-right"></i>Sign Out</a>
				</li>
			</c:if>
			<li class="phone">
				<span><i class="fa fa-phone"></i>(514) 746-9188</span>
			</li>
		</ul>
	</nav>
	<button class="btn btn-responsive-nav btn-inverse" data-toggle="collapse" data-target=".nav-main-collapse">
		<i class="fa fa-bars"></i>
	</button>
</div>