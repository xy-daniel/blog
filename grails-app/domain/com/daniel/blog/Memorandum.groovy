package com.daniel.blog

class Memorandum {

    String content

    static constraints = {
        content nullable: true
    }

    static mapping = {
        content sqlType: "text", comment: "备忘录"
        comment "备忘录"
    }
}
