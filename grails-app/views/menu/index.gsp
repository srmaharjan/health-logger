
<%@ page import="com.health.logger.usermanagement.Menu" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="bootstrap">
	<g:set var="entityName" value="${message(code: 'menu.label', default: 'Menu')}" />
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
						
						<g:sortableColumn property="code" title="${message(code: 'menu.code.label', default: 'Code')}" />
						
						<g:sortableColumn property="cName" title="${message(code: 'menu.cName.label', default: 'C Name')}" />
						
						<g:sortableColumn property="aName" title="${message(code: 'menu.aName.label', default: 'A Name')}" />
						
						<g:sortableColumn property="icon" title="${message(code: 'menu.icon.label', default: 'Icon')}" />
						
						<th><g:message code="menu.parent.label" default="Parent" /></th>
						
						<g:sortableColumn property="displayName" title="${message(code: 'menu.displayName.label', default: 'Display Name')}" />
						
					</tr>
					</thead>
					<tbody>
					<g:each in="${menuInstanceList}" status="i" var="menuInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							
							<td><g:link action="show" id="${menuInstance.id}">${fieldValue(bean: menuInstance, field: "code")}</g:link></td>
							
							<td>${fieldValue(bean: menuInstance, field: "cName")}</td>
							
							<td>${fieldValue(bean: menuInstance, field: "aName")}</td>
							
							<td>${fieldValue(bean: menuInstance, field: "icon")}</td>
							
							<td>${fieldValue(bean: menuInstance, field: "parent")}</td>
							
							<td>${fieldValue(bean: menuInstance, field: "displayName")}</td>
							
						</tr>
					</g:each>
					</tbody>
				</table>
			</div>
			<div class="box-footer clearfix">
				<g:paginate total="${menuInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
</div>
</body>
</html>
