package cn.cwyuan.blog

import cn.cwyuan.blog.enums.RespType
import grails.converters.JSON
import org.hibernate.Criteria

class ApiController {

    /**
     * 友链数据
     */
    def friendData(){
        render Resp.toJson(RespType.SUCCESS, Friend.findAllByStatus(0))
    }

    def tagData(){
        //获取所有标签
        def tags = Tags.findAll()
        for (Tags tag : tags){
            tag.uid = HeartTags.findAllByTags(tag).size().toString()
        }
        render Resp.toJson(RespType.SUCCESS, tags)
    }

    //最近文章
    def currentWZ(){
        def model = [:]
        def modelDataList = []
        def dataList = Heart.findAll([max:5,offset:0,sort:"lastUpdated",order:"desc"])
        for (def heart : dataList) {
            def data = [:]
            //id
            data.put("id", heart.id)
            //文章名
            data.put("wzm", heart.wzm)

            //最后更新时间
            data.put("date", heart.lastUpdated)
            modelDataList.add(data)
        }
        model.put("data", modelDataList)
        render model as JSON
    }

    def heartData(){
        def currentPage = params.int("currentPage")
        def search = params.get("search") as String
        def tag = params.long("tag") ?: 0
        def count
        def model = [:]
        def modelDataList = []
        if (tag != 0){
            def hts = HeartTags.findAllByTags(Tags.get(tag))
            if (search) {
                //remove必须倒着进行删除
                for (int i=hts.size()-1; i>=0; i--){
                    def heart = hts.get(i).heart
                    if (heart.wzm.indexOf(search) == -1 && heart.gjc.indexOf(search) == -1 && heart.gy.indexOf(search) == -1) {
                        hts.remove(i)
                    }
                }
            }
            count = hts.size()
            def htData = hts.subList((currentPage - 1) * 6, currentPage * 6 > hts.size() ? hts.size() : currentPage * 6)
            for (HeartTags ht : htData) {
                def heart = ht.heart
                def data = [:]
                //id
                data.put("id", heart.id)
                //文章名
                data.put("wzm", heart.wzm)
                //作者
                data.put("zz", "Cruder拯救者")
                //概要
                data.put("gy", heart.gy)
                //关键词
                data.put("gjc", heart.gjc)
                //评论数
                data.put("pls", heart.comment_count)
                //点赞数
                data.put("dzs", heart.poll_count)
                //文章类型
                data.put("img", heart.img)
                //问题情境
                data.put("origin", heart.origin)
                //最后更新时间
                data.put("date", heart.dateCreated)
                modelDataList.add(data)
            }
        }else{
            count = Heart.findAllByGjcLikeOrGyLikeOrWzmLike("%${search}%", "%${search}%", "%${search}%").size()
            def dataList = Heart.findAllByGjcLikeOrGyLikeOrWzmLike("%${search}%", "%${search}%", "%${search}%",[max:6,offset:(currentPage-1)*6,sort:"lastUpdated",order:"desc"])
            for (def heart : dataList) {
                def data = [:]
                //id
                data.put("id", heart.id)
                //文章名
                data.put("wzm", heart.wzm)
                //作者
                data.put("zz", "Cruder拯救者")
                //概要
                data.put("gy", heart.gy)
                //关键词
                data.put("gjc", heart.gjc)
                //评论数
                data.put("pls", heart.comment_count)
                //点赞数
                data.put("dzs", heart.poll_count)
                //文章类型
                data.put("img", heart.img)
                //问题情境
                data.put("origin", heart.origin)
                //最后更新时间
                data.put("date", heart.dateCreated)
                modelDataList.add(data)
            }
        }
        model.put("recordsTotal", count)//数据总条数
        model.put("recordsFiltered", count)//显示的条数
        model.put("data", modelDataList)
        model.put("currentPage", currentPage)
        render model as JSON
    }

    def getGjc(){
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
        render newList as JSON
    }
}
