package com.daniel.blog

import grails.gorm.transactions.Transactional

@Transactional
class FriendService {

    def list(int draw, int start, int length, String search) {
        def model = [:]
        model.put("draw", draw)
        def count = Friend.createCriteria().count() {
            if (search) {
                like("name", "%${search}%")
                like("url", "%${search}%")
            }
        }
        def dataList = Friend.createCriteria().list {
            and {
                setMaxResults(length)
                setFirstResult(start)
            }
            if (search) {
                like("name", "%${search}%")
                like("url", "%${search}%")
            }
            order("status", "desc")
            order("dateCreated", "desc")
        } as List<Friend>
        def modelDataList = []
        for (def friend : dataList) {
            def data = [:]
            data.put("id", friend.id)
            data.put("name", friend.name)
            data.put("url", friend.url)
            data.put("status", friend.status)
            data.put("id_status", friend.id+"_"+friend.status)
            modelDataList.add(data)
        }
        model.put("recordsTotal", count)//数据总条数
        model.put("recordsFiltered", count)//显示的条数
        model.put("data", modelDataList)
        model
    }
}
