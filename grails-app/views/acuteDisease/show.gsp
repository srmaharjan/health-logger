
<%@ page import="com.health.logger.clinical.AcuteDisease" %>

<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="bootstrap">
	<g:set var="entityName" value="${message(code: 'acuteDisease.label', default: 'AcuteDisease')}" />
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

			<ol class="property-list acuteDisease">
				
				<g:if test="${acuteDiseaseInstance?.dateCreated}">
					<li class="fieldcontain">
						<span id="dateCreated-label" class="property-label"><g:message code="acuteDisease.dateCreated.label" default="Date Created" /></span>
						
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${acuteDiseaseInstance?.dateCreated}" /></span>
						
					</li>
				</g:if>
				
				<g:if test="${acuteDiseaseInstance?.description}">
					<li class="fieldcontain">
						<span id="description-label" class="property-label"><g:message code="acuteDisease.description.label" default="Description" /></span>
						
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${acuteDiseaseInstance}" field="description"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${acuteDiseaseInstance?.lastUpdated}">
					<li class="fieldcontain">
						<span id="lastUpdated-label" class="property-label"><g:message code="acuteDisease.lastUpdated.label" default="Last Updated" /></span>
						
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${acuteDiseaseInstance?.lastUpdated}" /></span>
						
					</li>
				</g:if>
				
				<g:if test="${acuteDiseaseInstance?.name}">
					<li class="fieldcontain">
						<span id="name-label" class="property-label"><g:message code="acuteDisease.name.label" default="Name" /></span>
						
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${acuteDiseaseInstance}" field="name"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${acuteDiseaseInstance?.patient}">
					<li class="fieldcontain">
						<span id="patient-label" class="property-label"><g:message code="acuteDisease.patient.label" default="Patient" /></span>
						
						<g:each in="${acuteDiseaseInstance.patient}" var="p">
							<span class="property-value" aria-labelledby="patient-label"><g:link controller="patient" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
						
					</li>
				</g:if>
				
			</ol>
		</div>
	</div>
</div>
%{--<g:form url="[resource:acuteDiseaseInstance, action:'delete']" method="DELETE">--}%
%{--<fieldset class="buttons">--}%
%{--<g:link class="edit" action="edit" resource="${acuteDiseaseInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
%{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
%{--</fieldset>--}%
%{--</g:form>--}%
</body>
</html>
