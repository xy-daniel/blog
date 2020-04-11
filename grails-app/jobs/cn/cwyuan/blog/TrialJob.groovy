//package cn.cwyuan.blog
//
//import com.hxht.techcrt.courtroom.TrialService
//
//class TrialJob {
//    TrialService trialService
//
//    static triggers = {
////      cron name:   'cronTrigger',   startDelay: 10000, cronExpression: '0/10 * * * * ? ' //每十秒钟执行一次
////      cron name:   'cronTrigger',   startDelay: 10000, cronExpression: '0 0 2 * * ? *' //每天的凌晨两点执行
//        cron cronExpression: "0 30 2 * * ? *"//每天2：30执行一次
//    }
//
//    def execute() {
//        // execute job
//        trialService.tiralClosed()
//    }
//
//}
