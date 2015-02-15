<%@ page import="com.health.logger.customer.Patient" %>



<div class="form-group ${hasErrors(bean: patientInstance, field: 'uniqueId', 'error')} required">
	<label for="uniqueId" class="col-xs-2">
		<g:message code="patient.uniqueId.label" default="Unique Id" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="uniqueId" required="" value="${patientInstance?.uniqueId}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: patientInstance, field: 'acuteDisease', 'error')} ">
	<label for="acuteDisease" class="col-xs-2">
		<g:message code="patient.acuteDisease.label" default="Acute Disease" />
		
	</label>
	<div class="col-xs-10"><g:select name="acuteDisease" from="${com.health.logger.clinical.AcuteDisease.list()}" multiple="multiple" optionKey="id" size="5" value="${patientInstance?.acuteDisease*.id}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: patientInstance, field: 'age', 'error')} required">
	<label for="age" class="col-xs-2">
		<g:message code="patient.age.label" default="Age" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:field name="age" type="number" value="${patientInstance.age}" required=""/></div>

</div>

<div class="form-group ${hasErrors(bean: patientInstance, field: 'chronicDisease', 'error')} ">
	<label for="chronicDisease" class="col-xs-2">
		<g:message code="patient.chronicDisease.label" default="Chronic Disease" />
		
	</label>
	<div class="col-xs-10"><g:select name="chronicDisease" from="${com.health.logger.clinical.ChronicDisease.list()}" multiple="multiple" optionKey="id" size="5" value="${patientInstance?.chronicDisease*.id}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: patientInstance, field: 'doctor', 'error')} ">
	<label for="doctor" class="col-xs-2">
		<g:message code="patient.doctor.label" default="Doctor" />
		
	</label>
	

</div>

<div class="form-group ${hasErrors(bean: patientInstance, field: 'firstName', 'error')} required">
	<label for="firstName" class="col-xs-2">
		<g:message code="patient.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="firstName" required="" value="${patientInstance?.firstName}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: patientInstance, field: 'labReport', 'error')} ">
	<label for="labReport" class="col-xs-2">
		<g:message code="patient.labReport.label" default="Lab Report" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${patientInstance?.labReport?}" var="l">
    <li><g:link controller="labReport" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="labReport" action="create" params="['patient.id': patientInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'labReport.label', default: 'LabReport')])}</g:link>
</li>
</ul>


</div>

<div class="form-group ${hasErrors(bean: patientInstance, field: 'lastName', 'error')} required">
	<label for="lastName" class="col-xs-2">
		<g:message code="patient.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="lastName" required="" value="${patientInstance?.lastName}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: patientInstance, field: 'medication', 'error')} ">
	<label for="medication" class="col-xs-2">
		<g:message code="patient.medication.label" default="Medication" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${patientInstance?.medication?}" var="m">
    <li><g:link controller="medication" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="medication" action="create" params="['patient.id': patientInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'medication.label', default: 'Medication')])}</g:link>
</li>
</ul>


</div>

<div class="form-group ${hasErrors(bean: patientInstance, field: 'middleName', 'error')} required">
	<label for="middleName" class="col-xs-2">
		<g:message code="patient.middleName.label" default="Middle Name" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="middleName" required="" value="${patientInstance?.middleName}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: patientInstance, field: 'sex', 'error')} required">
	<label for="sex" class="col-xs-2">
		<g:message code="patient.sex.label" default="Sex" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="sex" required="" value="${patientInstance?.sex}" class="form-control"/></div>

</div>

