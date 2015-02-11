import com.health.logger.usermanagement.RequestMap
import com.health.logger.usermanagement.Role
import com.health.logger.usermanagement.User
import com.health.logger.usermanagement.UserRole

class BootStrap {

    def init = { servletContext ->
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
        initRequestMap();
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
            new RequestMap(url: '/menu/**', configAttribute: 'ROLE_ADMIN').save()
        }
    }
}
