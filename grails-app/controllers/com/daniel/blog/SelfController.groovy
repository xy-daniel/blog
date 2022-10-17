package com.daniel.blog

import com.daniel.blog.utils.DateUtil
import com.daniel.blog.utils.UUIDGenerator
import grails.plugin.springsecurity.SpringSecurityService

class SelfController {

    SpringSecurityService springSecurityService

    /**
     * 前往修改用户信息页面
     * @return -->view="user.edit"
     */
    def edit() {
        //获取该登录用户信息
        def user = springSecurityService.currentUser as User
        [user: user]

    }

    /**
     * 更新用户信息
     * @return -->/user/list
     */
    def editSave() {
        //获取这个用户信息
        def userId = params.long("id")
        def realName = params.get("realName") as String
        def username = params.get("username") as String
        def password = params.get("password") as String
        def file = request.getFile("photo")
        def photo = ""
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
            photo = service_path+filePath
        }


        if (!(userId && realName && username && password)) {
            //前端不出错的话该句一般情况下不会触发
            redirect(controller: "self", action: "edit")
            return
        }
        def user = User.get(userId)
        //执行修改
        //更新用户信息表
        user.realName = realName
        user.username = username
        user.password = password
        user.photo = photo
        user.save(flush: true)
        //重定向
        redirect(controller: "admin")
    }
}