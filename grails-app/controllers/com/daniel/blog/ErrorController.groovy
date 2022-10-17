package com.daniel.blog

import com.daniel.blog.enums.RespType


class ErrorController {

    def index() {
        def accept = request.getHeader("accept")
        if (!(accept?.indexOf("json") > -1)) {
            render(view: '/error')
        } else {
            response.setContentType("application/json; charset=utf-8")
            response.status = 200
            render Resp.toJson(RespType.INNER_ERROR, "")
        }

    }
}
