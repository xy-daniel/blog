package blog

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }
        //庭审流程接口 书记员客户端 法官助手接口 在用
        group "/api/client", {
            "/token?"(controller: "api", action: "token")//GET 用户登陆获取token
            "/current"(controller: "api", action: "current")//GET 获取当前登陆用户信息，解析token
            "/courtroom/$id?"(controller: "api", action: "courtroom")//GET 获取法庭
            "/plan/$id?"(controller: "api", action: "plan")//GET 获取排期-需要登陆
            "/synrooms/$id?"(controller: "api", action: "synrooms")//POST 远程上报远程法庭信息
            "/remoteCourtroom/$id?"(controller: "api", action: "remoteCourtroom")//GET 获取远程庭列表
            "/remoting/$id?"(controller: "api", action: "remoting")//GET 获取正在开庭的远程庭列表
            "/isCourtOccupied/$id?"(controller: "api", action: "isCourtOccupied")//GET 判断此远程厅是否可用
            "/startConnect/$id?"(controller: "api", action: "startConnect")//GET 开始双方远程连接
            "/startMoreConnect/$id?"(controller: "api", action: "startMoreConnect")//GET 开始三方远程连接
            "/stopConnect/$id?"(controller: "api", action: "stopConnect")//GET 断开远程连接
            "/close/"(controller: "api", action: "clientCloselive")//POST修改直播权限关闭
            "/open/"(controller: "api", action: "clientOpenlive")//POST修改直播权限开启
            "/chatRecord/"(controller: "api", action: "allChatRecord")//POST修改直播权限开启
            "/setPlanChooseStatus/"(controller: "api", action: "setPlanChooseStatus")//书记员设置排期选择状态
            "/getPlanChooseStatus/"(controller: "api", action: "getPlanChooseStatus")//法官获取书记员排期选择状态
        }
        group "/api/client/trial", {
            "/"(controller: "api", action: "trial")//GET 获取庭审-需要登陆
            "/note/$id?"(controller: "api", action: "trialNote")//POST 提交笔录-需要登陆
            "/down/note/$id?"(controller: "api", action: "downTrialNote")//POST 提交笔录-需要登陆
            "/closed/$id?"(controller: "api", action: "tiralClosed")//POST 提交闭庭操作-需要登陆
            "/adjourn/$id?"(controller: "api", action: "tiralAdjourn")//POST 提交休庭操作-需要登陆
            "/open/$id?"(controller: "api", action: "trialOpen")//POST 提交开庭操作-需要登陆
            "/comment/$id?"(controller: "api", action: "uploadComment")//POST 提交开庭操作-需要登陆
            "/getTrialId/$id?"(controller: "api", action: "getOpenTrailId")//POST 提交开庭操作-需要登陆
        }
        //给书记员远程签名用的公开接口
        group "/api/client/signature", {
            "/list/$id"(controller: "api", action: "clientSignaturePersonList")//GET获取签名数据
            "/down/$id"(controller: "api", action: "clientSignatureDownload")//下载签名图片
        }
        //书记员客户端临时立案接口
        group "/api/client/temporary", {
            "/case/"(controller: "api", action: "clientTemporaryCase")//POST保存临时立案接口
            "/get/all/"(controller: "api", action: "clientTemporaryGetAll")//GET获取所有专利案件等信息
        }
        group "/api/mobile/signature", {
            "/plan/list"(controller: "mobileApi", action: "signaturePlanList")//GET获取今日排期列表
            "/person/list/$id"(controller: "mobileApi", action: "signaturePersonList")//GET获取排期签名人员列表
            "/person/submit/$id?"(controller: "mobileApi", action: "signaturePersonSubmit")//POST提交签名数据
        }


//        "/api/client/token?/$id?(.$format)?"(controller: "api", action: "token")                //GET 用户登陆获取token
//        "/api/client/current?/$id?(.$format)?"(controller: "api", action: "current")            //GET 获取当前登陆用户信息，解析token
//        "/api/client/courtroom?/$id?(.$format)?"(controller: "api", action: "courtroom")        //GET 获取法庭
//        "/api/client/trial/note?/$id?(.$format)?"(controller: "api", action: "trialNote")       //POST 提交笔录-需要登陆
//        "/api/client/trial/closed?/$id?(.$format)?"(controller: "api", action: "tiralClosed")   //POST 提交闭庭操作-需要登陆
//        "/api/client/trial/adjourn?/$id?(.$format)?"(controller: "api", action: "tiralAdjourn") //POST 提交休庭操作-需要登陆
//        "/api/client/trial/open?/$id?(.$format)?"(controller: "api", action: "trialOpen")       //POST 提交开庭操作-需要登陆
//        "/api/client/plan?/$id?(.$format)?"(controller: "api", action: "plan")                  //GET 获取排期-需要登陆

//        "/api/client/courtroom?/$id?(.$format)?"(controller: "api", action: "courtroom")        //GET 拉取全部标注
//        "/api/client/courtroom?/$id?(.$format)?"(controller: "api", action: "courtroom")        //POST 提交标注

        //给书记员远程签名用的公开接口
