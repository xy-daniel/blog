//package cn.cwyuan.blog
//
//
//import cn.cwyuan.blog.court.VideoRecord
//import cn.cwyuan.blog.enums.PlayStatus
//import grails.plugin.springwebsocket.WebSocket
//
///**
// * 直播授权心跳计时器
// */
//class VideoHeatJob implements WebSocket {
//
//    static triggers = {
//        cron name: 'cronTrigger', startDelay: 10000, cronExpression: '0 0/1 * * * ?' //每3分钟执行一次
//    }
//
//    def execute() {
//        def allVideoRecord = VideoRecord.findAllByPlayStatus(PlayStatus.CONNECTING)
//        for (VideoRecord vr : allVideoRecord) {
//            vr.playStatus = PlayStatus.DISCONNECT
//            vr.save(flush: true)
//        }
//        convertAndSend("/queue/editVideoStatus", "0")
//    }
//}
