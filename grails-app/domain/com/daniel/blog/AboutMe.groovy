package com.daniel.blog

class AboutMe implements Serializable {
    private static final long serialVersionUID = 1

    String data

    static constraints = {
        data nullable: true
    }

    static mapping = {
        data sqlType: "text", comment: "正文"
        comment "关于我"
    }
}
