
<%@ page import="com.health.logger.usermanagement.Menu" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'menu.label', default: 'Menu')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-menu" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-menu" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list menu">
			
				<g:if test="${menuInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="menu.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${menuInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${menuInstance?.cName}">
				<li class="fieldcontain">
					<span id="cName-label" class="property-label"><g:message code="menu.cName.label" default="C Name" /></span>
					
						<span class="property-value" aria-labelledby="cName-label"><g:fieldValue bean="${menuInstance}" field="cName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${menuInstance?.aName}">
				<li class="fieldcontain">
					<span id="aName-label" class="property-label"><g:message code="menu.aName.label" default="A Name" /></span>
					
						<span class="property-value" aria-labelledby="aName-label"><g:fieldValue bean="${menuInstance}" field="aName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${menuInstance?.icon}">
				<li class="fieldcontain">
					<span id="icon-label" class="property-label"><g:message code="menu.icon.label" default="Icon" /></span>
					
						<span class="property-value" aria-labelledby="icon-label"><g:fieldValue bean="${menuInstance}" field="icon"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${menuInstance?.parent}">
				<li class="fieldcontain">
					<span id="parent-label" class="property-label"><g:message code="menu.parent.label" default="Parent" /></span>
					
						<span class="property-value" aria-labelledby="parent-label"><g:link controller="menu" action="show" id="${menuInstance?.parent?.id}">${menuInstance?.parent?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${menuInstance?.child}">
				<li class="fieldcontain">
					<span id="child-label" class="property-label"><g:message code="menu.child.label" default="Child" /></span>
					
						<g:each in="${menuInstance.child}" var="c">
						<span class="property-value" aria-labelledby="child-label"><g:link controller="menu" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${menuInstance?.displayName}">
				<li class="fieldcontain">
					<span id="displayName-label" class="property-label"><g:message code="menu.displayName.label" default="Display Name" /></span>
					
						<span class="property-value" aria-labelledby="displayName-label"><g:fieldValue bean="${menuInstance}" field="displayName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${menuInstance?.displayOrder}">
				<li class="fieldcontain">
					<span id="displayOrder-label" class="property-label"><g:message code="menu.displayOrder.label" default="Display Order" /></span>
					
						<span class="property-value" aria-labelledby="displayOrder-label"><g:fieldValue bean="${menuInstance}" field="displayOrder"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:menuInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${menuInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
