<%@ page import="com.health.logger.report.LabReport" %>



<div class="form-group ${hasErrors(bean: labReportInstance, field: 'description', 'error')} required">
	<label for="description" class="col-xs-2">
		<g:message code="labReport.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="description" required="" value="${labReportInstance?.description}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: labReportInstance, field: 'name', 'error')} required">
	<label for="name" class="col-xs-2">
		<g:message code="labReport.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="name" required="" value="${labReportInstance?.name}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: labReportInstance, field: 'patient', 'error')} required">
	<label for="patient" class="col-xs-2">
		<g:message code="labReport.patient.label" default="Patient" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:select id="patient" name="patient.id" from="${com.health.logger.customer.Patient.list()}" optionKey="id" required="" value="${labReportInstance?.patient?.id}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: labReportInstance, field: 'type', 'error')} required">
	<label for="type" class="col-xs-2">
		<g:message code="labReport.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="type" required="" value="${labReportInstance?.type}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: labReportInstance, field: 'udf1', 'error')} required">
	<label for="udf1" class="col-xs-2">
		<g:message code="labReport.udf1.label" default="Udf1" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="udf1" required="" value="${labReportInstance?.udf1}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: labReportInstance, field: 'udf2', 'error')} required">
	<label for="udf2" class="col-xs-2">
		<g:message code="labReport.udf2.label" default="Udf2" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="udf2" required="" value="${labReportInstance?.udf2}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: labReportInstance, field: 'udf3', 'error')} required">
	<label for="udf3" class="col-xs-2">
		<g:message code="labReport.udf3.label" default="Udf3" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="udf3" required="" value="${labReportInstance?.udf3}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: labReportInstance, field: 'udf4', 'error')} required">
	<label for="udf4" class="col-xs-2">
		<g:message code="labReport.udf4.label" default="Udf4" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="udf4" required="" value="${labReportInstance?.udf4}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: labReportInstance, field: 'udf5', 'error')} required">
	<label for="udf5" class="col-xs-2">
		<g:message code="labReport.udf5.label" default="Udf5" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="udf5" required="" value="${labReportInstance?.udf5}" class="form-control"/></div>

</div>

