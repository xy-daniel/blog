package com.daniel.blog.utils

/**
 * sakuri创建于2017/5/8.
 */
class UUIDGenerator {
    /**
     * 获得一个UUID
     * @return String UUID
     */
    static String nextUUID() {
        UUID.randomUUID().toString().replaceAll("-", "")
    }
}
