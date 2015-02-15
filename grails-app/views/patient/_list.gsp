
<table class="table table-bordered table-hover">
    <thead>
    <tr>
        
        <g:sortableColumn property="uniqueId"
                          title="${message(code: 'patient.uniqueId.label', default: 'Unique Id')}"/>
        
        <g:sortableColumn property="age"
                          title="${message(code: 'patient.age.label', default: 'Age')}"/>
        
        <g:sortableColumn property="dateCreated"
                          title="${message(code: 'patient.dateCreated.label', default: 'Date Created')}"/>
        
        <g:sortableColumn property="firstName"
                          title="${message(code: 'patient.firstName.label', default: 'First Name')}"/>
        
        <g:sortableColumn property="lastName"
                          title="${message(code: 'patient.lastName.label', default: 'Last Name')}"/>
        
        <g:sortableColumn property="lastUpdated"
                          title="${message(code: 'patient.lastUpdated.label', default: 'Last Updated')}"/>
        
        <th><g:message code="default.actions.label" default="Actions"/></th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${patientInstanceList}" status="i" var="patientInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
            
            <td>${fieldValue(bean: patientInstance, field: "uniqueId")}</td>
            
            <td>${fieldValue(bean: patientInstance, field: "age")}</td>
            
            <td><g:formatDate date="${patientInstance.dateCreated}"/></td>
            
            <td>${fieldValue(bean: patientInstance, field: "firstName")}</td>
            
            <td>${fieldValue(bean: patientInstance, field: "lastName")}</td>
            
            <td><g:formatDate date="${patientInstance.lastUpdated}"/></td>
            
            <td>
                <sec:access url="${createLink(action:'edit', base: '/')}">
                    <g:link action="edit" class="btn btn-default btn-sm" id="${patientInstance.id}" title="Edit">
                        <i class="fa fa-edit"></i>
                    </g:link>
                </sec:access>
                <sec:access url="${createLink(action:'show', base: '/')}">
                    <g:link action="show" class="btn btn-primary btn-sm" id="${patientInstance.id}" title="Show">
                        <i class="fa fa-bars"></i>
                    </g:link>
                </sec:access>
                <sec:access url="${createLink(action:'delete', base: '/')}">
                    <div style="display:none;">
                        <form name="delete-form-${patientInstance.id}" action="delete" method="POST" onsubmit="return confirm('Do you want to delete?')">
                            <g:hiddenField name="id" value="${patientInstance.id}"/>
                        </form>
                    </div>
                    <a href="javascript:void(0);" onclick="document.getElementsByName('delete-form-${patientInstance.id}').submit();"  class="btn btn-danger btn-sm" title="delete">
                        <i class="fa fa-times"></i>
                    </a>
                </sec:access>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>