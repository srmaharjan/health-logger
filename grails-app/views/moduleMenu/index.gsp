
<%@ page import="com.health.logger.usermanagement.ModuleMenu" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="bootstrap">
	<g:set var="entityName" value="${message(code: 'moduleMenu.label', default: 'ModuleMenu')}" />
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
				<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
				</g:if>
				<table class="table table-hover">
					<thead>
					<tr>
						
						<g:sortableColumn property="code" title="${message(code: 'moduleMenu.code.label', default: 'Code')}" />
						
						<g:sortableColumn property="moduleController" title="${message(code: 'moduleMenu.moduleController.label', default: 'Module Controller')}" />
						
						<g:sortableColumn property="moduleAction" title="${message(code: 'moduleMenu.moduleAction.label', default: 'Module Action')}" />
						
						<g:sortableColumn property="icon" title="${message(code: 'moduleMenu.icon.label', default: 'Icon')}" />
						
						<th><g:message code="moduleMenu.parent.label" default="Parent" /></th>
						
						<g:sortableColumn property="displayName" title="${message(code: 'moduleMenu.displayName.label', default: 'Display Name')}" />
						
					</tr>
					</thead>
					<tbody>
					<g:each in="${moduleMenuInstanceList}" status="i" var="moduleMenuInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							
							<td><g:link action="show" id="${moduleMenuInstance.id}">${fieldValue(bean: moduleMenuInstance, field: "code")}</g:link></td>
							
							<td>${fieldValue(bean: moduleMenuInstance, field: "moduleController")}</td>
							
							<td>${fieldValue(bean: moduleMenuInstance, field: "moduleAction")}</td>
							
							<td>${fieldValue(bean: moduleMenuInstance, field: "icon")}</td>
							
							<td>${fieldValue(bean: moduleMenuInstance, field: "parent")}</td>
							
							<td>${fieldValue(bean: moduleMenuInstance, field: "displayName")}</td>
							
						</tr>
					</g:each>
					</tbody>
				</table>
			</div>
			<div class="box-footer clearfix">
				<g:paginate total="${moduleMenuInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
</div>
</body>
</html>
