package cn.cwyuan.blog

//文章正文表
class Content implements Serializable {
    private static final long serialVersionUID = 1

    //文章正文
    Integer articleId
    String content

    static constraints = {
        articleId nullable: false
        content nullable: false
    }

    static mapping = {
        articleId comment: "所属文章"
        content sqlType: "text", comment: "文章正文"
        comment "文章正文表"
    }
}
