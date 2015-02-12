<% import grails.persistence.Event %>
<table class="table table-bordered table-hover">
    <thead>
    <tr>
        <%  excludedProps = Event.allEvents.toList() << 'id' << 'version'
        allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
        props = domainClass.properties.findAll { allowedNames.contains(it.name) && !excludedProps.contains(it.name) && it.type != null && !Collection.isAssignableFrom(it.type) && (domainClass.constrainedProperties[it.name] ? domainClass.constrainedProperties[it.name].display : true) }
        Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
        props.eachWithIndex { p, i ->
            if (i < 6) {
                if (p.isAssociation()) { %>
        <th><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" /></th>
        <%      } else { %>
        <g:sortableColumn property="${p.name}" title="\${message(code: '${domainClass.propertyName}.${p.name}.label', default: '${p.naturalName}')}" />
        <%  }   }   } %>
        <th width><g:message code="default.actions.label" default="Actions" /></th>
    </tr>
    </thead>
    <tbody>
    <g:each in="\${${propertyName}List}" status="i" var="${propertyName}">
        <tr class="\${(i % 2) == 0 ? 'even' : 'odd'}">
            <%  props.eachWithIndex { p, i ->
                if (i == 0) { %>
            <td>\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</td>
            <%      } else if (i < 6) {
                if (p.type == Boolean || p.type == boolean) { %>
            <td><g:formatBoolean boolean="\${${propertyName}.${p.name}}" /></td>
            <%          } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
            <td><g:formatDate date="\${${propertyName}.${p.name}}" /></td>
            <%          } else { %>
            <td>\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</td>
            <td>
                <sec:access url="\${createLink(action:'edit')}">
                    <g:link action="edit" class="btn btn-default btn-flat" id="\${${propertyName}.id}">
                        <i class="fa fa-edit"></i> Edit
                    </g:link>
                </sec:access>
                <sec:access url="\${createLink(action:'show')}">
                    <g:link action="show" class="btn btn-default btn-flat" id="\${${propertyName}.id}">
                        <i class="fa fa-bars"></i> Show
                    </g:link>
                </sec:access>
                <sec:access url="\${createLink(action:'delete')}">
                    <g:link action="delete" class="btn btn-default btn-flat" id="\${${propertyName}.id}">
                        <i class="fa fa-times"></i> Delete
                    </g:link>
                </sec:access>
            </td>
            <%  }   }   } %>
        </tr>
    </g:each>
    </tbody>
</table>