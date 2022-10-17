package com.daniel.blog.utils

import java.text.DateFormat
import java.text.SimpleDateFormat

/**
 * @Description:
 * @author: Voyager
 * @date: 2018/1/24
 */
class DateUtil {
    /**
     * 计算前后偏移天数，返回Date对象
     * @param days 偏移的天数
     * @param now 当前日期
     * @return 偏移后的日期
     */
    static Date countLowerDate(int days, Date now) {
        Calendar calendar = Calendar.getInstance()
        calendar.setTime(now)
        calendar.add(Calendar.DATE, days)
        return calendar.getTime()//获取前一天Date对象
    }
    /**
     * 获取指定月份第一天
     * @param year 指定年 2019 2018 2017..
     * @param month 指定月份 1 2 3 ..12
     * @return 第一天
     */
    static Date getMonthFirstDay(int year, int month) {
        Calendar calendar = Calendar.getInstance()
        calendar.set(Calendar.YEAR, year) //设置年份
        calendar.set(Calendar.MONTH, month - 1) //设置月份
        int firstDay = calendar.getActualMinimum(Calendar.DAY_OF_MONTH)  //获取某月最小天数
        calendar.set(Calendar.DAY_OF_MONTH, firstDay) //设置日历中月份的最小天数
        calendar.set(Calendar.HOUR_OF_DAY, 0)
        calendar.set(Calendar.MINUTE, 0)
        calendar.set(Calendar.SECOND, 0)
        calendar.set(Calendar.MILLISECOND, 0)
        return calendar.getTime()
    }
    /**
     * 获取指定月份最后一天
     * @param year 指定年 2019 2018 2017..
     * @param month 指定月份 1 2 3 ..12
     * @return 最后一天
     */
    static Date getMonthLastDay(int year, int month) {
        Calendar calendar = Calendar.getInstance()
        calendar.set(Calendar.YEAR, year) //设置年份
        calendar.set(Calendar.MONTH, month - 1) //设置月份
        int lastDay = calendar.getActualMaximum(Calendar.DAY_OF_MONTH)  //获取某月最小天数
        calendar.set(Calendar.DAY_OF_MONTH, lastDay) //设置日历中月份的最大天数
        calendar.set(Calendar.HOUR_OF_DAY, 0)
        calendar.set(Calendar.MINUTE, 0)
        calendar.set(Calendar.SECOND, 0)
        calendar.set(Calendar.MILLISECOND, 0)
        return calendar.getTime()
    }
    /**
     * 获取两个日期之间的所有日期（yyyy-MM-dd）
     * @param first
     * @param last
     * @return
     */
    static List<Date> getBetweenDates(Date first, Date last) {
        List<Date> result = new ArrayList<Date>()
        Calendar tempStart = Calendar.getInstance()
        tempStart.setTime(first)
        while(first.getTime()<=last.getTime()){
            result.add(tempStart.getTime())
            tempStart.add(Calendar.DAY_OF_YEAR, 1)
            first = tempStart.getTime()
        }
        return result
    }
    /**
     * 获取今天的开始 0点
     */
    static Date getStartTime() {
        Calendar todayStart = Calendar.getInstance()
        todayStart.set(Calendar.HOUR_OF_DAY, 0)
        todayStart.set(Calendar.MINUTE, 0)
        todayStart.set(Calendar.SECOND, 0)
        todayStart.set(Calendar.MILLISECOND, 0)
        return todayStart.getTime()
    }

    /**
     * 获取今天的结束 23点59分59秒
     */
    static Date getEndTime() {
        Calendar todayEnd = Calendar.getInstance()
        todayEnd.set(Calendar.HOUR_OF_DAY, 23)
        todayEnd.set(Calendar.MINUTE, 59)
        todayEnd.set(Calendar.SECOND, 59)
        todayEnd.set(Calendar.MILLISECOND, 999)
        return todayEnd.getTime()
    }

    /**
     * 获取当前格林威治时间
     * @return 格林威治时间
     */
    static String getGMTDate() {
        DateFormat dateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US)
        dateFormat.setTimeZone(TimeZone.getTimeZone("GMT"))
        return dateFormat.format(Calendar.getInstance().getTime())
    }

    /**
     * 获取本年年份
     * @return  本年年份
     */
    static String getCurrentYear() {
        String.valueOf(Calendar.getInstance().get(Calendar.YEAR))
    }

    /**
     * 字符串转换成时间类型
     * @param dateString  时间字符串
     * @return  时间
     */
    static Date getDate(String dateString){
        new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(dateString)
    }

    /**
     * 月份填充为2位数
     * @param j 需要处理的月份
     * @return  处理完成的字符串数据
     */
    static String handleNum(int j){
        j<10?"0"+j:""+j
    }

    /**
     * Date类型的日期数据转换成"yyyy-MM-dd类型的字符串数据
     * @param date  输入Date类型数据
     * @return  输出String类型数据
     */
    static String date2Str(Date date){
        new SimpleDateFormat("yyyy-MM-dd").format(date)
    }
}
