package cn.cwyuan.blog

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }
        //给书记员远程签名用的公开接口
        group "/api/client/signature", {
            "/list/$id"(controller: "api", action: "clientSignaturePersonList")//GET获取签名数据
            "/down/$id"(controller: "api", action: "clientSignatureDownload")//下载签名图片
        }

        "/plan/connect?/$id?(.$format)?"(controller: "plan", action: "connect")

        "/"(controller: "index")
        "500"(controller: "error")
        "404"(controller: "error")
        "405"(controller: "error")
    }
}
