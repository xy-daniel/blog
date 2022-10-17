package com.daniel.blog

import grails.gorm.transactions.Transactional

@Transactional
class InitService {
    /**
     * 系统配置初始化角色
     */
    def role() {
        def superRole = Role.findByAuthority("ROLE_SUPER")
        if (!superRole) {
            superRole = new Role(authority: "ROLE_SUPER", remark: "超级管理员", sequence: 0)
            superRole.save(flush: true)
            if (!superRole.hasErrors()) {
                log.info("系统配置初始化：ROLE_SUPER 角色初始化完毕。")
            } else {
                log.error("系统配置初始化：ROLE_SUPER 角色初始化失败。[${superRole.errors}]")
            }
        }
        def adminRole = Role.findByAuthority("ROLE_ADMIN")
        if (!adminRole) {
            adminRole = new Role(authority: "ROLE_ADMIN", remark: "管理员", sequence: 0)
            adminRole.save(flush: true)
            if (!adminRole.hasErrors()) {
                log.info("系统配置初始化：ROLE_ADMIN 角色初始化完毕。")
            } else {
                log.error("系统配置初始化：ROLE_ADMIN 角色初始化失败。[${adminRole.errors}]")
            }
        }
        def todayTrialRole = Role.findByAuthority("ROLE_TODAYTRIAL")
        if (!todayTrialRole) {
            todayTrialRole = new Role(authority: "ROLE_TODAYTRIAL", remark: "庭审预告", sequence: 1)
            todayTrialRole.save(flush: true)
            if (!todayTrialRole.hasErrors()) {
                log.info("系统配置初始化：ROLE_TODAYTRIAL 角色初始化完毕。")
            } else {
                log.error("系统配置初始化：ROLE_TODAYTRIAL 角色初始化失败。[${todayTrialRole.errors}]")
            }
        }
        def trialListRole = Role.findByAuthority("ROLE_TRIALLIST")
        if (!trialListRole) {
            trialListRole = new Role(authority: "ROLE_TRIALLIST", remark: "庭审列表", sequence: 2)
            trialListRole.save(flush: true)
            if (!trialListRole.hasErrors()) {
                log.info("系统配置初始化：ROLE_TRIALLIST 角色初始化完毕。")
            } else {
                log.error("系统配置初始化：ROLE_TRIALLIST 角色初始化失败。[${trialListRole.errors}]")
            }
        }
        def analyzeRole = Role.findByAuthority("ROLE_ANALYZE")
        if (!analyzeRole) {
            analyzeRole = new Role(authority: "ROLE_ANALYZE", remark: "统计分析", sequence: 3)
            analyzeRole.save(flush: true)
            if (!analyzeRole.hasErrors()) {
                log.info("系统配置初始化：ROLE_ANALYZE 角色初始化完毕。")
            } else {
                log.error("系统配置初始化：ROLE_ANALYZE 角色初始化失败。[${analyzeRole.errors}]")
            }
        }
        def configRole = Role.findByAuthority("ROLE_CONFIG")
        if (!configRole) {
            configRole = new Role(authority: "ROLE_CONFIG", remark: "配置与管理", sequence: 4)
            configRole.save(flush: true)
            if (!configRole.hasErrors()) {
                log.info("系统配置初始化：ROLE_CONFIG 角色初始化完毕。")
            } else {
                log.error("系统配置初始化：ROLE_CONFIG 角色初始化失败。[${configRole.errors}]")
            }
        }
        def toolRole = Role.findByAuthority("ROLE_TOOL")
        if (!toolRole) {
            toolRole = new Role(authority: "ROLE_TOOL", remark: "管理员工具", sequence: 5)
            toolRole.save(flush: true)
            if (!toolRole.hasErrors()) {
                log.info("系统配置初始化：ROLE_TOOL 角色初始化完毕。")
            } else {
                log.error("系统配置初始化：ROLE_TOOL 角色初始化失败。[${toolRole.errors}]")
            }
        }
    }
    /**
     * 系统配置初始化用户，并赋予权限。
     */
    def user() {
        def superUser = User.findByUsername("super")
        if (!superUser) {
            superUser = new User(username: "super", password: "1", realName: "超级管理员", enabled: true)
            superUser.save(flush: true)
            if (!superUser.hasErrors()) {
                log.info("系统配置初始化：super 账号初始化完毕，super。")
            } else {
                log.error("系统配置初始化：super 账号初始化失败。[${superUser.errors}]")
            }
        }
        //分配超级管理员角色
        def superRole = Role.findByAuthority("ROLE_SUPER")
        if (!superUser.hasErrors() && superRole) {
            def superUserRole = UserRole.findByUserAndRole(superUser, superRole)
            if (!superUserRole) {
                superUserRole = new UserRole(user: superUser, role: superRole)
                superUserRole.save(flush: true)
                if (!superUserRole.hasErrors()) {
                    log.info("系统配置初始化：super 角色分配完毕。")
                } else {
                    log.error("系统配置初始化：super 角色分配失败。[${superUserRole.errors}]")
                }
            }
        }
    }

    def dict() {
        def confDict = Dict.findByCode("SYSTEM_CONFIG")
        if (!confDict) {
            confDict = new Dict(name: "系统配置", code: "SYSTEM_CONFIG", type: "String", state: 3, notes: "系统配置")
            confDict.save(flush: true)
            if (!confDict.hasErrors()) {
                log.info("系统配置初始化：字典 SYSTEM_CONFIG 初始化完毕。")
                def confCourtDict = Dict.findByCode("CURRENT_COURT")
                if (!confCourtDict) {
                    confCourtDict = new Dict(name: "所在法院", code: "CURRENT_COURT", type: "String", val: "", state: 1, notes: "项目所在法院", parent: confDict)
                    confCourtDict.save(flush: true)
                    if (!confCourtDict.hasErrors()) {
                        log.info("系统配置初始化：字典 CENTRAL_COURT 初始化完毕。")
                    } else {
                        log.error("系统配置初始化：字典 CENTRAL_COURT 初始化失败。[${confCourtDict.errors}]")
                    }
                }

            } else {
                log.error("系统配置初始化：字典 SYSTEM_CONFIG 初始化失败。[${confDict.errors}]")
            }
        }
    }
}
