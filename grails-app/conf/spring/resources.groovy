package spring

import cn.cwyuan.blog.security.TcAuthenticationProvider
import cn.cwyuan.blog.webSocket.WebSocketConfig


// Place your Spring DSL code here
beans = {
    tcAuthenticationProvider(TcAuthenticationProvider)
    webSocketConfig(WebSocketConfig)
    xmlns aop:"http://www.springframework.org/schema/aop"
}
