<style>
    .rightSet{
        text-align: right;
    }
    @media (max-width: 576px) {
        .rightSet {
            text-align: left;
        }
    }
</style>
<!-- begin #footer-copyright -->
<div id="footer-copyright" class="footer-copyright">
    <!-- begin container -->
    <div class="container">
        <div class="row">
            <div class="col-md-4" style="text-align: left">
                <span>
                    <script type="text/javascript">document.write(unescape("%3Cspan id='cnzz_stat_icon_1278922781'%3E%3C/span%3E%3Cscript src='https://s9.cnzz.com/z_stat.php%3Fid%3D1278922781%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
                </span>
                <br/>
                <span>
                    <a href="http://beian.miit.gov.cn/" target="_blank"> 京ICP备20017963号</a>

                </span>
            </div>
            <div class="col-md-8 rightSet">
                <span class="copyright">&copy; 2020 Daniel版权所有,授权可用,侵权必究</span>
                <br/>
                <span id="siteTime"></span>
            </div>
        </div>
    </div>
    <!-- end container -->
</div>
<!-- end #footer-copyright -->
<script>
    function siteTime(){
        window.setTimeout("siteTime()", 1000);
        const seconds = 1000;
        const minutes = seconds * 60;
        const hours = minutes * 60;
        const days = hours * 24;
        const years = days * 365;
        const today = new Date();
        const todayYear = today.getFullYear();
        const todayMonth = today.getMonth()+1;
        const todayDate = today.getDate();
        const todayHour = today.getHours();
        const todayMinute = today.getMinutes();
        const todaySecond = today.getSeconds();
        /* Date.UTC() -- 返回date对象距世界标准时间(UTC)1970年1月1日午夜之间的毫秒数(时间戳)
        year - 作为date对象的年份，为4位年份值
        month - 0-11之间的整数，做为date对象的月份
        day - 1-31之间的整数，做为date对象的天数
        hours - 0(午夜24点)-23之间的整数，做为date对象的小时数
        minutes - 0-59之间的整数，做为date对象的分钟数
        seconds - 0-59之间的整数，做为date对象的秒数
        microseconds - 0-999之间的整数，做为date对象的毫秒数 */
        const t1 = Date.UTC(2020,0o4,15,0o0,0o0,0o0); //北京时间2016-12-1 00:00:00
        const t2 = Date.UTC(todayYear,todayMonth,todayDate,todayHour,todayMinute,todaySecond);
        const diff = t2-t1;
        const diffYears = Math.floor(diff/years);
        const diffDays = Math.floor((diff/days)-diffYears*365);
        const diffHours = Math.floor((diff-(diffYears*365+diffDays)*days)/hours);
        const diffMinutes = Math.floor((diff-(diffYears*365+diffDays)*days-diffHours*hours)/minutes);
        const diffSeconds = Math.floor((diff-(diffYears*365+diffDays)*days-diffHours*hours-diffMinutes*minutes)/seconds);
        document.getElementById("siteTime").innerHTML=" 本站自2020年04月15日建站已平稳运行"+diffYears+" 年 "+diffDays+" 天 "+diffHours+" 小时 "+diffMinutes+" 分钟 "+diffSeconds+" 秒";
    }
    siteTime();
</script>