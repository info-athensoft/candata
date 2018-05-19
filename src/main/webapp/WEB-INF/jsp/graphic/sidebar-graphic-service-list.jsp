<%@ page contentType="text/html; charset=utf-8"%>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- global variables settings -->
<c:set var="webapp_name" value=""/>
<!-- END global variables settings -->

<!-- page variables  -->
<c:set var="inc_dir" value="../inc"/>
<!-- END page variables -->

<!-- i18n -->
<c:set var="loc" value="zh_CN"/>
<c:if test="${!(empty param.lang)}">
  <c:set var="loc" value="${param.lang}"/>
</c:if>
<fmt:setLocale value="${loc}" />
<!-- END i18n -->

<ul class="nav nav-list flex-column mb-4 sort-source">
	<li class="nav-item"><a class="nav-link" href="${webapp_name}/graphic/service/brochure.html?lang=${loc}"><spring:message code="graphic-service-brochure"/></a></li> 
	<li class="nav-item"><a class="nav-link" href="${webapp_name}/graphic/service/catalog.html?lang=${loc}"><spring:message code="graphic-service-catalog"/></a></li> 
	<li class="nav-item"><a class="nav-link" href="${webapp_name}/graphic/service/flyer.html?lang=${loc}"><spring:message code="graphic-service-flyer"/></a></li>
	<li class="nav-item"><a class="nav-link" href="${webapp_name}/graphic/service/adbanner.html?lang=${loc}"><spring:message code="graphic-service-adbanner"/></a></li>
	<li class="nav-item"><a class="nav-link" href="${webapp_name}/graphic/service/imgprocess.html?lang=${loc}"><spring:message code="graphic-service-imgprocess"/></a></li>
	<li class="nav-item"><a class="nav-link" href="${webapp_name}/graphic/service/logo.html?lang=${loc}"><spring:message code="graphic-service-logo"/></a></li>
	<li class="nav-item"><a class="nav-link" href="${webapp_name}/graphic/service/webpic.html?lang=${loc}"><spring:message code="graphic-service-webpic"/></a></li>
	<li class="nav-item"><a class="nav-link" href="${webapp_name}/graphic/service/smbanner.html?lang=${loc}"><spring:message code="graphic-service-smbanner"/></a></li>
	<li class="nav-item"><a class="nav-link" href="${webapp_name}/graphic/service/poster.html?lang=${loc}"><spring:message code="graphic-service-poster"/></a></li>
	<li class="nav-item"><a class="nav-link" href="${webapp_name}/graphic/service/bizcard.html?lang=${loc}"><spring:message code="graphic-service-bizcard"/></a></li>   
	<li class="nav-item"><a class="nav-link" href="${webapp_name}/graphic/service/menu.html?lang=${loc}"><spring:message code="graphic-service-menu"/></a></li> 
	<li class="nav-item"><a class="nav-link" href="${webapp_name}/graphic/service/coupon.html?lang=${loc}"><spring:message code="graphic-service-coupon"/></a></li> 
	<li class="nav-item"><a class="nav-link" href="${webapp_name}/graphic/service/imgicon.html?lang=${loc}"><spring:message code="graphic-service-imgicon"/></a></li> 
	<li class="nav-item"><a class="nav-link" href="${webapp_name}/graphic/service/fonticon.html?lang=${loc}"><spring:message code="graphic-service-fonticon"/></a></li> 
	<li class="nav-item"><a class="nav-link" href="${webapp_name}/graphic/service/wallpaper.html?lang=${loc}"><spring:message code="graphic-service-wallpaper"/></a></li> 
	<li class="nav-item"><a class="nav-link" href="${webapp_name}/graphic/service/ecalender.html?lang=${loc}"><spring:message code="graphic-service-ecalender"/></a></li> 
</ul>