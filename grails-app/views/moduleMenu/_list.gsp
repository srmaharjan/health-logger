<table class="table table-bordered table-hover">
    <thead>
    <tr>

        <g:sortableColumn property="code"
                          title="${message(code: 'moduleMenu.code.label', default: 'Code')}"/>

        <g:sortableColumn property="moduleController"
                          title="${message(code: 'moduleMenu.moduleController.label', default: 'Module Controller')}"/>

        <g:sortableColumn property="moduleAction"
                          title="${message(code: 'moduleMenu.moduleAction.label', default: 'Module Action')}"/>

        <g:sortableColumn property="icon"
                          title="${message(code: 'moduleMenu.icon.label', default: 'Icon')}"/>

        <th><g:message code="moduleMenu.parent.label" default="Parent"/></th>

        <g:sortableColumn property="displayName"
                          title="${message(code: 'moduleMenu.displayName.label', default: 'Display Name')}"/>

        <th><g:message code="default.actions.label" default="Actions"/></th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${moduleMenuInstanceList}" status="i" var="moduleMenuInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td>${fieldValue(bean: moduleMenuInstance, field: "code")}</td>

            <td>${fieldValue(bean: moduleMenuInstance, field: "moduleController")}</td>

            <td>${fieldValue(bean: moduleMenuInstance, field: "moduleAction")}</td>

            <td>${fieldValue(bean: moduleMenuInstance, field: "icon")}</td>

            <td>${fieldValue(bean: moduleMenuInstance, field: "parent")}</td>

            <td>${fieldValue(bean: moduleMenuInstance, field: "displayName")}</td>

            <td>
                <sec:access url="${createLink(action: 'edit', base: '/')}">
                    <g:link action="edit" class="btn btn-default btn-sm" id="${moduleMenuInstance.id}" title="Edit">
                        <i class="fa fa-edit"></i>
                    </g:link>
                </sec:access>
                <sec:access url="${createLink(action: 'show', base: '/')}">
                    <g:link action="show" class="btn btn-primary btn-sm" id="${moduleMenuInstance.id}" title="Show">
                        <i class="fa fa-bars"></i>
                    </g:link>
                </sec:access>
                <sec:access url="${createLink(action: 'delete', base: '/')}">
                    <div style="display:none;">
                        <form name="delete-form-${moduleMenuInstance.id}" action="delete" method="POST"
                              onsubmit="return confirm('Do you want to delete?')">
                            <g:hiddenField name="id" value="${moduleMenuInstance.id}"/>
                        </form>
                    </div>
                    <a href="javascript:void(0);"
                       onclick="document.getElementsByName('delete-form-${moduleMenuInstance.id}').submit();"
                       class="btn btn-danger btn-sm" title="delete">
                        <i class="fa fa-times"></i>
                    </a>
                </sec:access>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>