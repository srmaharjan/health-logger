<%@ page import="com.health.logger.usermanagement.Menu" %>



<div class="form-group ${hasErrors(bean: menuInstance, field: 'code', 'error')} required">
	<label for="code" class="col-xs-2">
		<g:message code="menu.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="code" required="" value="${menuInstance?.code}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: menuInstance, field: 'cName', 'error')} ">
	<label for="cName" class="col-xs-2">
		<g:message code="menu.cName.label" default="C Name" />
		
	</label>
	<div class="col-xs-10"><g:textField name="cName" value="${menuInstance?.cName}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: menuInstance, field: 'aName', 'error')} ">
	<label for="aName" class="col-xs-2">
		<g:message code="menu.aName.label" default="A Name" />
		
	</label>
	<div class="col-xs-10"><g:textField name="aName" value="${menuInstance?.aName}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: menuInstance, field: 'icon', 'error')} ">
	<label for="icon" class="col-xs-2">
		<g:message code="menu.icon.label" default="Icon" />
		
	</label>
	<div class="col-xs-10"><g:textField name="icon" value="${menuInstance?.icon}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: menuInstance, field: 'parent', 'error')} ">
	<label for="parent" class="col-xs-2">
		<g:message code="menu.parent.label" default="Parent" />
		
	</label>
	<div class="col-xs-10"><g:select id="parent" name="parent.id" from="${com.health.logger.usermanagement.Menu.list()}" optionKey="id" value="${menuInstance?.parent?.id}" class="form-control" noSelection="['null': '']"/></div>

</div>

<div class="form-group ${hasErrors(bean: menuInstance, field: 'child', 'error')} ">
	<label for="child" class="col-xs-2">
		<g:message code="menu.child.label" default="Child" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${menuInstance?.child?}" var="c">
    <li><g:link controller="menu" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="menu" action="create" params="['menu.id': menuInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'menu.label', default: 'Menu')])}</g:link>
</li>
</ul>


</div>

<div class="form-group ${hasErrors(bean: menuInstance, field: 'displayName', 'error')} required">
	<label for="displayName" class="col-xs-2">
		<g:message code="menu.displayName.label" default="Display Name" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:textField name="displayName" required="" value="${menuInstance?.displayName}" class="form-control"/></div>

</div>

<div class="form-group ${hasErrors(bean: menuInstance, field: 'displayOrder', 'error')} required">
	<label for="displayOrder" class="col-xs-2">
		<g:message code="menu.displayOrder.label" default="Display Order" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-xs-10"><g:field name="displayOrder" value="${fieldValue(bean: menuInstance, field: 'displayOrder')}" required=""/></div>

</div>

