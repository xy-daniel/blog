package cn.cwyuan.blog

class Contacts implements Serializable {
    private static final long serialVersionUID = 1
    //唯一编号
    String uid

    //昵称
    String name

    //邮箱手机号
    String eOrP

    //简述概要
    String gy

    //是否解决
    Integer isTrue

    //创建时间
    Date dateCreated

    //修改时间
    Date lastUpdated

    static constraints = {
        uid nullable: false, maxSize: 64, unique: true
        name nullable: false
        eOrP nullable: false
        gy nullable: false
        isTrue nullable: false
    }

    static mapping = {
        uid comment: "唯一编号", index:true
        name comment: "联系人昵称"
        eOrP comment: "邮箱或手机号"
        gy sqlType: "text",comment: "详情"
        isTrue comment: "是否已解决"
        comment "联系人表"
    }
}
