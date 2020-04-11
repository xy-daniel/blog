package blog

import cn.cwyuan.blog.InitService

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
