<%@ page import="com.health.logger.clinical.ChronicDisease" %>



<div class="form-group ${hasErrors(bean: chronicDiseaseInstance, field: 'description', 'error')} required">
	<label for="description" class="col-xs-2">
		<g:message code="chronicDisease.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="description" required="" value="${chronicDiseaseInstance?.description}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: chronicDiseaseInstance, field: 'name', 'error')} required">
	<label for="name" class="col-xs-2">
		<g:message code="chronicDisease.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="name" required="" value="${chronicDiseaseInstance?.name}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: chronicDiseaseInstance, field: 'patient', 'error')} ">
	<label for="patient" class="col-xs-2">
		<g:message code="chronicDisease.patient.label" default="Patient" />
		
	</label>
	

</div>

