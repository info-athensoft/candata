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

<h4 class="heading-primary"><spring:message code="webdev-sidebar-title-2"/></h4>
<p><spring:message code="webdev-sidebar-form-text"/>&nbsp;&nbsp;
	<a href="/support/contactus.html?lang=${loc}"><spring:message code="webdev-sidebar-form-btn"/></a></p>

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