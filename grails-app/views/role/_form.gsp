<%@ page import="com.health.logger.usermanagement.Role" %>



<div class="form-group ${hasErrors(bean: roleInstance, field: 'authority', 'error')} required">
	<label for="authority" class="col-xs-2">
		<g:message code="role.authority.label" default="Authority" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="authority" required="" value="${roleInstance?.authority}" class="form-control"/></div>

</div>

