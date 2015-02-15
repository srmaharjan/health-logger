
<table class="table table-bordered table-hover">
    <thead>
    <tr>
        
        <g:sortableColumn property="username"
                          title="${message(code: 'user.username.label', default: 'Username')}"/>
        
        <g:sortableColumn property="password"
                          title="${message(code: 'user.password.label', default: 'Password')}"/>
        
        <g:sortableColumn property="accountExpired"
                          title="${message(code: 'user.accountExpired.label', default: 'Account Expired')}"/>
        
        <g:sortableColumn property="accountLocked"
                          title="${message(code: 'user.accountLocked.label', default: 'Account Locked')}"/>
        
        <g:sortableColumn property="enabled"
                          title="${message(code: 'user.enabled.label', default: 'Enabled')}"/>
        
        <g:sortableColumn property="passwordExpired"
                          title="${message(code: 'user.passwordExpired.label', default: 'Password Expired')}"/>
        
        <th><g:message code="default.actions.label" default="Actions"/></th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${userInstanceList}" status="i" var="userInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
            
            <td>${fieldValue(bean: userInstance, field: "username")}</td>
            
            <td>${fieldValue(bean: userInstance, field: "password")}</td>
            
            <td><g:formatBoolean boolean="${userInstance.accountExpired}"/></td>
            
            <td><g:formatBoolean boolean="${userInstance.accountLocked}"/></td>
            
            <td><g:formatBoolean boolean="${userInstance.enabled}"/></td>
            
            <td><g:formatBoolean boolean="${userInstance.passwordExpired}"/></td>
            
            <td>
                <sec:access url="${createLink(action:'edit', base: '/')}">
                    <g:link action="edit" class="btn btn-default btn-sm" id="${userInstance.id}" title="Edit">
                        <i class="fa fa-edit"></i>
                    </g:link>
                </sec:access>
                <sec:access url="${createLink(action:'show', base: '/')}">
                    <g:link action="show" class="btn btn-primary btn-sm" id="${userInstance.id}" title="Show">
                        <i class="fa fa-bars"></i>
                    </g:link>
                </sec:access>
                <sec:access url="${createLink(action:'delete', base: '/')}">
                    <div style="display:none;">
                        <form name="delete-form-${userInstance.id}" action="delete" method="POST" onsubmit="return confirm('Do you want to delete?')">
                            <g:hiddenField name="id" value="${userInstance.id}"/>
                        </form>
                    </div>
                    <a href="javascript:void(0);" onclick="document.getElementsByName('delete-form-${userInstance.id}').submit();"  class="btn btn-danger btn-sm" title="delete">
                        <i class="fa fa-times"></i>
                    </a>
                </sec:access>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>