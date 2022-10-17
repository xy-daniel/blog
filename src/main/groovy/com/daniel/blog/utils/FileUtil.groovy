package com.daniel.blog.utils


import com.daniel.blog.Content
import com.daniel.blog.Heart

class FileUtil {

    static def generateFile(Long heartId){
        PrintWriter pw = new PrintWriter( new FileWriter( "D:\\${Heart.get(heartId).wzm}.md"))
        pw.print(Content.findByHeartId(heartId).content)
        pw.close()
    }
}
