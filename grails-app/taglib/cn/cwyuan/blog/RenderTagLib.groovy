package cn.cwyuan.blog

import grails.plugin.springsecurity.SpringSecurityService
import org.grails.encoder.CodecLookup
import org.grails.encoder.Encoder
import org.grails.exceptions.ExceptionUtils
import org.grails.web.errors.ErrorsViewStackTracePrinter
import org.springframework.util.StringUtils

class RenderTagLib {
    static namespace = "tc"
    SpringSecurityService springSecurityService
    CodecLookup codecLookup
    ErrorsViewStackTracePrinter errorsViewStackTracePrinter

    def photo = {
        def user = springSecurityService.currentUser as User
        out << user.photo
    }

    def realName = {
        def user = springSecurityService.currentUser as User
        out << user.realName
    }

    Closure renderException = { Map attrs ->
        if (!(attrs?.exception instanceof Throwable)) {
            return
        }
        Throwable exception = (Throwable) attrs.exception

        Encoder htmlEncoder = codecLookup.lookupEncoder('HTML')

        def currentOut = out

        def root = ExceptionUtils.getRootCause(exception)
        currentOut << '<pre class="stack font-color-error">'
        currentOut << "<dt>Class</dt><dd>${root?.getClass()?.name ?: exception.getClass().name}</dd>"
        currentOut << "<dt>Message</dt><dd>${htmlEncoder.encode(exception.message)}</dd>"
        if (root != null && root != exception && root.message != exception.message) {
            currentOut << "<dt>Caused by</dt><dd>${htmlEncoder.encode(root.message)}</dd>"
        }
        currentOut << "</dl>"
        currentOut << htmlEncoder.encode(exception)
        def trace = errorsViewStackTracePrinter.prettyPrint(exception.cause ?: exception)
        if (StringUtils.hasText(trace.trim())) {
            currentOut << '<h2 class="font-color-error">Trace</h2>'
            currentOut << htmlEncoder.encode(trace)
            currentOut << '</pre>'
        }
    }
}
