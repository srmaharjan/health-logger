
<table class="table table-bordered table-hover">
    <thead>
    <tr>
        
        <g:sortableColumn property="dateCreated"
                          title="${message(code: 'doctor.dateCreated.label', default: 'Date Created')}"/>
        
        <g:sortableColumn property="firstName"
                          title="${message(code: 'doctor.firstName.label', default: 'First Name')}"/>
        
        <g:sortableColumn property="lastName"
                          title="${message(code: 'doctor.lastName.label', default: 'Last Name')}"/>
        
        <g:sortableColumn property="lastUpdated"
                          title="${message(code: 'doctor.lastUpdated.label', default: 'Last Updated')}"/>
        
        <g:sortableColumn property="middleName"
                          title="${message(code: 'doctor.middleName.label', default: 'Middle Name')}"/>
        
        <th><g:message code="default.actions.label" default="Actions"/></th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${doctorInstanceList}" status="i" var="doctorInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
            
            <td>${fieldValue(bean: doctorInstance, field: "dateCreated")}</td>
            
            <td>${fieldValue(bean: doctorInstance, field: "firstName")}</td>
            
            <td>${fieldValue(bean: doctorInstance, field: "lastName")}</td>
            
            <td><g:formatDate date="${doctorInstance.lastUpdated}"/></td>
            
            <td>${fieldValue(bean: doctorInstance, field: "middleName")}</td>
            
            <td>
                <sec:access url="${createLink(action:'edit', base: '/')}">
                    <g:link action="edit" class="btn btn-default btn-sm" id="${doctorInstance.id}" title="Edit">
                        <i class="fa fa-edit"></i>
                    </g:link>
                </sec:access>
                <sec:access url="${createLink(action:'show', base: '/')}">
                    <g:link action="show" class="btn btn-primary btn-sm" id="${doctorInstance.id}" title="Show">
                        <i class="fa fa-bars"></i>
                    </g:link>
                </sec:access>
                <sec:access url="${createLink(action:'delete', base: '/')}">
                    <div style="display:none;">
                        <form name="delete-form-${doctorInstance.id}" action="delete" method="POST" onsubmit="return confirm('Do you want to delete?')">
                            <g:hiddenField name="id" value="${doctorInstance.id}"/>
                        </form>
                    </div>
                    <a href="javascript:void(0);" onclick="document.getElementsByName('delete-form-${doctorInstance.id}').submit();"  class="btn btn-danger btn-sm" title="delete">
                        <i class="fa fa-times"></i>
                    </a>
                </sec:access>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>