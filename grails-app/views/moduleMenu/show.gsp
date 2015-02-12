
<%@ page import="com.health.logger.usermanagement.ModuleMenu" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'moduleMenu.label', default: 'ModuleMenu')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-moduleMenu" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-moduleMenu" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list moduleMenu">
			
				<g:if test="${moduleMenuInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="moduleMenu.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${moduleMenuInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${moduleMenuInstance?.moduleController}">
				<li class="fieldcontain">
					<span id="moduleController-label" class="property-label"><g:message code="moduleMenu.moduleController.label" default="Module Controller" /></span>
					
						<span class="property-value" aria-labelledby="moduleController-label"><g:fieldValue bean="${moduleMenuInstance}" field="moduleController"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${moduleMenuInstance?.moduleAction}">
				<li class="fieldcontain">
					<span id="moduleAction-label" class="property-label"><g:message code="moduleMenu.moduleAction.label" default="Module Action" /></span>
					
						<span class="property-value" aria-labelledby="moduleAction-label"><g:fieldValue bean="${moduleMenuInstance}" field="moduleAction"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${moduleMenuInstance?.icon}">
				<li class="fieldcontain">
					<span id="icon-label" class="property-label"><g:message code="moduleMenu.icon.label" default="Icon" /></span>
					
						<span class="property-value" aria-labelledby="icon-label"><g:fieldValue bean="${moduleMenuInstance}" field="icon"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${moduleMenuInstance?.parent}">
				<li class="fieldcontain">
					<span id="parent-label" class="property-label"><g:message code="moduleMenu.parent.label" default="Parent" /></span>
					
						<span class="property-value" aria-labelledby="parent-label"><g:link controller="moduleMenu" action="show" id="${moduleMenuInstance?.parent?.id}">${moduleMenuInstance?.parent?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${moduleMenuInstance?.child}">
				<li class="fieldcontain">
					<span id="child-label" class="property-label"><g:message code="moduleMenu.child.label" default="Child" /></span>
					
						<g:each in="${moduleMenuInstance.child}" var="c">
						<span class="property-value" aria-labelledby="child-label"><g:link controller="moduleMenu" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${moduleMenuInstance?.displayName}">
				<li class="fieldcontain">
					<span id="displayName-label" class="property-label"><g:message code="moduleMenu.displayName.label" default="Display Name" /></span>
					
						<span class="property-value" aria-labelledby="displayName-label"><g:fieldValue bean="${moduleMenuInstance}" field="displayName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${moduleMenuInstance?.displayOrder}">
				<li class="fieldcontain">
					<span id="displayOrder-label" class="property-label"><g:message code="moduleMenu.displayOrder.label" default="Display Order" /></span>
					
						<span class="property-value" aria-labelledby="displayOrder-label"><g:fieldValue bean="${moduleMenuInstance}" field="displayOrder"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:moduleMenuInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${moduleMenuInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
