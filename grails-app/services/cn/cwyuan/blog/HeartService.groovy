package cn.cwyuan.blog

import grails.gorm.transactions.Transactional

@Transactional
class HeartService {

    //保存
    def addSave(Heart heart, def  content,def html, String[] tags) {
        heart.save(flush: true)
        for (String tag:tags){
            new HeartTags(
                    heart: heart,
                    tags: Tags.get(tag as Long)
            ).save(flush: true)
        }
        new Content(
                heartId: heart.id,
                content: content,
                html:    html
        ).save(flush: true)
    }


    //保存
    def editSave(Heart heart, def  content,def html, String[] tags) {
        heart.save(flush: true)
        //就这样吧挺快的
        def hts = HeartTags.findAllByHeart(heart)
        for (HeartTags ht:hts){
            ht.delete(flush: true)
        }
        for (String tag:tags){
            new HeartTags(
                    heart: heart,
                    tags: Tags.get(tag as Long)
            ).save(flush: true)
        }
        def contentClass = Content.findByHeartId(heart.id)
        contentClass.content = content
        contentClass.html = html
        contentClass.save(flush: true)
    }

    def list(int draw, int start, int length, String search) {
        def model = [:]
        model.put("draw", draw)
        def count = Heart.createCriteria().count() {
            if (search) {
                like("wzm", "%${search}%")
                like("gjc", "%${search}%")
            }
        }
        def dataList = Heart.createCriteria().list {
            and {
                setMaxResults(length)
                setFirstResult(start)
            }
            if (search) {
                like("wzm", "%${search}%")
                like("gjc", "%${search}%")
            }
            order("dateCreated", "desc")
        } as List<Heart>
        def modelDataList = []
        for (def heart : dataList) {
            def data = [:]
            data.put("wzm", heart.wzm)
            data.put("gjc", heart.gjc)
            data.put("poll", heart.poll_count)
            data.put("read", heart.read_count)
            data.put("comment", heart.comment_count)
            data.put("id_isTop", heart.id + "_" + heart.is_top)
            modelDataList.add(data)
        }
        model.put("recordsTotal", count)//数据总条数
        model.put("recordsFiltered", count)//显示的条数
        model.put("data", modelDataList)
        model
    }
}
