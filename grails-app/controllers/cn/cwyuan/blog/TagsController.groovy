package cn.cwyuan.blog

import cn.cwyuan.blog.utils.UUIDGenerator
import grails.converters.JSON

class TagsController {

    TagsService tagsService

    //标签列表
    def list() {
        if (request.method == "POST") {
            def draw = params.int("draw") ?: 1// 记录操作的次数 每次加1
            def start = params.int("start") ?: 0// 起始
            def length = params.int("length") ?: 20// 每页显示的size
            def search = params.get("search[value]") as String//搜索内容
            def model = tagsService.list(draw, start, length, search)
            render model as JSON
        }
    }

    def add(){

    }

    def addSave(){
        def name = params.get("name")
        if (!name){
            redirect(controller: "tags", action: "add")
            return
        }
        new Tags(
                uid: UUIDGenerator.nextUUID(),
                name: name,
        ).save(flush: true)
        redirect(controller: "tags", action: "list")
    }

    def edit(){
        def id = params.int("id")
        if (!id){
            redirect(controller: "tags", action: "list")
            return
        }
        [tags: Tags.get(id)]
    }

    def editSave(){
        def id = params.int("id")
        def name = params.get("name")
        if (!(id && name)){
            redirect(controller: "tags", action: "list")
            return
        }
        def tags = Tags.get(id)
        tags.name = name
        tags.save(flush: true)
        redirect(controller: "tags", action: "list")
    }
}
