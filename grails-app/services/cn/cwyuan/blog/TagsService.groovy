package cn.cwyuan.blog

import grails.gorm.transactions.Transactional

@Transactional
class TagsService {

    //标签列表
    def list(int draw, int start, int length, String search) {
        def model = [:]
        model.put("draw", draw)
        def count = Tags.createCriteria().count() {
            if (search) {
                like("name", "%${search}%")
            }
        }
        def dataList = Tags.createCriteria().list {
            and {
                setMaxResults(length)
                setFirstResult(start)
            }
            if (search) {
                like("name", "%${search}%")
            }
            order("dateCreated", "desc")
        } as List<Tags>
        def modelDataList = []
        for (def tags : dataList) {
            def data = [:]
            data.put("id", tags.id)
            data.put("name", tags.name)
            data.put("number", ArticleTags.findAllByTags(tags).size())
            modelDataList.add(data)
        }
        model.put("recordsTotal", count)//数据总条数
        model.put("recordsFiltered", count)//显示的条数
        model.put("data", modelDataList)
        model
    }
}
