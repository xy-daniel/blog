package com.daniel.blog.enums

enum RespType {
    SUCCESS(0, "调用成功"),
    FAIL(1, "请求失败,请稍后再试"),
    PARAM_VALID_FAIL(110, "参数校验失败"),
    BUSINESS_VALID_FAIL(120, "参数不合法"),
    DATA_NOT_ALLOWED(121, "参数未审核通过"),

    DATA_NOT_EXIST(410, "数据不存在"),
    DATA_ALREADY_EXIST(411, "数据已存在"),
    PSW_NOT_SAME(412, "两次输入密码不相同"),
    PSW_OLD_PSW(413, "旧密码错误"),

    NO_AUTHORIZED(300, "没有权限"),
    USERNAME_PASSWORD_ERROR(310, "用户名或密码错误"),
    SESSION_OUTTIME(320, "请先登录"),


    METHOD_NOT_SUPPORT(405, "请求方法不允许"),

    INNER_ERROR(500,"系统内部错误")


    RespType(int code, String msg){
        this.setCode(code)
        this.setMsg(msg)
    }

    /**枚举值*/
    private int code
    /**描述*/
    private String msg

    int getCode() {
        return code
    }

    void setCode(int code) {
        this.code = code
    }

    String getMsg() {
        return msg
    }

    void setMsg(String msg) {
        this.msg = msg
    }
}
