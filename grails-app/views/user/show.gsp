
<%@ page import="com.health.logger.usermanagement.User" %>

<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="bootstrap">
	<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
	<title><g:message code="ldefault.show.labe" args="[entityName]" /></title>
</head>
<body>
<section class="content-header">
	<h1>
		<g:message code="default.show.label" args="[entityName]" />
	</h1>
</section>
<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<g:if test="${flash.message}">
				<div class="alert alert-info alert-dismissable">
					<i class="fa fa-info"></i>
					<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
					${flash.message}
				</div>
			</g:if>

			<ol class="property-list user">
				
				<g:if test="${userInstance?.username}">
					<li class="fieldcontain">
						<span id="username-label" class="property-label"><g:message code="user.username.label" default="Username" /></span>
						
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${userInstance}" field="username"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${userInstance?.password}">
					<li class="fieldcontain">
						<span id="password-label" class="property-label"><g:message code="user.password.label" default="Password" /></span>
						
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${userInstance}" field="password"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${userInstance?.accountExpired}">
					<li class="fieldcontain">
						<span id="accountExpired-label" class="property-label"><g:message code="user.accountExpired.label" default="Account Expired" /></span>
						
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${userInstance?.accountExpired}" /></span>
						
					</li>
				</g:if>
				
				<g:if test="${userInstance?.accountLocked}">
					<li class="fieldcontain">
						<span id="accountLocked-label" class="property-label"><g:message code="user.accountLocked.label" default="Account Locked" /></span>
						
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${userInstance?.accountLocked}" /></span>
						
					</li>
				</g:if>
				
				<g:if test="${userInstance?.enabled}">
					<li class="fieldcontain">
						<span id="enabled-label" class="property-label"><g:message code="user.enabled.label" default="Enabled" /></span>
						
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${userInstance?.enabled}" /></span>
						
					</li>
				</g:if>
				
				<g:if test="${userInstance?.passwordExpired}">
					<li class="fieldcontain">
						<span id="passwordExpired-label" class="property-label"><g:message code="user.passwordExpired.label" default="Password Expired" /></span>
						
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${userInstance?.passwordExpired}" /></span>
						
					</li>
				</g:if>
				
			</ol>
		</div>
	</div>
</div>
%{--<g:form url="[resource:userInstance, action:'delete']" method="DELETE">--}%
%{--<fieldset class="buttons">--}%
%{--<g:link class="edit" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
%{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
%{--</fieldset>--}%
%{--</g:form>--}%
</body>
</html>
