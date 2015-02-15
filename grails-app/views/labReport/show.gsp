
<%@ page import="com.health.logger.report.LabReport" %>

<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="bootstrap">
	<g:set var="entityName" value="${message(code: 'labReport.label', default: 'LabReport')}" />
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

			<ol class="property-list labReport">
				
				<g:if test="${labReportInstance?.dateCreated}">
					<li class="fieldcontain">
						<span id="dateCreated-label" class="property-label"><g:message code="labReport.dateCreated.label" default="Date Created" /></span>
						
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${labReportInstance?.dateCreated}" /></span>
						
					</li>
				</g:if>
				
				<g:if test="${labReportInstance?.description}">
					<li class="fieldcontain">
						<span id="description-label" class="property-label"><g:message code="labReport.description.label" default="Description" /></span>
						
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${labReportInstance}" field="description"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${labReportInstance?.lastUpdated}">
					<li class="fieldcontain">
						<span id="lastUpdated-label" class="property-label"><g:message code="labReport.lastUpdated.label" default="Last Updated" /></span>
						
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${labReportInstance?.lastUpdated}" /></span>
						
					</li>
				</g:if>
				
				<g:if test="${labReportInstance?.name}">
					<li class="fieldcontain">
						<span id="name-label" class="property-label"><g:message code="labReport.name.label" default="Name" /></span>
						
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${labReportInstance}" field="name"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${labReportInstance?.patient}">
					<li class="fieldcontain">
						<span id="patient-label" class="property-label"><g:message code="labReport.patient.label" default="Patient" /></span>
						
						<span class="property-value" aria-labelledby="patient-label"><g:link controller="patient" action="show" id="${labReportInstance?.patient?.id}">${labReportInstance?.patient?.encodeAsHTML()}</g:link></span>
						
					</li>
				</g:if>
				
				<g:if test="${labReportInstance?.type}">
					<li class="fieldcontain">
						<span id="type-label" class="property-label"><g:message code="labReport.type.label" default="Type" /></span>
						
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${labReportInstance}" field="type"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${labReportInstance?.udf1}">
					<li class="fieldcontain">
						<span id="udf1-label" class="property-label"><g:message code="labReport.udf1.label" default="Udf1" /></span>
						
						<span class="property-value" aria-labelledby="udf1-label"><g:fieldValue bean="${labReportInstance}" field="udf1"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${labReportInstance?.udf2}">
					<li class="fieldcontain">
						<span id="udf2-label" class="property-label"><g:message code="labReport.udf2.label" default="Udf2" /></span>
						
						<span class="property-value" aria-labelledby="udf2-label"><g:fieldValue bean="${labReportInstance}" field="udf2"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${labReportInstance?.udf3}">
					<li class="fieldcontain">
						<span id="udf3-label" class="property-label"><g:message code="labReport.udf3.label" default="Udf3" /></span>
						
						<span class="property-value" aria-labelledby="udf3-label"><g:fieldValue bean="${labReportInstance}" field="udf3"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${labReportInstance?.udf4}">
					<li class="fieldcontain">
						<span id="udf4-label" class="property-label"><g:message code="labReport.udf4.label" default="Udf4" /></span>
						
						<span class="property-value" aria-labelledby="udf4-label"><g:fieldValue bean="${labReportInstance}" field="udf4"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${labReportInstance?.udf5}">
					<li class="fieldcontain">
						<span id="udf5-label" class="property-label"><g:message code="labReport.udf5.label" default="Udf5" /></span>
						
						<span class="property-value" aria-labelledby="udf5-label"><g:fieldValue bean="${labReportInstance}" field="udf5"/></span>
						
					</li>
				</g:if>
				
			</ol>
		</div>
	</div>
</div>
%{--<g:form url="[resource:labReportInstance, action:'delete']" method="DELETE">--}%
%{--<fieldset class="buttons">--}%
%{--<g:link class="edit" action="edit" resource="${labReportInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
%{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
%{--</fieldset>--}%
%{--</g:form>--}%
</body>
</html>
