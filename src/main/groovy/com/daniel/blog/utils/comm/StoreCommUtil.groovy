package com.daniel.blog.utils.comm

import grails.converters.JSON
import grails.plugins.rest.client.RestBuilder
import grails.plugins.rest.client.RestResponse

/**
 * 模块通信工具包
 */
class StoreCommUtil {

    static RestResponse stop(long trialId, String storeIp) {
        def url = "http://${storeIp}:2420/"
//        def url = "http://192.168.0.222:2420/"
        def data = [
                trial  : "${trialId}",
                type   : "stop",
        ]
        return post(url, data)

    }

    static RestResponse start(long planId, long trialId, String storeIp, List chnList) {
        def url = "http://${storeIp}:2420/"
        def data = [
                plan   : "${planId}",
                trial  : "${trialId}",
                type   : "start",
                channel: chnList,
        ]
        return post(url, data)

    }

    static RestResponse post(String url, Map data) {
        try {
            def rest = new RestBuilder(connectTimeout: 5000, readTimeout: 20000)
            def resp = rest.post(url) {
                contentType "application/json"
                json data as JSON
            }
            return resp
        } catch (Exception ignored) {
            return null
        }
    }

}
