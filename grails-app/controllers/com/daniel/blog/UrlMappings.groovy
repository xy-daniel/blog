package com.daniel.blog

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
            }
        }

        "/"(controller: "index")
        "500"(controller: "error")
        "404"(controller: "error")
        "405"(controller: "error")
    }
}
