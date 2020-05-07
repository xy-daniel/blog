package cn.cwyuan.blog

class Visit {

    private static final long serialVersionUID = 1

    //友链名称
    String cip

    //友链地址
    String cname

    //ua值
    String cua

    //状态
    Integer status

    //创建时间
    Date dateCreated

    //修改时间
    Date lastUpdated

    static constraints = {
        cip nullable: false
        cname nullable: false
        cua nullable: false
        status nullable: false
    }

    static mapping = {
        autoTimestamp(true)
        cip comment: "访问ip"
        cname comment: "访问地址"
        cua comment: "用户信息"
        status comment : "状态"
        comment "访问数据表"
    }
}
