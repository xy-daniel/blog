package cn.cwyuan.blog

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
}
