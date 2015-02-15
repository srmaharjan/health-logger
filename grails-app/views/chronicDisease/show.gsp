
<%@ page import="com.health.logger.clinical.ChronicDisease" %>

<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="bootstrap">
	<g:set var="entityName" value="${message(code: 'chronicDisease.label', default: 'ChronicDisease')}" />
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

			<ol class="property-list chronicDisease">
				
				<g:if test="${chronicDiseaseInstance?.dateCreated}">
					<li class="fieldcontain">
						<span id="dateCreated-label" class="property-label"><g:message code="chronicDisease.dateCreated.label" default="Date Created" /></span>
						
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${chronicDiseaseInstance?.dateCreated}" /></span>
						
					</li>
				</g:if>
				
				<g:if test="${chronicDiseaseInstance?.description}">
					<li class="fieldcontain">
						<span id="description-label" class="property-label"><g:message code="chronicDisease.description.label" default="Description" /></span>
						
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${chronicDiseaseInstance}" field="description"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${chronicDiseaseInstance?.lastUpdated}">
					<li class="fieldcontain">
						<span id="lastUpdated-label" class="property-label"><g:message code="chronicDisease.lastUpdated.label" default="Last Updated" /></span>
						
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${chronicDiseaseInstance?.lastUpdated}" /></span>
						
					</li>
				</g:if>
				
				<g:if test="${chronicDiseaseInstance?.name}">
					<li class="fieldcontain">
						<span id="name-label" class="property-label"><g:message code="chronicDisease.name.label" default="Name" /></span>
						
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${chronicDiseaseInstance}" field="name"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${chronicDiseaseInstance?.patient}">
					<li class="fieldcontain">
						<span id="patient-label" class="property-label"><g:message code="chronicDisease.patient.label" default="Patient" /></span>
						
						<g:each in="${chronicDiseaseInstance.patient}" var="p">
							<span class="property-value" aria-labelledby="patient-label"><g:link controller="patient" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
						
					</li>
				</g:if>
				
			</ol>
		</div>
	</div>
</div>
%{--<g:form url="[resource:chronicDiseaseInstance, action:'delete']" method="DELETE">--}%
%{--<fieldset class="buttons">--}%
%{--<g:link class="edit" action="edit" resource="${chronicDiseaseInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
%{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
%{--</fieldset>--}%
%{--</g:form>--}%
</body>
</html>
