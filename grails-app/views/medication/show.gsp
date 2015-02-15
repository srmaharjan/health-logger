
<%@ page import="com.health.logger.clinical.Medication" %>

<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="bootstrap">
	<g:set var="entityName" value="${message(code: 'medication.label', default: 'Medication')}" />
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

			<ol class="property-list medication">
				
				<g:if test="${medicationInstance?.dateCreated}">
					<li class="fieldcontain">
						<span id="dateCreated-label" class="property-label"><g:message code="medication.dateCreated.label" default="Date Created" /></span>
						
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${medicationInstance?.dateCreated}" /></span>
						
					</li>
				</g:if>
				
				<g:if test="${medicationInstance?.description}">
					<li class="fieldcontain">
						<span id="description-label" class="property-label"><g:message code="medication.description.label" default="Description" /></span>
						
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${medicationInstance}" field="description"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${medicationInstance?.lastUpdated}">
					<li class="fieldcontain">
						<span id="lastUpdated-label" class="property-label"><g:message code="medication.lastUpdated.label" default="Last Updated" /></span>
						
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${medicationInstance?.lastUpdated}" /></span>
						
					</li>
				</g:if>
				
				<g:if test="${medicationInstance?.name}">
					<li class="fieldcontain">
						<span id="name-label" class="property-label"><g:message code="medication.name.label" default="Name" /></span>
						
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${medicationInstance}" field="name"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${medicationInstance?.patient}">
					<li class="fieldcontain">
						<span id="patient-label" class="property-label"><g:message code="medication.patient.label" default="Patient" /></span>
						
						<span class="property-value" aria-labelledby="patient-label"><g:link controller="patient" action="show" id="${medicationInstance?.patient?.id}">${medicationInstance?.patient?.encodeAsHTML()}</g:link></span>
						
					</li>
				</g:if>
				
			</ol>
		</div>
	</div>
</div>
%{--<g:form url="[resource:medicationInstance, action:'delete']" method="DELETE">--}%
%{--<fieldset class="buttons">--}%
%{--<g:link class="edit" action="edit" resource="${medicationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
%{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
%{--</fieldset>--}%
%{--</g:form>--}%
</body>
</html>
