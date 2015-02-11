package com.health.logger

import com.health.logger.usermanagement.Menu

class AppUtilsTagLib {
    def springSecurityService
    static defaultEncodeAs = [taglib:'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
    static namespace = "hl"

    def menu={attrs ->
        def menuList= Menu.findAll().sort{it.displayOrder};
        def parentList=menuList.findAll{it.parent == null};
        out << ''


    }
    private String getMenu(Menu parent){
        StringBuilder sb=new StringBuilder("");
        if(!parent.child){

        }

    }
}
