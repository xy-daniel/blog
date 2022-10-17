package com.daniel.blog

import grails.gorm.transactions.Transactional

@Transactional
class ContactsService {

    def list(int draw, int start, int length, String search) {
        def model = [:]
        model.put("draw", draw)
        def count = Contacts.createCriteria().count() {
            if (search) {
                like("name", "%${search}%")
            }
            eq("isTrue", 0)
        }
        def dataList = Contacts.createCriteria().list {
            and {
                setMaxResults(length)
                setFirstResult(start)
            }
            if (search) {
                like("name", "%${search}%")
            }
            eq("isTrue", 0)
            order("dateCreated", "esc")
        } as List<Contacts>
        def modelDataList = []
        for (def contact : dataList) {
            def data = [:]
            data.put("id", contact.id)
            data.put("name", contact.name)
            data.put("eorp", contact.eOrP)
            modelDataList.add(data)
        }
        model.put("recordsTotal", count)//数据总条数
        model.put("recordsFiltered", count)//显示的条数
        model.put("data", modelDataList)
        model
    }
}
