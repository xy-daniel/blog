package cn.cwyuan.blog

import cn.cwyuan.blog.enums.RespType
import cn.cwyuan.blog.utils.DateUtil
import cn.cwyuan.blog.utils.UUIDGenerator
import grails.converters.JSON

import java.text.SimpleDateFormat

/**
 * 首页面---->任何用户都可以进入
 * Created by daniel in 2020.04.10
 */
class IndexController {

    def contact(){
        def name = params.get("name")
        def eorp = params.get("eorp")
        def gy = params.get("gy")
        if (!(name && eorp && gy)){
            //你他妈的不写信息就联系我，你是傻逼吗？滚回去给我写信息
            redirect(controller: "index", action: "contact_us")
            return
        }
        new Contacts(
                uid: UUIDGenerator.nextUUID(),
                name: name,
                eOrP: eorp,
                gy: gy,
                isTrue: 0
        ).save(flush: true)
        redirect(controller: "index")
    }

    /**
     * 主页
     */
    def index() {
        def hearts = Heart.findAll()
        List<String> gjcs = new ArrayList<>()
        for (Heart heart:hearts){
            def gjcArr = heart.gjc.split(",")
            for (String gjc:gjcArr){
                gjcs.add(gjc)
            }
        }
        Set set = new HashSet()
        List<String> newList = new ArrayList()
        set.addAll(gjcs)
        newList.addAll(set)
        [hearts:Heart.findAll().size(),tags:Tags.findAll().size(),gjcs:newList.size()]
    }

    /**
     * 关于我页面
     */
    def about_me(){
        //从数据库获取自述信息填充到页面
    }

    /**
     * 联系我页面
     */
    def contact_us(){
        //没有什么数据直接写死在页面上就行了
    }

    /**
     * 归档页面
     */
    def file(){
        [date: params.get("date")?:"所有"]
    }

    //根据时间获取数据
    def getFileByDate(){
        def date = params.get("date")
        def model = [:]
        def modelDataList = []
        def hearts
        if (date=="所有"){
            //获取所有的数据
            hearts = Heart.findAll([sort:"lastUpdated",order:"desc"])
        }else{
            def yearArr = date.split("年")
            def year = yearArr[0] as Integer
            def month = yearArr[1].split("月")[0] as Integer
            def sdf = new SimpleDateFormat("yyyy")
            def lastDate = month==12?DateUtil.getMonthFirstDay(year+1,1):DateUtil.getMonthFirstDay(year,month+1) as Date
            hearts = Heart.findAllByLastUpdatedBetween(DateUtil.getMonthFirstDay(year,month),lastDate,[sort:"lastUpdated",order:"desc"])
        }
        for (def heart : hearts) {
            def data = [:]
            //id
            data.put("id", heart.id)
            //文章名
            data.put("wzm", heart.wzm)
            //文章概要
            data.put("gy", heart.gy)
            //最后更新时间
            data.put("date", heart.lastUpdated)
            modelDataList.add(data)
        }
        model.put("data", modelDataList)
        render model as JSON
    }

    /**
     * 文章页面
     */
    def detail(){
        [id: params.get("id")]
    }

    def getHtml(){
        def model = [:]
        model.put("title", Heart.get(params.int("id")).wzm)
        model.put("md", Content.findByHeartId(params.int("id")).content)
        render Resp.toJson(RespType.SUCCESS, model)
    }

    //查询关于我的信息
    def getAboutMe(){
        def model = [:]
        model.put("md", AboutMe.findAll().get(0).data)
        render Resp.toJson(RespType.SUCCESS, model)
    }
}
