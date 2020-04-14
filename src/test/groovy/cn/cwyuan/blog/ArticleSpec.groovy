package cn.cwyuan.blog

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class ArticleSpec extends Specification implements DomainUnitTest<Article> {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        expect:"fix me"
            true == false
    }
}
