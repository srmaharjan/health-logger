import com.health.logger.usermanagement.ModuleMenu
import com.health.logger.usermanagement.RequestMap
import com.health.logger.usermanagement.Role
import com.health.logger.usermanagement.User
import com.health.logger.usermanagement.UserRole

class BootStrap {

    def init = { servletContext ->

        initRequestMap();
        initModuleMenu();
        if(User.count()==0) {
            def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
            def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

            def testUser = new User(username: 'me', password: 'password')
            testUser.save(flush: true)

            UserRole.create testUser, adminRole, true

            assert User.count() == 1
            assert Role.count() == 2
            assert UserRole.count() == 1
        }
    }
    def destroy = {
    }

    def initRequestMap(){
        if(RequestMap.count()==0) {
            for (String url in [
                    '/', '/index', '/index.gsp', '/**/favicon.ico',
                    '/assets/**', '/**/js/**', '/**/css/**', '/**/images/**',
                    '/login', '/login.*', '/login/*',
                    '/logout', '/logout.*', '/logout/*']) {
                new RequestMap(url: url, configAttribute: 'permitAll').save()
            }
            new RequestMap(url: '/moduleMenu/**', configAttribute: 'ROLE_ADMIN').save()
        }
    }

    def initModuleMenu(){
        if(!ModuleMenu.findByCode('module_menu')){
            def main=new ModuleMenu(code: 'module_menu',displayName: "Module Menu",displayOrder: 1,icon: 'fa fa-th-list')
            main.save();
            new ModuleMenu(code: 'module_menu_new',displayName: "New",displayOrder: 1.1,icon: 'fa fa-windows',moduleAction: "create",moduleController: 'moduleMenu',parent: main).save();
            new ModuleMenu(code: 'module_menu_list',displayName: "List",displayOrder: 1.2,icon: 'fa fa-bars',moduleAction: "index",moduleController: 'moduleMenu',parent: main).save();
        }
    }
}
