package cn.cwyuan.blog

//文章标签关联表
class ArticleTags implements Serializable {
    private static final long serialVersionUID = 1

    //文章
    Article article
    //标签
    Tags tags

    static constraints = {
        version false
    }
}
