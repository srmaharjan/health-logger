<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="bootstrap">
	<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
	<title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>
<section class="content-header">
	<h1>
		<g:message code="default.edit.label" args="[entityName]" />
	</h1>
</section>
<!-- Main content -->
<section class="content">
	<div class="row">
		<section class="col-lg-12 connectedSortable">
			<div id="edit-${domainClass.propertyName}" class="box box-primary" role="main">
				<g:if test="\${flash.message}">
					<div class="message" role="status">\${flash.message}</div>
				</g:if>
				<g:hasErrors bean="\${${propertyName}}">
					<ul class="errors" role="alert">
						<g:eachError bean="\${${propertyName}}" var="error">
							<li <g:if test="\${error in org.springframework.validation.FieldError}">data-field-id="\${error.field}"</g:if>><g:message error="\${error}"/></li>
						</g:eachError>
					</ul>
				</g:hasErrors>
				<g:form class="form-horizontal" url="[resource:${propertyName}, action:'update']" method="PUT" <%= multiPart ? ' enctype="multipart/form-data"' : '' %>>
				<g:hiddenField name="version" value="\${${propertyName}?.version}" />
				<div class="box-body">
					<g:render template="form"/>
				</div>
				<div class="box-footer">
					<g:actionSubmit class="save  btn btn-primary" action="update" value="\${message(code: 'default.button.update.label', default: 'Update')}" />
				</div>
				</g:form>
			</div>
		</section>
	</div><!-- /.row (main row) -->

</section><!-- /.content -->
</html>
