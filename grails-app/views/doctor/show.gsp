
<%@ page import="com.health.logger.clinical.Doctor" %>

<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="bootstrap">
	<g:set var="entityName" value="${message(code: 'doctor.label', default: 'Doctor')}" />
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

			<ol class="property-list doctor">
				
				<g:if test="${doctorInstance?.dateCreated}">
					<li class="fieldcontain">
						<span id="dateCreated-label" class="property-label"><g:message code="doctor.dateCreated.label" default="Date Created" /></span>
						
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${doctorInstance?.dateCreated}" /></span>
						
					</li>
				</g:if>
				
				<g:if test="${doctorInstance?.firstName}">
					<li class="fieldcontain">
						<span id="firstName-label" class="property-label"><g:message code="doctor.firstName.label" default="First Name" /></span>
						
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${doctorInstance}" field="firstName"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${doctorInstance?.lastName}">
					<li class="fieldcontain">
						<span id="lastName-label" class="property-label"><g:message code="doctor.lastName.label" default="Last Name" /></span>
						
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${doctorInstance}" field="lastName"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${doctorInstance?.lastUpdated}">
					<li class="fieldcontain">
						<span id="lastUpdated-label" class="property-label"><g:message code="doctor.lastUpdated.label" default="Last Updated" /></span>
						
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${doctorInstance?.lastUpdated}" /></span>
						
					</li>
				</g:if>
				
				<g:if test="${doctorInstance?.middleName}">
					<li class="fieldcontain">
						<span id="middleName-label" class="property-label"><g:message code="doctor.middleName.label" default="Middle Name" /></span>
						
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${doctorInstance}" field="middleName"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${doctorInstance?.patient}">
					<li class="fieldcontain">
						<span id="patient-label" class="property-label"><g:message code="doctor.patient.label" default="Patient" /></span>
						
						<g:each in="${doctorInstance.patient}" var="p">
							<span class="property-value" aria-labelledby="patient-label"><g:link controller="patient" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
						
					</li>
				</g:if>
				
			</ol>
		</div>
	</div>
</div>
%{--<g:form url="[resource:doctorInstance, action:'delete']" method="DELETE">--}%
%{--<fieldset class="buttons">--}%
%{--<g:link class="edit" action="edit" resource="${doctorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
%{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
%{--</fieldset>--}%
%{--</g:form>--}%
</body>
</html>
