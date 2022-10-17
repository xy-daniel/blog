package blog

import com.daniel.blog.InitService

class BootStrap {
    InitService initService

    def init = { servletContext ->
        initService.role()
        initService.user()
        initService.dict()
    }
    def destroy = {
    }
}
