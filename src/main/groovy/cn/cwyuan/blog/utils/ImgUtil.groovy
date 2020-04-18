package cn.cwyuan.blog.utils

import java.util.regex.Matcher
import java.util.regex.Pattern

class ImgUtil {

    /**
     * 获取图片
     * @param s HTML代码
     * @return  图片数组
     */
    static String getImgAddress(String s){
        String regex
        List<String> list = new ArrayList<String>()
        regex = "src=\"(.*?)\""
        Pattern pa = Pattern.compile(regex, Pattern.DOTALL)
        Matcher ma = pa.matcher(s)
        while (ma.find()){
            list.add(ma.group())
        }
        def data = ""
        for (String str:list){
            str = str.split("=").last().substring(1,str.split("=").last().size()-1)
            if (!data){
                data = str
                continue
            }
            data += (","+str)
        }
        data
    }
}
