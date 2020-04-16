package cn.cwyuan.blog

import grails.testing.web.controllers.ControllerUnitTest
import spock.lang.Specification

class SelfControllerSpec extends Specification implements ControllerUnitTest<SelfController> {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        expect:"fix me"
            true == false
    }
}
