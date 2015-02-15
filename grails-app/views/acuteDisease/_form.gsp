<%@ page import="com.health.logger.clinical.AcuteDisease" %>



<div class="form-group ${hasErrors(bean: acuteDiseaseInstance, field: 'description', 'error')} required">
	<label for="description" class="col-xs-2">
		<g:message code="acuteDisease.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="description" required="" value="${acuteDiseaseInstance?.description}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: acuteDiseaseInstance, field: 'name', 'error')} required">
	<label for="name" class="col-xs-2">
		<g:message code="acuteDisease.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="name" required="" value="${acuteDiseaseInstance?.name}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: acuteDiseaseInstance, field: 'patient', 'error')} ">
	<label for="patient" class="col-xs-2">
		<g:message code="acuteDisease.patient.label" default="Patient" />
		
	</label>
	

</div>

