
<%@ page import="com.health.logger.report.LabReportConfig" %>

<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="bootstrap">
	<g:set var="entityName" value="${message(code: 'labReportConfig.label', default: 'LabReportConfig')}" />
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

			<ol class="property-list labReportConfig">
				
				<g:if test="${labReportConfigInstance?.type}">
					<li class="fieldcontain">
						<span id="type-label" class="property-label"><g:message code="labReportConfig.type.label" default="Type" /></span>
						
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${labReportConfigInstance}" field="type"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${labReportConfigInstance?.udf1Key}">
					<li class="fieldcontain">
						<span id="udf1Key-label" class="property-label"><g:message code="labReportConfig.udf1Key.label" default="Udf1 Key" /></span>
						
						<span class="property-value" aria-labelledby="udf1Key-label"><g:fieldValue bean="${labReportConfigInstance}" field="udf1Key"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${labReportConfigInstance?.udf2Key}">
					<li class="fieldcontain">
						<span id="udf2Key-label" class="property-label"><g:message code="labReportConfig.udf2Key.label" default="Udf2 Key" /></span>
						
						<span class="property-value" aria-labelledby="udf2Key-label"><g:fieldValue bean="${labReportConfigInstance}" field="udf2Key"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${labReportConfigInstance?.udf3Key}">
					<li class="fieldcontain">
						<span id="udf3Key-label" class="property-label"><g:message code="labReportConfig.udf3Key.label" default="Udf3 Key" /></span>
						
						<span class="property-value" aria-labelledby="udf3Key-label"><g:fieldValue bean="${labReportConfigInstance}" field="udf3Key"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${labReportConfigInstance?.udf4Key}">
					<li class="fieldcontain">
						<span id="udf4Key-label" class="property-label"><g:message code="labReportConfig.udf4Key.label" default="Udf4 Key" /></span>
						
						<span class="property-value" aria-labelledby="udf4Key-label"><g:fieldValue bean="${labReportConfigInstance}" field="udf4Key"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${labReportConfigInstance?.udf5Key}">
					<li class="fieldcontain">
						<span id="udf5Key-label" class="property-label"><g:message code="labReportConfig.udf5Key.label" default="Udf5 Key" /></span>
						
						<span class="property-value" aria-labelledby="udf5Key-label"><g:fieldValue bean="${labReportConfigInstance}" field="udf5Key"/></span>
						
					</li>
				</g:if>
				
			</ol>
		</div>
	</div>
</div>
%{--<g:form url="[resource:labReportConfigInstance, action:'delete']" method="DELETE">--}%
%{--<fieldset class="buttons">--}%
%{--<g:link class="edit" action="edit" resource="${labReportConfigInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
%{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
%{--</fieldset>--}%
%{--</g:form>--}%
</body>
</html>
