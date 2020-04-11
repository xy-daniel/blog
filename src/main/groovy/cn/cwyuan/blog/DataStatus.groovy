package cn.cwyuan.blog

class DataStatus {
    /**
     * 显示
     */
    public static final Integer SHOW = 1

    /**
     * 删除
     */
    public static final Integer DEL = 4

    /**
     * 隐藏
     */
    public static final Integer HIDE = 6



    static String getString(int status){
        switch (status){
            case 1:
                return "正常"
            case 4:
                return "停止使用"
            case 6:
                return "非正常状态"
            default:
                return ""
        }
    }

    static Integer getCode(String status){
        switch (status){
            case "正常":
                return 1
            case "停止使用":
                return 4
            case "非正常状态":
                return 6
            default:
                return null
        }
    }
}
