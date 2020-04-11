package cn.cwyuan.blog
/**
 * 系统字典
 */
class Dict {
    /**
     * 字典名
     */
    String name
    /**
     * 字典唯一代码
     */
    String code
    /**
     * 内容类型
     */
    String type
    /**
     * 内容
     */
    String val
    /**
     * 状态
     * 1启用，无限制
     * 3禁止修改（只可查询）
     * 4弃用（逻辑删除）
     */
    Integer state
    /**
     * 拓展
     */
    String ext1
    String ext2
    String ext3
    String ext4
    String ext5
    /**
     * 备注
     */
    String notes
    /**
     * 创建时间
     */
    Date dateCreated
    /**
     * 修改时间
     */
    Date lastUpdated

    /**
     * allDict 所有的子节点
     */
    static hasMany = [dicts: Dict]
    /**
     * parentDict父节点
     */
    static belongsTo = [parent: Dict]

    static constraints = {
        name nullable: true, maxSize: 200
        code nullable: true, maxSize: 200
        type nullable: true, maxSize: 60
        val nullable: true, maxSize: 500
        state nullable: true
        ext1 nullable: true, maxSize: 300
        ext2 nullable: true, maxSize: 300
        ext3 nullable: true, maxSize: 300
        ext4 nullable: true, maxSize: 300
        ext5 nullable: true, maxSize: 300
        parent nullable: true
        notes nullable: true, maxSize: 512
    }
    static mapping = {
        autoTimestamp(true)
        name comment: "字典名"
        code comment: "字典唯一代码"
        type comment: "内容类型"
        val comment: "内容"
        state comment: "状态 ：1 启用 3 禁止修改 4 删除"
        ext1 comment: "拓展字段1"
        ext2 comment: "拓展字段2"
        ext3 comment: "拓展字段3"
        ext4 comment: "拓展字段4"
        ext5 comment: "拓展字段5"
        notes comment: "备注"
        dateCreated comment: "创建时间"
        lastUpdated comment: "修改时间"
        dicts comment: "子节点"
        parent comment: "父节点"
        comment "字典表。"
    }

}
