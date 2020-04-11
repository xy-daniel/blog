package cn.cwyuan.blog.webSocket

import java.security.Principal

class StompPrincipal implements Principal {
    String name

    StompPrincipal(String name) {
        this.name = name
    }

    @Override
    String getName() {
        return name
    }
}