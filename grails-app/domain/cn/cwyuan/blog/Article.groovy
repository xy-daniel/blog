package cn.cwyuan.blog

//文章表
class Article implements Serializable {
    private static final long serialVersionUID = 1
    //唯一编号
    String uid
    //文章名
    String title
    //作者
    String author
    //正文
    Content content
    //关键词
    String keys
    //创建时间
    Date dateCreated
    //修改时间
    Date lastUpdated
    static constraints = {
        uid nullable: false, maxSize: 64, unique: true
        title nullable: false
        author nullable: false
        content nullable: false
        keys nullable: true
    }

    static mapping = {
        uid comment: "唯一编号", index:true
        title comment: "文章名称"
        author comment: "文章作者"
        content comment : "文章正文"
        keys comment : "文章关键词"
        comment "文章表"
    }
}
