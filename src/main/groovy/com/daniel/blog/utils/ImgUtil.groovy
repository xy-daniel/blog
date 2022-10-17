package com.daniel.blog.utils

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
        regex = "img src=\"(.*?)\""
        Pattern pa = Pattern.compile(regex, Pattern.DOTALL)
        Matcher ma = pa.matcher(s)
        while (ma.find()){
            list.add(ma.group())
        }
        def data = ""
        for (String str:list){
            def strArr = str.split(" src=")
            def getData = strArr.last().substring(1,strArr.last().size()-1)
            if (!data){
                data = getData
                continue
            }
            data += (","+getData)
        }
        data
    }
}
