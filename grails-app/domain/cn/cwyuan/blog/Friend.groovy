package cn.cwyuan.blog

/**
 * 友链
 */
class Friend implements Serializable {

    //唯一编号
    String uid

    //友链名称
    String name

    //友链地址
    String url

    //状态
    Integer status

    //创建时间
    Date dateCreated

    //修改时间
    Date lastUpdated

    static constraints = {
        uid nullable: false, maxSize: 64, unique: true
        name nullable: false
        url nullable: false
        status nullable: false
    }

    static mapping = {
        autoTimestamp(true)
        uid comment: "唯一编号", index:true
        name comment: "友链名称"
        url comment: "友链"
        status comment : "状态"
        comment "友链表"
    }

}
