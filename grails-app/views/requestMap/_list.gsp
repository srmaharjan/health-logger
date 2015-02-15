
<table class="table table-bordered table-hover">
    <thead>
    <tr>
        
        <g:sortableColumn property="url"
                          title="${message(code: 'requestMap.url.label', default: 'Url')}"/>
        
        <g:sortableColumn property="configAttribute"
                          title="${message(code: 'requestMap.configAttribute.label', default: 'Config Attribute')}"/>
        
        <g:sortableColumn property="httpMethod"
                          title="${message(code: 'requestMap.httpMethod.label', default: 'Http Method')}"/>
        
        <th><g:message code="default.actions.label" default="Actions"/></th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${requestMapInstanceList}" status="i" var="requestMapInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
            
            <td>${fieldValue(bean: requestMapInstance, field: "url")}</td>
            
            <td>${fieldValue(bean: requestMapInstance, field: "configAttribute")}</td>
            
            <td>${fieldValue(bean: requestMapInstance, field: "httpMethod")}</td>
            
            <td>
                <sec:access url="${createLink(action:'edit', base: '/')}">
                    <g:link action="edit" class="btn btn-default btn-sm" id="${requestMapInstance.id}" title="Edit">
                        <i class="fa fa-edit"></i>
                    </g:link>
                </sec:access>
                <sec:access url="${createLink(action:'show', base: '/')}">
                    <g:link action="show" class="btn btn-primary btn-sm" id="${requestMapInstance.id}" title="Show">
                        <i class="fa fa-bars"></i>
                    </g:link>
                </sec:access>
                <sec:access url="${createLink(action:'delete', base: '/')}">
                    <div style="display:none;">
                        <form name="delete-form-${requestMapInstance.id}" action="delete" method="POST" onsubmit="return confirm('Do you want to delete?')">
                            <g:hiddenField name="id" value="${requestMapInstance.id}"/>
                        </form>
                    </div>
                    <a href="javascript:void(0);" onclick="document.getElementsByName('delete-form-${requestMapInstance.id}').submit();"  class="btn btn-danger btn-sm" title="delete">
                        <i class="fa fa-times"></i>
                    </a>
                </sec:access>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>