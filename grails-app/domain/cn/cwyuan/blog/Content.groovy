package cn.cwyuan.blog

//文章正文表
class Content implements Serializable {
    private static final long serialVersionUID = 1

    //文章正文
    Integer heartId
    String content
    String html

    static constraints = {
        heartId nullable: false
        content nullable: false
        html nullable: false
    }

    static mapping = {
        heartId comment: "所属文章"
        content sqlType: "text", comment: "文章正文"
        html sqlType: "text", comment: "文章html数据"
        comment "文章正文表"
    }
}