//        "/api/client/signature/list?/$id?(.$format)?"(controller: "api", action: "clientSignaturePersonList")//GET获取签名数据
//        "/api/client/signature/down?/$id?(.$format)?"(controller: "api", action: "clientSignatureDownload")//下载签名图片

        //给安卓平板用的远程签名用的公开接口
//        "/api/mobile/signature/plan/list?/$id?(.$format)?"(controller: "mobileApi", action: "signaturePlanList")
//GET获取今日排期列表
//        "/api/mobile/signature/person/list?/$id?(.$format)?"(controller: "mobileApi", action: "signaturePersonList")
//GET获取排期签名人员列表
//        "/api/mobile/signature/person/submit?/$id?(.$format)?"(controller: "mobileApi", action: "signaturePersonSubmit")
//POST提交签名数据

        //存储用api接口
        "/api/store/video/$id?(.$format)?"(controller: "storeApi", action: "video")//POST 存储保存视频文件接口

        "/case/list?/$id?(.$format)?"(controller: "plan", action: "caseInfoList")
        "/case?/$id?(.$format)?"(controller: "plan", action: "getCaseById")

        "/log/system/list?/$id?(.$format)?"(controller: "log", action: "logSystemList")
        "/log/login/list?/$id?(.$format)?"(controller: "log", action: "logLoginList")
        "/log/system/delLogs?/$id?(.$format)?"(controller: "log", action: "delSystemLogs")

        "/user/edit/save?/$id?(.$format)?"(controller: "user", action: "editSave")

        "/role/edit/save?/$id?(.$format)?"(controller: "role", action: "editSave")

        "/department/list?/$id?(.$format)?"(controller: "department", action: "list")
        "/department/edit/save?/$id?(.$format)?"(controller: "department", action: "editSave")

        "/employee/edit/save?/$id?(.$format)?"(controller: "employee", action: "editSave")

        "/caseType/edit/save?/$id?(.$format)?"(controller: "caseType", action: "editSave")

        "/patentType/edit/save?/$id?(.$format)?"(controller: "patentType", action: "editSave")

        //编码器
        "/ctrl/encode/add?/$id?(.$format)?"(controller: "ctrl", action: "addEncode")
        "/ctrl/encode/edit?/$id?(.$format)?"(controller: "ctrl", action: "editEncode")
        //解码器
        "/ctrl/decode/add?/$id?(.$format)?"(controller: "ctrl", action: "addDecode")
        "/ctrl/decode/edit?/$id?(.$format)?"(controller: "ctrl", action: "editDecode")
        //VIDEO矩阵
        "/ctrl/video/add?/$id?(.$format)?"(controller: "ctrl", action: "addVideo")
        "/ctrl/video/edit?/$id?(.$format)?"(controller: "ctrl", action: "editVideo")
        //VGA矩阵
        "/ctrl/vga/add?/$id?(.$format)?"(controller: "ctrl", action: "addVga")
        "/ctrl/vga/edit?/$id?(.$format)?"(controller: "ctrl", action: "editVga")
        //输出控制
        "/ctrl/out/add?/$id?(.$format)?"(controller: "ctrl", action: "addOut")
        "/ctrl/out/edit?/$id?(.$format)?"(controller: "ctrl", action: "editOut")
        //红外控制
        "/ctrl/irctrl/add?/$id?(.$format)?"(controller: "ctrl", action: "addIrctrl")
        "/ctrl/irctrl/edit?/$id?(.$format)?"(controller: "ctrl", action: "editIrctrl")
        //音量控制
        "/ctrl/sound/add?/$id?(.$format)?"(controller: "ctrl", action: "addSound")
        "/ctrl/sound/edit?/$id?(.$format)?"(controller: "ctrl", action: "editSound")
        //综合控制
        "/ctrl/total/add?/$id?(.$format)?"(controller: "ctrl", action: "addTotal")
        "/ctrl/total/edit?/$id?(.$format)?"(controller: "ctrl", action: "editTotal")
        //强电控制
        "/ctrl/power/add?/$id?(.$format)?"(controller: "ctrl", action: "addPower")
        "/ctrl/power/edit?/$id?(.$format)?"(controller: "ctrl", action: "editPower")
        //摄像头控制
        "/ctrl/camera/add?/$id?(.$format)?"(controller: "ctrl", action: "addCamera")
        "/ctrl/camera/edit?/$id?(.$format)?"(controller: "ctrl", action: "editCamera")
        //摄像头控制指令
        "/ctrl/camera/buttons?/$id?(.$format)?"(controller: "ctrl", action: "buttons")
        "/ctrl/buttons/add?/$id?(.$format)?"(controller: "ctrl", action: "addButtons")
        "/ctrl/buttons/edit?/$id?(.$format)?"(controller: "ctrl", action: "editButtons")
        //摄像头预置位
        "/ctrl/camera/presets?/$id?(.$format)?"(controller: "ctrl", action: "presets")
        "/ctrl/persets/add?/$id?(.$format)?"(controller: "ctrl", action: "addPresets")
        "/ctrl/presets/edit?/$id?(.$format)?"(controller: "ctrl", action: "editPresets")

        "/plan/connect?/$id?(.$format)?"(controller: "plan", action: "connect")

        "/"(controller: "index")
        "500"(controller: "error")
        "404"(controller: "error")
        "405"(controller: "error")
    }
}
