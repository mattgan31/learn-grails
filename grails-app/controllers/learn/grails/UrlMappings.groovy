package learn.grails

class UrlMappings {
    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        // "/register"(controller: 'registration', action: 'index')
        // "/register/save"(controller: 'registration', action: 'register')

        // "/book/create"(controller: "book", action: "create")
        // "/book/show/$id?"(controller: "book", action: "show")
        // "/book/edit/$id?"(controller: "book", action: "update")
        // "/book/destroy/$id?"(controller: "book", action: "destroy")
        // "/book/index"(controller: "book", action: "index")
        "/"(controller: 'book', action: 'index')
        "500"(view: '/error')
        "404"(view: '/notFound')

    }
}
