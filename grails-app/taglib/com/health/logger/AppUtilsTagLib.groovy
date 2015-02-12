package com.health.logger

import com.health.logger.usermanagement.ModuleMenu

class AppUtilsTagLib {
    def springSecurityService
    static defaultEncodeAs = [taglib: 'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
    static namespace = "hl"

    def menu = { attrs ->
        def allParents = ModuleMenu.findAllByParentIsNull().sort { it.displayOrder };
        out << ''
        allParents.each{parent ->
            out << createModuleMenu(parent)
        }
    }

    private String createModuleMenu(ModuleMenu parent) {
        StringBuilder sb = new StringBuilder("");
        if (!parent.child) {
            sb.append(createChildMenu(parent))
        } else {
            def icon = parent.icon ?: 'fa fa-folder'
            sb.append("<li class=\"treeview\">")
            sb.append("<a href=\"#\">")
            sb.append("<i class=\"${icon}\"></i> <span>${parent.displayName}</span>")
            sb.append("<i class=\"fa fa-angle-left pull-right\"></i>")
            sb.append("</a>")
            sb.append("<ul class=\"treeview-menu\">")
            def count=0;
            parent.child.each { child ->
                def childMenu=createChildMenu(child)
                if(childMenu!=''){
                    count++;
                }
                sb.append(childMenu)
            }
            if(count>0){
                sb.append("/ul></li>")
            }else{
                sb = new StringBuilder("");
            }
        }
        return sb.toString();

    }
    private String createChildMenu(ModuleMenu child){
        StringBuilder sb=new StringBuilder("")
        def url = createLink(controller: child.moduleController, action: child.moduleAction)
        if (sec.access(url: url)) {
            def icon = child.icon ?: 'fa fa-folder'
            sb.append("<li>")
            sb.append("<a href=\"${url}\">")
            sb.append("<i class=\"${icon}\"></i> <span>${child.displayName}</span>")
            sb.append("</a>")
            sb.append("</li>")
        }
        return sb.toString()
    }
}
