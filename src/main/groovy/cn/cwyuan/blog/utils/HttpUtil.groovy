package cn.cwyuan.blog.utils

import grails.plugins.rest.client.RestBuilder
import grails.plugins.rest.client.RestResponse
import org.grails.web.json.JSONObject
import org.springframework.util.LinkedMultiValueMap
import org.springframework.util.MultiValueMap

class HttpUtil {

//    static RestResponse post4Json(){
//
//    }

    static RestResponse post4JsonObject(String url, def model){
        MultiValueMap<String, String> form = new LinkedMultiValueMap<>()
        form.add("params", (model as JSONObject).toString())
        new RestBuilder(connectTimeout: 6000, readTimeout: 20000).post(url) {
            accept("application/json")
            contentType("application/x-www-form-urlencoded")
            body(form)
        }
    }

}
