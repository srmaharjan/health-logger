
<table class="table table-bordered table-hover">
    <thead>
    <tr>
        
        <g:sortableColumn property="dateCreated"
                          title="${message(code: 'medication.dateCreated.label', default: 'Date Created')}"/>
        
        <g:sortableColumn property="description"
                          title="${message(code: 'medication.description.label', default: 'Description')}"/>
        
        <g:sortableColumn property="lastUpdated"
                          title="${message(code: 'medication.lastUpdated.label', default: 'Last Updated')}"/>
        
        <g:sortableColumn property="name"
                          title="${message(code: 'medication.name.label', default: 'Name')}"/>
        
        <th><g:message code="medication.patient.label" default="Patient"/></th>
        
        <th><g:message code="default.actions.label" default="Actions"/></th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${medicationInstanceList}" status="i" var="medicationInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
            
            <td>${fieldValue(bean: medicationInstance, field: "dateCreated")}</td>
            
            <td>${fieldValue(bean: medicationInstance, field: "description")}</td>
            
            <td><g:formatDate date="${medicationInstance.lastUpdated}"/></td>
            
            <td>${fieldValue(bean: medicationInstance, field: "name")}</td>
            
            <td>${fieldValue(bean: medicationInstance, field: "patient")}</td>
            
            <td>
                <sec:access url="${createLink(action:'edit', base: '/')}">
                    <g:link action="edit" class="btn btn-default btn-sm" id="${medicationInstance.id}" title="Edit">
                        <i class="fa fa-edit"></i>
                    </g:link>
                </sec:access>
                <sec:access url="${createLink(action:'show', base: '/')}">
                    <g:link action="show" class="btn btn-primary btn-sm" id="${medicationInstance.id}" title="Show">
                        <i class="fa fa-bars"></i>
                    </g:link>
                </sec:access>
                <sec:access url="${createLink(action:'delete', base: '/')}">
                    <div style="display:none;">
                        <form name="delete-form-${medicationInstance.id}" action="delete" method="POST" onsubmit="return confirm('Do you want to delete?')">
                            <g:hiddenField name="id" value="${medicationInstance.id}"/>
                        </form>
                    </div>
                    <a href="javascript:void(0);" onclick="document.getElementsByName('delete-form-${medicationInstance.id}').submit();"  class="btn btn-danger btn-sm" title="delete">
                        <i class="fa fa-times"></i>
                    </a>
                </sec:access>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>