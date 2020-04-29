package cn.cwyuan.blog

class AboutMeController {

    def data() {
        def me = AboutMe.findAll()
        if (!me){
            new AboutMe().save(flush: true)
        }
        [data: AboutMe.findAll().get(0).data]
    }

    //关于我数据更新
    def update(){
        def data = params.get("data")
        def me = AboutMe.findAll().get(0)
        me.data = data
        me.save(flush: true)
        redirect(controller: "console")
    }
}
