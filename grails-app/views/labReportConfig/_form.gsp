<%@ page import="com.health.logger.report.LabReportConfig" %>



<div class="form-group ${hasErrors(bean: labReportConfigInstance, field: 'type', 'error')} required">
	<label for="type" class="col-xs-2">
		<g:message code="labReportConfig.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="type" required="" value="${labReportConfigInstance?.type}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: labReportConfigInstance, field: 'udf1Key', 'error')} required">
	<label for="udf1Key" class="col-xs-2">
		<g:message code="labReportConfig.udf1Key.label" default="Udf1 Key" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="udf1Key" required="" value="${labReportConfigInstance?.udf1Key}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: labReportConfigInstance, field: 'udf2Key', 'error')} required">
	<label for="udf2Key" class="col-xs-2">
		<g:message code="labReportConfig.udf2Key.label" default="Udf2 Key" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="udf2Key" required="" value="${labReportConfigInstance?.udf2Key}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: labReportConfigInstance, field: 'udf3Key', 'error')} required">
	<label for="udf3Key" class="col-xs-2">
		<g:message code="labReportConfig.udf3Key.label" default="Udf3 Key" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="udf3Key" required="" value="${labReportConfigInstance?.udf3Key}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: labReportConfigInstance, field: 'udf4Key', 'error')} required">
	<label for="udf4Key" class="col-xs-2">
		<g:message code="labReportConfig.udf4Key.label" default="Udf4 Key" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="udf4Key" required="" value="${labReportConfigInstance?.udf4Key}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: labReportConfigInstance, field: 'udf5Key', 'error')} required">
	<label for="udf5Key" class="col-xs-2">
		<g:message code="labReportConfig.udf5Key.label" default="Udf5 Key" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="udf5Key" required="" value="${labReportConfigInstance?.udf5Key}" class="form-control"/></div>

</div>

