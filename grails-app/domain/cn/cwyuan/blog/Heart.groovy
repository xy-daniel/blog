package cn.cwyuan.blog

/**
 * 友链
 */
class Heart implements Serializable {
    private static final long serialVersionUID = 1

    //唯一编号
    String uid

    //文章类型---->用于记录文章中图片的数量
    String img

    //问题由来---->存储类型0的why以及其他类型的图片地址
    String origin

    //文章名
    String wzm

    //概要
    String gy

    //关键词
    String gjc

    //阅读数
    Integer read_count

    //是否精华
    boolean is_essence
    //是否置顶
    boolean is_top

    //创建时间
    Date dateCreated

    //修改时间
    Date lastUpdated

    static constraints = {
        uid nullable: false, maxSize: 64, unique: true
        img nullable: true
        origin nullable: false
        wzm nullable: false
        gy nullable: false
        gjc nullable: false
        read_count nullable: true
        is_essence nullable: true
        is_top nullable: true
    }

    static mapping = {
        autoTimestamp(true)
        uid comment: "唯一编号", index:true
        img comment: "图片地址"
        origin sqlType: "text", comment: "问题由来"
        wzm comment: "文章标题"
        gy sqlType: "text", comment: "概要"
        gjc comment: "关键词"
        read_count comment: "阅读数"
        is_essence comment: "是否精华"
        is_top comment: "是否置顶"
        comment "友链表"
    }

}
