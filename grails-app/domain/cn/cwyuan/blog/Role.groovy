package cn.cwyuan.blog

class Role implements Serializable {
    private static final long serialVersionUID = 1

    /**
     * 角色名称
     */
    String authority
    /**
     * 描述
     */
    String remark
    /**
     * 排序
     */
    Integer sequence
    /**
     * 创建时间
     */
    Date dateCreated
    /**
     * 修改时间
     */
    Date lastUpdated

    static constraints = {
        authority blank: false, unique: true, maxSize: 128
        remark blank: false, unique: true, maxSize: 128
    }

    static mapping = {
        authority comment: "角色名称"
        remark comment: "描述"
        sequence comment: "排序"
        lastUpdated comment: "修改时间"
    }
}
