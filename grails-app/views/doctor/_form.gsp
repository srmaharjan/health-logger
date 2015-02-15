<%@ page import="com.health.logger.clinical.Doctor" %>



<div class="form-group ${hasErrors(bean: doctorInstance, field: 'firstName', 'error')} required">
	<label for="firstName" class="col-xs-2">
		<g:message code="doctor.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="firstName" required="" value="${doctorInstance?.firstName}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: doctorInstance, field: 'lastName', 'error')} required">
	<label for="lastName" class="col-xs-2">
		<g:message code="doctor.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="lastName" required="" value="${doctorInstance?.lastName}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: doctorInstance, field: 'middleName', 'error')} required">
	<label for="middleName" class="col-xs-2">
		<g:message code="doctor.middleName.label" default="Middle Name" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="middleName" required="" value="${doctorInstance?.middleName}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: doctorInstance, field: 'patient', 'error')} ">
	<label for="patient" class="col-xs-2">
		<g:message code="doctor.patient.label" default="Patient" />
		
	</label>
	<div class="col-xs-10"><g:select name="patient" from="${com.health.logger.customer.Patient.list()}" multiple="multiple" optionKey="id" size="5" value="${doctorInstance?.patient*.id}" class="form-control"/></div>

</div>

