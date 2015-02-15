
<table class="table table-bordered table-hover">
    <thead>
    <tr>
        
        <g:sortableColumn property="dateCreated"
                          title="${message(code: 'labReport.dateCreated.label', default: 'Date Created')}"/>
        
        <g:sortableColumn property="description"
                          title="${message(code: 'labReport.description.label', default: 'Description')}"/>
        
        <g:sortableColumn property="lastUpdated"
                          title="${message(code: 'labReport.lastUpdated.label', default: 'Last Updated')}"/>
        
        <g:sortableColumn property="name"
                          title="${message(code: 'labReport.name.label', default: 'Name')}"/>
        
        <th><g:message code="labReport.patient.label" default="Patient"/></th>
        
        <g:sortableColumn property="type"
                          title="${message(code: 'labReport.type.label', default: 'Type')}"/>
        
        <th><g:message code="default.actions.label" default="Actions"/></th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${labReportInstanceList}" status="i" var="labReportInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
            
            <td>${fieldValue(bean: labReportInstance, field: "dateCreated")}</td>
            
            <td>${fieldValue(bean: labReportInstance, field: "description")}</td>
            
            <td><g:formatDate date="${labReportInstance.lastUpdated}"/></td>
            
            <td>${fieldValue(bean: labReportInstance, field: "name")}</td>
            
            <td>${fieldValue(bean: labReportInstance, field: "patient")}</td>
            
            <td>${fieldValue(bean: labReportInstance, field: "type")}</td>
            
            <td>
                <sec:access url="${createLink(action:'edit', base: '/')}">
                    <g:link action="edit" class="btn btn-default btn-sm" id="${labReportInstance.id}" title="Edit">
                        <i class="fa fa-edit"></i>
                    </g:link>
                </sec:access>
                <sec:access url="${createLink(action:'show', base: '/')}">
                    <g:link action="show" class="btn btn-primary btn-sm" id="${labReportInstance.id}" title="Show">
                        <i class="fa fa-bars"></i>
                    </g:link>
                </sec:access>
                <sec:access url="${createLink(action:'delete', base: '/')}">
                    <div style="display:none;">
                        <form name="delete-form-${labReportInstance.id}" action="delete" method="POST" onsubmit="return confirm('Do you want to delete?')">
                            <g:hiddenField name="id" value="${labReportInstance.id}"/>
                        </form>
                    </div>
                    <a href="javascript:void(0);" onclick="document.getElementsByName('delete-form-${labReportInstance.id}').submit();"  class="btn btn-danger btn-sm" title="delete">
                        <i class="fa fa-times"></i>
                    </a>
                </sec:access>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>