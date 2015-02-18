
<%@ page import="com.health.logger.customer.Patient" %>

<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="bootstrap">
	<g:set var="entityName" value="${message(code: 'patient.label', default: 'Patient')}" />
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

			<ol class="property-list patient">
				
				<g:if test="${patientInstance?.uniqueId}">
					<li class="fieldcontain">
						<span id="uniqueId-label" class="property-label"><g:message code="patient.uniqueId.label" default="Unique Id" /></span>
						
						<span class="property-value" aria-labelledby="uniqueId-label"><g:fieldValue bean="${patientInstance}" field="uniqueId"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${patientInstance?.acuteDisease}">
					<li class="fieldcontain">
						<span id="acuteDisease-label" class="property-label"><g:message code="patient.acuteDisease.label" default="Acute Disease" /></span>
						
						<g:each in="${patientInstance.acuteDisease}" var="a">
							<span class="property-value" aria-labelledby="acuteDisease-label"><g:link controller="acuteDisease" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
						
					</li>
				</g:if>
				
				<g:if test="${patientInstance?.age}">
					<li class="fieldcontain">
						<span id="age-label" class="property-label"><g:message code="patient.age.label" default="Age" /></span>
						
						<span class="property-value" aria-labelledby="age-label"><g:fieldValue bean="${patientInstance}" field="age"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${patientInstance?.chronicDisease}">
					<li class="fieldcontain">
						<span id="chronicDisease-label" class="property-label"><g:message code="patient.chronicDisease.label" default="Chronic Disease" /></span>
						
						<g:each in="${patientInstance.chronicDisease}" var="c">
							<span class="property-value" aria-labelledby="chronicDisease-label"><g:link controller="chronicDisease" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
						
					</li>
				</g:if>
				
				<g:if test="${patientInstance?.dateCreated}">
					<li class="fieldcontain">
						<span id="dateCreated-label" class="property-label"><g:message code="patient.dateCreated.label" default="Date Created" /></span>
						
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${patientInstance?.dateCreated}" /></span>
						
					</li>
				</g:if>
				
				<g:if test="${patientInstance?.doctor}">
					<li class="fieldcontain">
						<span id="doctor-label" class="property-label"><g:message code="patient.doctor.label" default="Doctor" /></span>
						
						<g:each in="${patientInstance.doctor}" var="d">
							<span class="property-value" aria-labelledby="doctor-label"><g:link controller="doctor" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
						
					</li>
				</g:if>
				
				<g:if test="${patientInstance?.firstName}">
					<li class="fieldcontain">
						<span id="firstName-label" class="property-label"><g:message code="patient.firstName.label" default="First Name" /></span>
						
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${patientInstance}" field="firstName"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${patientInstance?.labReport}">
					<li class="fieldcontain">
						<span id="labReport-label" class="property-label"><g:message code="patient.labReport.label" default="Lab Report" /></span>
						
						<g:each in="${patientInstance.labReport}" var="l">
							<span class="property-value" aria-labelledby="labReport-label"><g:link controller="labReport" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
						
					</li>
				</g:if>
				
				<g:if test="${patientInstance?.lastName}">
					<li class="fieldcontain">
						<span id="lastName-label" class="property-label"><g:message code="patient.lastName.label" default="Last Name" /></span>
						
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${patientInstance}" field="lastName"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${patientInstance?.lastUpdated}">
					<li class="fieldcontain">
						<span id="lastUpdated-label" class="property-label"><g:message code="patient.lastUpdated.label" default="Last Updated" /></span>
						
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${patientInstance?.lastUpdated}" /></span>
						
					</li>
				</g:if>
				
				<g:if test="${patientInstance?.medication}">
					<li class="fieldcontain">
						<span id="medication-label" class="property-label"><g:message code="patient.medication.label" default="Medication" /></span>
						
						<g:each in="${patientInstance.medication}" var="m">
							<span class="property-value" aria-labelledby="medication-label"><g:link controller="medication" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
						
					</li>
				</g:if>
				
				<g:if test="${patientInstance?.middleName}">
					<li class="fieldcontain">
						<span id="middleName-label" class="property-label"><g:message code="patient.middleName.label" default="Middle Name" /></span>
						
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${patientInstance}" field="middleName"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${patientInstance?.patientImage}">
					<li class="fieldcontain">
						<span id="patientImage-label" class="property-label"><g:message code="patient.patientImage.label" default="Patient Image" /></span>
						
						<span class="property-value" aria-labelledby="patientImage-label"><g:fieldValue bean="${patientInstance}" field="patientImage"/></span>
						
					</li>
				</g:if>
				
				<g:if test="${patientInstance?.sex}">
					<li class="fieldcontain">
						<span id="sex-label" class="property-label"><g:message code="patient.sex.label" default="Sex" /></span>
						
						<span class="property-value" aria-labelledby="sex-label"><g:fieldValue bean="${patientInstance}" field="sex"/></span>
						
					</li>
				</g:if>
				
			</ol>
		</div>
	</div>
</div>
%{--<g:form url="[resource:patientInstance, action:'delete']" method="DELETE">--}%
%{--<fieldset class="buttons">--}%
%{--<g:link class="edit" action="edit" resource="${patientInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
%{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
%{--</fieldset>--}%
%{--</g:form>--}%
</body>
</html>
