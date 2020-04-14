package cn.cwyuan.blog

//标签表
class Tags implements Serializable {
    private static final long serialVersionUID = 1

    //唯一编号
    String uid
    //标签名称
    String name
    //创建时间
    Date dateCreated
    //修改时间
    Date lastUpdated

    static constraints = {
        uid nullable: false, maxSize: 64, unique: true
        name nullable: false
    }

    static mapping = {
        uid comment: "唯一编号", index:true
        name comment: "标签名称"
        comment "标签表"
    }
}
