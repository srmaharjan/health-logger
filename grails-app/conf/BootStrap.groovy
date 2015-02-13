import com.health.logger.usermanagement.ModuleMenu
import com.health.logger.usermanagement.RequestMap
import com.health.logger.usermanagement.Role
import com.health.logger.usermanagement.User
import com.health.logger.usermanagement.UserRole
import org.apache.commons.lang.StringUtils

class BootStrap {
    def grailsApplication

    def init = { servletContext ->
        initApplication();
    }
    def destroy = {
    }

    def initApplication(){
        if(User.count()>0) {
            return;
        }
        def roleSuperman='ROLE_SUPERMAN'
        def roleAdmin='ROLE_ADMIN'
        def roleUser='ROLE_USER'
        def superRole = new Role(authority: 'ROLE_SUPERMAN').save(flush: true)
        def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
        def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

        def superman = new User(username: 'superman', password: '!am@Superman')
        superman.save(flush: true)

        UserRole.create superman, superRole, true

        def admin = new User(username: 'admin', password: '!am@Admin')
        admin.save(flush: true)

        UserRole.create admin, adminRole, true

        for (String url in [
                 '/**/favicon.ico',
                '/assets/**', '/**/js/**', '/**/css/**', '/**/images/**',
                '/login', '/login.*', '/login/*',
                '/logout', '/logout.*', '/logout/*']) {
            new RequestMap(url: url, configAttribute: 'permitAll').save()
        }
        def supermanOnly=['user','role','requestMap','moduleMenu']
        def count=1;
        grailsApplication.getArtefacts("Domain").each{
            def propertyName=it.propertyName
            def name=StringUtils.join(StringUtils.splitByCharacterTypeCamelCase(it.name)," ");
            def configAttribute=roleSuperman
            if(!supermanOnly.contains(propertyName)) {
                configAttribute=configAttribute+','+roleAdmin
            }
            new RequestMap(url: "/${propertyName}/**", configAttribute: configAttribute).save()
            def main=new ModuleMenu(code: "${propertyName}",displayName: "${name}",displayOrder: count,icon: 'fa fa-th-list')
            main.save();
            new ModuleMenu(code: "${propertyName}New",displayName: "New",displayOrder: count+0.1,icon: 'fa fa-windows',moduleAction: "create",moduleController: "${propertyName}",parent: main).save();
            new ModuleMenu(code: "${propertyName}List",displayName: "List",displayOrder: count+0.2,icon: 'fa fa-bars',moduleAction: "index",moduleController: "${propertyName}",parent: main).save();
            count++
        }
    }
}
