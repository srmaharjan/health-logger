<%@ page import="com.health.logger.usermanagement.ModuleMenu" %>



<div class="form-group ${hasErrors(bean: moduleMenuInstance, field: 'code', 'error')} required">
	<label for="code" class="col-xs-2">
		<g:message code="moduleMenu.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="code" required="" value="${moduleMenuInstance?.code}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: moduleMenuInstance, field: 'moduleController', 'error')} ">
	<label for="moduleController" class="col-xs-2">
		<g:message code="moduleMenu.moduleController.label" default="Module Controller" />
		
	</label>
	<div class="col-xs-10"><g:textField name="moduleController" value="${moduleMenuInstance?.moduleController}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: moduleMenuInstance, field: 'moduleAction', 'error')} ">
	<label for="moduleAction" class="col-xs-2">
		<g:message code="moduleMenu.moduleAction.label" default="Module Action" />
		
	</label>
	<div class="col-xs-10"><g:textField name="moduleAction" value="${moduleMenuInstance?.moduleAction}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: moduleMenuInstance, field: 'icon', 'error')} ">
	<label for="icon" class="col-xs-2">
		<g:message code="moduleMenu.icon.label" default="Icon" />
		
	</label>
	<div class="col-xs-10"><g:textField name="icon" value="${moduleMenuInstance?.icon}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: moduleMenuInstance, field: 'parent', 'error')} ">
	<label for="parent" class="col-xs-2">
		<g:message code="moduleMenu.parent.label" default="Parent" />
		
	</label>
	<div class="col-xs-10"><g:select id="parent" name="parent.id" from="${com.health.logger.usermanagement.ModuleMenu.list()}" optionKey="id" value="${moduleMenuInstance?.parent?.id}" class="form-control" noSelection="['null': '']"/></div>

</div>

<div class="form-group ${hasErrors(bean: moduleMenuInstance, field: 'child', 'error')} ">
	<label for="child" class="col-xs-2">
		<g:message code="moduleMenu.child.label" default="Child" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${moduleMenuInstance?.child?}" var="c">
    <li><g:link controller="moduleMenu" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="moduleMenu" action="create" params="['moduleMenu.id': moduleMenuInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'moduleMenu.label', default: 'ModuleMenu')])}</g:link>
</li>
</ul>


</div>

<div class="form-group ${hasErrors(bean: moduleMenuInstance, field: 'displayName', 'error')} required">
	<label for="displayName" class="col-xs-2">
		<g:message code="moduleMenu.displayName.label" default="Display Name" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="displayName" required="" value="${moduleMenuInstance?.displayName}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: moduleMenuInstance, field: 'displayOrder', 'error')} required">
	<label for="displayOrder" class="col-xs-2">
		<g:message code="moduleMenu.displayOrder.label" default="Display Order" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:field name="displayOrder" value="${fieldValue(bean: moduleMenuInstance, field: 'displayOrder')}" required=""/></div>

</div>

