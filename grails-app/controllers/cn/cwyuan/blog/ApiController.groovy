package cn.cwyuan.blog

import cn.cwyuan.blog.enums.RespType
import cn.cwyuan.blog.utils.FileUtil
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
            def hts = HeartTags.findAllByTags(Tags.get(tag),[sort:"id",order:"desc"])
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
                data.put("gy", heart.gy)
                data.put("gjc", heart.gjc)
                data.put("img", heart.img)
                data.put("origin", heart.origin)
                data.put("date", heart.dateCreated)
                modelDataList.add(data)
            }
        }else{
            count = Heart.findAllByGjcLikeOrGyLikeOrWzmLike("%${search}%", "%${search}%", "%${search}%").size()
            def dataList = Heart.findAllByGjcLikeOrGyLikeOrWzmLike("%${search}%", "%${search}%", "%${search}%",[max:6,offset:(currentPage-1)*6,sort:"lastUpdated",order:"desc"])
            for (def heart : dataList) {
                def data = [:]
                data.put("id", heart.id)
                data.put("wzm", heart.wzm)
                data.put("gy", heart.gy)
                data.put("gjc", heart.gjc)
                data.put("img", heart.img)
                data.put("origin", heart.origin)
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

    //访问
    def visit(){
        def cip = params.get("cip") as String
        def cname = params.get("cname") as String
        def cua = params.get("cua") as String
        def visit = Visit.findByCipAndCnameAndCua(cip, cname, cua)
        if (!visit){
            new Visit(
                    cip: cip,
                    cname: cname,
                    cua: cua,
                    status: 1
            ).save(flush: true)
        }
        def visited = Visit.findAll([sort: "id", order: "esc"])
        def position = visited.indexOf(Visit.findByCipAndCnameAndCua(cip, cname, cua))+1
        def model = [:]
        model.put("total",visited.size())
        model.put("position",position)
        model.put("address",cname)
        render model as JSON
    }

    def download(){
        try {
            def heartId = params.long("heartId")
            File file = new File("D:\\${Heart.get(heartId).wzm}.md")
            if (!file.exists()){
                FileUtil.generateFile(heartId)
                file = new File("D:\\${Heart.get(heartId).wzm}.md")
            }
            String filename = file.getName()
            String ext = filename.substring(filename.lastIndexOf(".") + 1).toUpperCase()
            InputStream fis = new BufferedInputStream(new FileInputStream("D:\\${Heart.get(heartId).wzm}.md"))
            byte[] buffer = new byte[fis.available()]
            fis.read(buffer)
            fis.close()
            OutputStream toClient = new BufferedOutputStream(response.getOutputStream())
            response.reset()
            response.addHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(filename,"UTF-8"))
            response.addHeader("Content-Length", "" + file.length())
            response.setContentType("application/octet-stream")
            toClient.write(buffer)
            toClient.flush()
            toClient.close()
        } catch (IOException ex) {
            ex.printStackTrace()
        }
    }
}
