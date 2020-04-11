package cn.cwyuan.blog.utils

import org.apache.commons.lang3.StringUtils;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

/**
 * Base64加密解密工具 created by arctic in 2020/03/05
 */
class Base64Utils {
    /**
     * 加密
     * @param str  待加密的正常字符串
     * @return  加密后的base64字符串
     */
    static String encode(String str) {
        byte[] b = null
        String s = null
        try {
            b = str.getBytes("utf-8")
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace()
        }
        if (b != null) {
            s = new BASE64Encoder().encode(b)
        }
        return s
    }

    /**
     * 解密
     * @param s 需要解密的base64字符串
     * @return  解密后的正常字符串
     */
    static String decode(String s) {
        byte[] b = null
        String result = null
        if (s != null) {
            BASE64Decoder decoder = new BASE64Decoder()
            try {
                b = decoder.decodeBuffer(s)
                result = new String(b, "utf-8")
            } catch (Exception e) {
                e.printStackTrace()
            }
        }
        return result
    }

    static byte[] decodeImg(String imgStr) {
        byte[] b = null
        if (!StringUtils.isNotBlank(imgStr)) {
            return b
        }
        try {
            BASE64Decoder decoder = new BASE64Decoder()
            b = decoder.decodeBuffer(imgStr)
            for (int i = 0; i < b.length; i++) {
                if (b[i] < 0) {
                    b[i] += 256
                }
            }
        } catch (Exception e) {
            e.printStackTrace()
        }
        return b
    }
}
