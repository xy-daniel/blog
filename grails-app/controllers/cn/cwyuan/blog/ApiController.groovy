package cn.cwyuan.blog

import cn.cwyuan.blog.enums.RespType
import grails.converters.JSON

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
                data.put("id", heart.id)
                data.put("wzm", heart.wzm)
                data.put("zz", "Cruder拯救者")
                data.put("gy", heart.gy)
                modelDataList.add(data)
            }
        }else{
            count = Heart.createCriteria().count() {
                if (search) {
                    like("wzm", "%${search}%")
                    like("gjc", "%${search}%")
                    like("gy", "%${search}%")
                }
            }
            def dataList = Heart.createCriteria().list {
                and {
                    setMaxResults(3)
                    setFirstResult((currentPage-1)*3)
                }
                if (search) {
                    like("wzm", "%${search}%")
                    like("gjc", "%${search}%")
                    like("gy", "%${search}%")
                }
                order("lastUpdated", "desc")
            } as List<Heart>
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
                data.put("pls", heart.comment_count?:0)
                //点赞数
                data.put("dzs", heart.poll_count?:0)
                //文章类型
//                data.put("lx", heart.lx)
                data.put("lx", 0)
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
}
