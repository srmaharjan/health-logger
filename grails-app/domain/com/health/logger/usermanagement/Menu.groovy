package com.health.logger.usermanagement

class Menu {
    String displayName;
    String code;
    String cName; //controllerName
    String aName; //actionName
    String icon;
    float displayOrder;

    static  belongsTo = [parent:Menu]
    static hasMany = ['child':Menu]

    static constraints = {
        code(nullable: false,blank: false,unique: true)
        cName(nullable: true,blank: true)
        aName(nullable: true,blank: true)
        icon(nullable: true,blank: true)
        parent(nullable: true,blank: true)
        child(nullable: true,blank: true)
    }
}
