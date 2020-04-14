package cn.cwyuan.blog

class Article {

    //唯一编号
    String uid
    //文章名
    String title
    //作者
    String author
    //概要
    String summary
    //点赞数
    Integer poll_count
    //评论数
    Integer comment_count
    //阅读数
    Integer read_count
    //是否精华
    boolean is_essence
    //是否置顶
    boolean is_top
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
        summary nullable: false
        poll_count nullable: true
        comment_count nullable: true
        read_count nullable: true
        is_essence default: false
        is_top default: false
        keys nullable: true
    }

    static mapping = {
        uid comment: "唯一编号", index:true
        title comment: "文章名称"
        author comment: "文章作者"
        summary sqlType: "text", comment: "文章概要"
        poll_count comment: "点赞数"
        comment_count comment: "评论数"
        read_count comment: "阅读数"
        is_essence comment: "是否精华"
        is_top comment: "是否置顶"
        keys comment : "文章关键词"
        comment "文章表"
    }
}
