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
                html: html
        ).save(flush: true)
    }
}
