package com.daniel.blog

//文章标签关联表
class HeartTags implements Serializable {
    private static final long serialVersionUID = 1

    //文章
    Heart heart
    //标签
    Tags tags

    static constraints = {
        heart nullable: false
        tags nullable: false
    }

    static mapping = {
        autoTimestamp(true)
        heart comment: "文章"
        tags comment: "标签"
        comment "文章标签关联表"
    }
}
