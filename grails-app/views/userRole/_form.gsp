<%@ page import="com.health.logger.usermanagement.UserRole" %>



<div class="form-group ${hasErrors(bean: userRoleInstance, field: 'role', 'error')} required">
	<label for="role" class="col-xs-2">
		<g:message code="userRole.role.label" default="Role" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:select id="role" name="role.id" from="${com.health.logger.usermanagement.Role.list()}" optionKey="id" required="" value="${userRoleInstance?.role?.id}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: userRoleInstance, field: 'user', 'error')} required">
	<label for="user" class="col-xs-2">
		<g:message code="userRole.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:select id="user" name="user.id" from="${com.health.logger.usermanagement.User.list()}" optionKey="id" required="" value="${userRoleInstance?.user?.id}" class="form-control"/></div>

</div>

