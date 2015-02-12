package com.health.logger.usermanagement

class ModuleMenu {
    String displayName;
    String code;
    String moduleController; //controllerName
    String moduleAction; //actionName
    String icon;
    float displayOrder;

    static  belongsTo = [parent:ModuleMenu]
    static hasMany = ['child':ModuleMenu]

    static constraints = {
        code(nullable: false,blank: false,unique: true)
        moduleController(nullable: true,blank: true)
        moduleAction(nullable: true,blank: true)
        icon(nullable: true,blank: true)
        parent(nullable: true,blank: true)
        child(nullable: true,blank: true)
    }
}
