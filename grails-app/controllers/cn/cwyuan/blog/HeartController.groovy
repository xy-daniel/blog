package cn.cwyuan.blog

import cn.cwyuan.blog.utils.DateUtil
import cn.cwyuan.blog.utils.UUIDGenerator
import grails.converters.JSON
import org.springframework.web.multipart.MultipartHttpServletRequest
import cn.cwyuan.blog.enums.RespType

class HeartController {

    HeartService heartService

    //前往添加文章页面
    def add() {
        def memorandum = Memorandum.findAll()
        [tags:Tags.findAll(), memorandum: memorandum.size()==0?"":memorandum.get(0).content]
    }

    def upload(){
        if (request.method == "POST") {
            try {
                if (request instanceof MultipartHttpServletRequest) {
                    //获取上传的文件
                    def file = request.getFile("editormd-image-file")
                    if (file) {
                        def strArr = DateUtil.date2Str(new Date()).split("-")
                        //图片上传根目录
                        def path = grailsApplication.config.getProperty('blog.editormd.filePath') + strArr[0] + "/" + strArr[1] + "/" + strArr[2]
                        //服务端根目录
                        def service_path = grailsApplication.config.getProperty('blog.editormd.serverPath') + strArr[0] + "/" + strArr[1] + "/" + strArr[2] + "/"

                        //庭审主键_文件名
                        def filePath = "${UUIDGenerator.nextUUID()}_${file.getOriginalFilename()}"
                        def sfile = new File("${path}", filePath)
                        if (!sfile.exists()) {
                            sfile.getParentFile().mkdirs()
                        }
                        file.transferTo(sfile)
                        //获取文件的服务端路径
                        render Resp.toJson(RespType.SUCCESS, service_path+filePath)
                        return
                    }
                    render Resp.toJson(RespType.SUCCESS)
                } else {
                    def msg = "[ArticleController.upload] 上传图片文件为非法请求方式，接收到的数据：[${params as JSON}]"
                    log.error(msg)
                    render Resp.toJson(RespType.FAIL)
                }
            } catch (e) {
                e.printStackTrace()
                def msg = "上传图片时出错！${e.message}"
                log.error("[ArticleController.upload]${msg}")
                render Resp.toJson(RespType.FAIL)
            }
        }
    }

    def addSave(){
        def title = params.get("title")
        def origin = params.get("origin")
        def summary = params.get("summary")
        def keys = params.get("keys")
        def tags = params.get("tags")
        def md = params.get("content")
        def html = params.get("editormd-html-code")
        def wzlx = params.int("wzlx")
        def number = 0
        def i = 0
        while((i=html.indexOf("img", i))!=-1) {
            number++
            i++
        }
        if (!(title && summary && keys && tags && md && html && wzlx)){
            redirect(controller: "heart", action: "add")
            return
        }
        def heart = new Heart(
                uid: UUIDGenerator.nextUUID(),
                lx: (number!=0 && number != 1)?number:2,
                wzm: title,
                gy: summary,
                gjc: keys,
                origin: origin,
                poll_count: 0,
                read_count: 0,
                comment_count: 0,
                wzlx: wzlx
        )
        heartService.addSave(heart, md, html, tags)
        def last = Memorandum.findAll()
        if (last){
            last.get(0).content = ""
            last.get(0).save(flush: true)
        }
        redirect(controller: "heart", action: "list")
    }

    def list(){
        if (request.method == "POST") {
            def draw = params.int("draw") ?: 1// 记录操作的次数 每次加1
            def start = params.int("start") ?: 0// 起始
            def length = params.int("length") ?: 20// 每页显示的size
            def search = params.get("search[value]") as String//搜索内容
            def model = heartService.list(draw, start, length, search)
            render model as JSON
        }
    }

    //数据推送
    def update(){
        def mdc = params.get("mdc")
        //只存储这个用户的一条数据成功后删除
        def memorandums = Memorandum.findAll()
        def memorandum
        if (!memorandums){
            memorandum = new Memorandum()
        }else{
            memorandum = memorandums.get(0)
        }
        memorandum.content = mdc
        memorandum.save(flush: true)
        if (memorandum.hasErrors()){
            throw new RuntimeException()
        }
        render Resp.toJson(RespType.SUCCESS)
    }

    //文章置顶
    def top(){
        def preHeart = Heart.findByIs_top(true)
        preHeart.is_top = false
        preHeart.save(flush: true)
        def heart = Heart.get(params.long("id"))
        heart.is_top = true
        heart.save(flush: true)
        render Resp.toJson(RespType.SUCCESS)
    }

    //编辑页面
    def edit(){
        def heart = Heart.get(params.long("id"))
        def hts = HeartTags.findAllByHeart(heart)
        String ids = ""
        for (HeartTags ht:hts){
            if (ids){
                ids = ids + ",id=" + ht.tags.id + "=di"
            }else{
                ids = "id=" + ht.tags.id + "=di"
            }
        }
        [heart: heart, tags: Tags.findAll(), content: Content.findByHeartId(heart.id).content, ids: ids]
    }

    //编辑保存
    def editSave(){
        def id = params.long("id")
        def title = params.get("title")
        def origin = params.get("origin")
        def summary = params.get("summary")
        def keys = params.get("keys")
        def tags = params.get("tags")
        def md = params.get("content")
        def html = params.get("editormd-html-code")
        def wzlx = params.int("wzlx")
        def number = 0
        def i = 0
        while((i=html.indexOf("img", i))!=-1) {
            number++
            i++
        }

        if (!(title && summary && keys && tags && md && html && wzlx)){
            redirect(controller: "heart", action: "edit", id: id)
            return
        }
        def heart = Heart.get(id)
        heart.lx = (number!=0 && number != 1)?number:2
        heart.wzm = title
        heart.gy = summary
        heart.gjc = keys
        heart.origin = origin
        heart.wzlx = wzlx
        heartService.addSave(heart, md, html, tags)
        redirect(controller: "heart", action: "list")
    }
}
