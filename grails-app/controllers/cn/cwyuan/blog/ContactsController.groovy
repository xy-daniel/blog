package cn.cwyuan.blog

import cn.cwyuan.blog.enums.RespType
import grails.converters.JSON

class ContactsController {

    ContactsService contactsService

    def list() {
        if (request.method == "POST") {
            def draw = params.int("draw") ?: 1// 记录操作的次数 每次加1
            def start = params.int("start") ?: 0// 起始
            def length = params.int("length") ?: 20// 每页显示的size
            def search = params.get("search[value]") as String//搜索内容
            def model = contactsService.list(draw, start, length, search)
            render model as JSON
            return
        }
        def id = params.long("id")
        if (id){
            def contact = Contacts.get(id)
            contact.isTrue = 1
            contact.save(flush: true)
            redirect(controller: "contacts", action: "list")
        }
    }

    def detail(){
        render Resp.toJson(RespType.SUCCESS, Contacts.get(params.long("id")).gy)
    }
}
