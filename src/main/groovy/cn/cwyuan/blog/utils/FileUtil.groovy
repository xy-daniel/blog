package cn.cwyuan.blog.utils

import cn.cwyuan.blog.Content
import cn.cwyuan.blog.Heart

class FileUtil {

    static def generateFile(Long heartId){
        PrintWriter pw = new PrintWriter( new FileWriter( "D:\\${Heart.get(heartId).wzm}.md"))
        pw.print(Content.findByHeartId(heartId).content)
        pw.close()
    }
}
