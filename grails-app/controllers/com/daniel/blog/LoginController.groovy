package com.daniel.blog

import grails.converters.JSON
import grails.plugin.springsecurity.SpringSecurityService
import org.springframework.security.web.WebAttributes

class LoginController {
    SpringSecurityService springSecurityService

    def authfail() {
        String msg = ''
        def exception = session[WebAttributes.AUTHENTICATION_EXCEPTION]
        if (exception) {
            msg = exception.message
        }

        if (springSecurityService.isAjax(request)) {
            render([error: msg] as JSON)
        } else {
            flash.message = msg
            redirect action: 'auth', params: params
        }
    }
}
