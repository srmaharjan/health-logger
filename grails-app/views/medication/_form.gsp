<%@ page import="com.health.logger.clinical.Medication" %>



<div class="form-group ${hasErrors(bean: medicationInstance, field: 'description', 'error')} required">
	<label for="description" class="col-xs-2">
		<g:message code="medication.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="description" required="" value="${medicationInstance?.description}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: medicationInstance, field: 'name', 'error')} required">
	<label for="name" class="col-xs-2">
		<g:message code="medication.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="name" required="" value="${medicationInstance?.name}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: medicationInstance, field: 'patient', 'error')} required">
	<label for="patient" class="col-xs-2">
		<g:message code="medication.patient.label" default="Patient" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:select id="patient" name="patient.id" from="${com.health.logger.customer.Patient.list()}" optionKey="id" required="" value="${medicationInstance?.patient?.id}" class="form-control"/></div>

</div>

