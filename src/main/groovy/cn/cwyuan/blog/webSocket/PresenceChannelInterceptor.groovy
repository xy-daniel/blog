package cn.cwyuan.blog.webSocket

import org.springframework.messaging.Message
import org.springframework.messaging.MessageChannel
import org.springframework.messaging.simp.stomp.StompHeaderAccessor
import org.springframework.messaging.support.ChannelInterceptorAdapter

class PresenceChannelInterceptor extends ChannelInterceptorAdapter {

    @Override
    void postSend(Message<?> message, MessageChannel channel, boolean sent) {
        StompHeaderAccessor sha = StompHeaderAccessor.wrap(message)
        if (sha.getCommand() == null) {
            return
        }
        def name = sha.user?.name
        switch (sha.getCommand()) {
            case "CONNECT":
                println "${name}上线"
                break
            case "DISCONNECT":
                println "${name}下线"
                //在这儿将自己有关的观看数据修改为正常退出
                break
            case "SUBSCRIBE":
                println "${name}订阅"
                break
            case "SEND":
                println "${name}发送"
                break
            case "UNSUBSCRIBE":
                println "${name}取消订阅"
                break
            default:
                break
        }
    }
}
