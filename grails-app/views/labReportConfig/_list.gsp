
<table class="table table-bordered table-hover">
    <thead>
    <tr>
        
        <g:sortableColumn property="type"
                          title="${message(code: 'labReportConfig.type.label', default: 'Type')}"/>
        
        <g:sortableColumn property="udf1Key"
                          title="${message(code: 'labReportConfig.udf1Key.label', default: 'Udf1 Key')}"/>
        
        <g:sortableColumn property="udf2Key"
                          title="${message(code: 'labReportConfig.udf2Key.label', default: 'Udf2 Key')}"/>
        
        <g:sortableColumn property="udf3Key"
                          title="${message(code: 'labReportConfig.udf3Key.label', default: 'Udf3 Key')}"/>
        
        <g:sortableColumn property="udf4Key"
                          title="${message(code: 'labReportConfig.udf4Key.label', default: 'Udf4 Key')}"/>
        
        <g:sortableColumn property="udf5Key"
                          title="${message(code: 'labReportConfig.udf5Key.label', default: 'Udf5 Key')}"/>
        
        <th><g:message code="default.actions.label" default="Actions"/></th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${labReportConfigInstanceList}" status="i" var="labReportConfigInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
            
            <td>${fieldValue(bean: labReportConfigInstance, field: "type")}</td>
            
            <td>${fieldValue(bean: labReportConfigInstance, field: "udf1Key")}</td>
            
            <td>${fieldValue(bean: labReportConfigInstance, field: "udf2Key")}</td>
            
            <td>${fieldValue(bean: labReportConfigInstance, field: "udf3Key")}</td>
            
            <td>${fieldValue(bean: labReportConfigInstance, field: "udf4Key")}</td>
            
            <td>${fieldValue(bean: labReportConfigInstance, field: "udf5Key")}</td>
            
            <td>
                <sec:access url="${createLink(action:'edit', base: '/')}">
                    <g:link action="edit" class="btn btn-default btn-sm" id="${labReportConfigInstance.id}" title="Edit">
                        <i class="fa fa-edit"></i>
                    </g:link>
                </sec:access>
                <sec:access url="${createLink(action:'show', base: '/')}">
                    <g:link action="show" class="btn btn-primary btn-sm" id="${labReportConfigInstance.id}" title="Show">
                        <i class="fa fa-bars"></i>
                    </g:link>
                </sec:access>
                <sec:access url="${createLink(action:'delete', base: '/')}">
                    <div style="display:none;">
                        <form name="delete-form-${labReportConfigInstance.id}" action="delete" method="POST" onsubmit="return confirm('Do you want to delete?')">
                            <g:hiddenField name="id" value="${labReportConfigInstance.id}"/>
                        </form>
                    </div>
                    <a href="javascript:void(0);" onclick="document.getElementsByName('delete-form-${labReportConfigInstance.id}').submit();"  class="btn btn-danger btn-sm" title="delete">
                        <i class="fa fa-times"></i>
                    </a>
                </sec:access>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>