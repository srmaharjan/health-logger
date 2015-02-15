<%@ page import="com.health.logger.usermanagement.User" %>



<div class="form-group ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username" class="col-xs-2">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="username" required="" value="${userInstance?.username}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password" class="col-xs-2">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="password" required="" value="${userInstance?.password}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired" class="col-xs-2">
		<g:message code="user.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" />

</div>

<div class="form-group ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked" class="col-xs-2">
		<g:message code="user.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />

</div>

<div class="form-group ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
	<label for="enabled" class="col-xs-2">
		<g:message code="user.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${userInstance?.enabled}" />

</div>

<div class="form-group ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired" class="col-xs-2">
		<g:message code="user.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />

</div>

