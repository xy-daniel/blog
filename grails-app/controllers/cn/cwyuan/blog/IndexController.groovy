package cn.cwyuan.blog

import cn.cwyuan.blog.enums.RespType

/**
 * 首页面---->任何用户都可以进入
 * Created by daniel in 2020.04.10
 */
class IndexController {

    /**
     * 主页
     */
    def index() {
    }

    /**
     * 关于我页面
     */
    def about_me(){
        //从数据库获取自述信息填充到页面
    }

    /**
     * 联系我页面
     */
    def contact_us(){
        //没有什么数据直接写死在页面上就行了
    }

    /**
     * 归档页面
     */
    def file(){

    }

    /**
     * 文章页面
     */
    def detail(){
        [id: params.get("id")]
    }

    def getHtml(){
        def model = [:]
        model.put("title", Heart.get(params.int("id")).wzm)
        model.put("html", Content.findByHeartId(params.int("id")).html)
        render Resp.toJson(RespType.SUCCESS, model)
    }
}
