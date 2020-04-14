package cn.cwyuan.blog

import cn.cwyuan.blog.enums.RespType
import cn.cwyuan.blog.utils.UUIDGenerator
import grails.converters.JSON

class FriendController {

    FriendService friendService

    /**
     * 友链列表
     */
    def list() {
        if (request.method == "POST") {
            def draw = params.int("draw") ?: 1// 记录操作的次数 每次加1
            def start = params.int("start") ?: 0// 起始
            def length = params.int("length") ?: 20// 每页显示的size
            def search = params.get("search[value]") as String//搜索内容
            def model = friendService.list(draw, start, length, search)
            render model as JSON
        }
    }

    /**
     * 友链添加页面
     */
    def add(){

    }

    /**
     * 友链添加保存
     */
    def addSave(){
        def name = params.get("name")
        def url = params.get("url")
        def status = params.int("status")
        if (!(name && url) ){
            redirect(controller: "friend", action: "add")
            return
        }
        new Friend(
                uid: UUIDGenerator.nextUUID(),
                name: name,
                url: url,
                status: status
        ).save(flush: true)
        redirect(controller: "friend", action: "list")
    }

    /**
     * 友链编辑页面
     */
    def edit(){
        def id = params.int("id")
        if (!id){
            redirect(controller: "friend", action: "list")
            return
        }
        [friend: Friend.get(id)]
    }

    /**
     * 友链编辑保存
     */
    def editSave(){
        def id = params.int("id")
        def name = params.get("name")
        def url = params.get("url")
        def status = params.int("status")
        if (!(id && name && url)){
            redirect(controller: "friend", action: "list")
            return
        }
        def friend = Friend.get(id)
        friend.name = name
        friend.url = url
        friend.status = status
        friend.save(flush: true)
        redirect(controller: "friend", action: "list")
    }

    /**
     * 激活或取消激活
     */
    def active(){
        def friend = Friend.get(params.int("id"))
        friend.status = friend.status==0?1:0
        friend.save(flush: true)
        render Resp.toJson(RespType.SUCCESS)
    }
}
