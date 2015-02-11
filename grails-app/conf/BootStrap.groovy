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
    }
    def destroy = {
    }
}
