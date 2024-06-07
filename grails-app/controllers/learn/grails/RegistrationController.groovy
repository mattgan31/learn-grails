// package learn.grails

// import grails.gorm.transactions.Transactional
// import grails.plugin.springsecurity.annotation.Secured
// import grails.plugin.springsecurity.SpringSecurityService
// import learn.grails.Users
// import learn.grails.Roles
// import learn.grails.UsersRoles

// class RegistrationController {

//     SpringSecurityService springSecurityService

//     def index() {
//         // Show registration form
//         render view: 'index'
//     }

//     @Transactional
//     def register() {
//         def user = new Users(params)
//         user.password = springSecurityService.encodePassword(params.password)
//         if (user.save(flush: true)) {
//             def role = Roles.findByAuthority('ROLE_USER') ?: new Roles(authority: 'ROLE_USER').save(flush: true)
//             UsersRoles.create(user, role, true)
//             flash.message = "User registered successfully"
//             redirect(controller: "login", action: "auth")
//         } else {
//             flash.message = "Registration failed"
//             render view: 'register', model: [user: user]
//         }
//     }
// }
