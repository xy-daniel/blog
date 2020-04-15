package cn.cwyuan.blog

import cn.cwyuan.blog.utils.DateUtil
import cn.cwyuan.blog.utils.UUIDGenerator
import grails.converters.JSON
import org.springframework.web.multipart.MultipartHttpServletRequest
import cn.cwyuan.blog.enums.RespType

class ArticleController {

    //前往添加文章页面
    def add() { }

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
}
