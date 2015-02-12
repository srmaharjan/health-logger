<% import grails.persistence.Event %>
<table class="table table-bordered table-hover">
    <thead>
    <tr>
        <% excludedProps = Event.allEvents.toList() << 'id' << 'version'
        allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
        props = domainClass.properties.findAll {
            allowedNames.contains(it.name) && !excludedProps.contains(it.name) && it.type != null && !Collection.isAssignableFrom(it.type) && (domainClass.constrainedProperties[it.name] ? domainClass.constrainedProperties[it.name].display : true)
        }
        Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
        props.eachWithIndex { p, i ->
            if (i < 6) {
                if (p.isAssociation()) { %>
        <th><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}"/></th>
        <% } else { %>
        <g:sortableColumn property="${p.name}"
                          title="\${message(code: '${domainClass.propertyName}.${p.name}.label', default: '${
                                  p.naturalName}')}"/>
        <% }
        }
        } %>
        <th><g:message code="default.actions.label" default="Actions"/></th>
    </tr>
    </thead>
    <tbody>
    <g:each in="\${${propertyName}List}" status="i" var="${propertyName}">
        <tr class="\${(i % 2) == 0 ? 'even' : 'odd'}">
            <% props.eachWithIndex { p, i ->
                if (i == 0) { %>
            <td>\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</td>
            <% } else if (i < 6) {
                if (p.type == Boolean || p.type == boolean) { %>
            <td><g:formatBoolean boolean="\${${propertyName}.${p.name}}"/></td>
            <%
                } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
            <td><g:formatDate date="\${${propertyName}.${p.name}}"/></td>
            <% } else { %>
            <td>\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</td>
            <% }
            }
            } %>
            <td>
                <sec:access url="\${createLink(action:'edit', base: '/')}">
                    <g:link action="edit" class="btn btn-default btn-sm" id="\${${propertyName}.id}" title="Edit">
                        <i class="fa fa-edit"></i>
                    </g:link>
                </sec:access>
                <sec:access url="\${createLink(action:'show', base: '/')}">
                    <g:link action="show" class="btn btn-primary btn-sm" id="\${${propertyName}.id}" title="Show">
                        <i class="fa fa-bars"></i>
                    </g:link>
                </sec:access>
                <sec:access url="\${createLink(action:'delete', base: '/')}">
                    <div style="display:none;">
                        <form name="delete-form-\${${propertyName}.id}" action="delete" method="POST" onsubmit="return confirm('Do you want to delete?')">
                            <g:hiddenField name="id" value="\${${propertyName}.id}"/>
                        </form>
                    </div>
                    <a href="javascript:void(0);" onclick="document.getElementsByName('delete-form-\${${propertyName}.id}').submit();"  class="btn btn-danger btn-sm" title="delete">
                        <i class="fa fa-times"></i>
                    </a>
                </sec:access>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>