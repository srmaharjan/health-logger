<% import grails.persistence.Event %>
<%=packageName%>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="bootstrap">
	<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<section class="content-header">
	<h1>
		<g:message code="default.list.label" args="[entityName]" />
	</h1>
</section>
<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-body table-responsive no-padding">
				<g:if test="\${flash.message}">
					<div class="message" role="status">\${flash.message}</div>
				</g:if>
                <g:render template="list"/>
			</div>
			<div class="box-footer clearfix">
				<g:paginate total="\${${propertyName}Count ?: 0}" />
			</div>
		</div>
	</div>
</div>
</body>
</html>
