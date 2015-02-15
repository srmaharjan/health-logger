<%@ page import="com.health.logger.usermanagement.RequestMap" %>



<div class="form-group ${hasErrors(bean: requestMapInstance, field: 'url', 'error')} required">
	<label for="url" class="col-xs-2">
		<g:message code="requestMap.url.label" default="Url" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="url" required="" value="${requestMapInstance?.url}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: requestMapInstance, field: 'configAttribute', 'error')} required">
	<label for="configAttribute" class="col-xs-2">
		<g:message code="requestMap.configAttribute.label" default="Config Attribute" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="configAttribute" required="" value="${requestMapInstance?.configAttribute}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: requestMapInstance, field: 'httpMethod', 'error')} ">
	<label for="httpMethod" class="col-xs-2">
		<g:message code="requestMap.httpMethod.label" default="Http Method" />
		
	</label>
	<div class="col-xs-10"><g:select class="form-control" name="httpMethod" from="${org.springframework.http.HttpMethod?.values()}" keys="${org.springframework.http.HttpMethod.values()*.name()}" value="${requestMapInstance?.httpMethod?.name()}"  noSelection="['': '']"/></div>

</div>

