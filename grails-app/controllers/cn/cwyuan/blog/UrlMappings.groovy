package cn.cwyuan.blog

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
            }
        }
        group "/api/client/signature", {
            "/list/$id"(controller: "api", action: "clientSignaturePersonList")//GET获取签名数据
            "/down/$id"(controller: "api", action: "clientSignatureDownload")//下载签名图片
        }

        "/plan/connect?/$id?(.$format)?"(controller: "plan", action: "connect")

//        登陆成功或者是直接请求/到达的是控制台而不是博客地址
        "/"(controller: "console")
        "500"(controller: "error")
        "404"(controller: "error")
        "405"(controller: "error")
    }
}
