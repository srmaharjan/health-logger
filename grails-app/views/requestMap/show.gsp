
<%@ page import="com.health.logger.usermanagement.RequestMap" %>

<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="bootstrap">
	<g:set var="entityName" value="${message(code: 'requestMap.label', default: 'RequestMap')}" />
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

			<ol class="property-list requestMap">
				
				<g:if test="${requestMapInstance?.url}">
					<li class="fieldcontain">
						<span id="url-label" class="property-label"><g:message code="requestMap.url.label" default="Url" /></span>
						
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${requestMapInstance}" field="url"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${requestMapInstance?.configAttribute}">
					<li class="fieldcontain">
						<span id="configAttribute-label" class="property-label"><g:message code="requestMap.configAttribute.label" default="Config Attribute" /></span>
						
						<span class="property-value" aria-labelledby="configAttribute-label"><g:fieldValue bean="${requestMapInstance}" field="configAttribute"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${requestMapInstance?.httpMethod}">
					<li class="fieldcontain">
						<span id="httpMethod-label" class="property-label"><g:message code="requestMap.httpMethod.label" default="Http Method" /></span>
						
						<span class="property-value" aria-labelledby="httpMethod-label"><g:fieldValue bean="${requestMapInstance}" field="httpMethod"/></span>
						
					</li>
				</g:if>
				
			</ol>
		</div>
	</div>
</div>
%{--<g:form url="[resource:requestMapInstance, action:'delete']" method="DELETE">--}%
%{--<fieldset class="buttons">--}%
%{--<g:link class="edit" action="edit" resource="${requestMapInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
%{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
%{--</fieldset>--}%
%{--</g:form>--}%
</body>
</html>
