package cn.cwyuan.blog

//文章正文表
class Content implements Serializable {
    private static final long serialVersionUID = 1

    //文章正文
    String content

    static constraints = {
        content nullable: false
    }

    static mapping = {
        content sqlType: "text", comment: "文章正文"
        comment "文章正文表"
    }
}
