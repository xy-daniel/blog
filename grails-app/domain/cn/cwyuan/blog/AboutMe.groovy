package cn.cwyuan.blog

class AboutMe implements Serializable {
    private static final long serialVersionUID = 1

    String data

    static constraints = {
        data nullable: false
    }

    static mapping = {
        data sqlType: "text", comment: "正文"
        comment "关于我"
    }
}
