package com.qbank.util;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;


/**
 *
 * 取得标准格式日期和时间
 * */
public class DateUtils{

    /**缺省日期格式*/
    public static final String DEFAULT_DATE_FORMAT = "yyyy-MM-dd";
    
    /**年月日日期格式**/
    public static final String CHINESE_DATE_FORMAT = "yyyy年MM月dd日";
    
    /**订单号格式**/
    public static final String ORDER_NO_FORMAT = "yyyyMMddHHmmss";

    /**缺省时间格式*/
    public static final String DEFAULT_TIME_FORMAT = "HH:mm:ss";

    /**缺省月格式*/
    public static final String DEFAULT_MONTH = "MONTH";

    /**缺省年格式*/
    public static final String DEFAULT_YEAR = "YEAR";

    /**缺省日格式*/
    public static final String DEFAULT_DATE = "DAY";

    /**缺省小时格式*/
    public static final String DEFAULT_HOUR = "HOUR";

    /**缺省分钟格式*/
    public static final String DEFAULT_MINUTE = "MINUTE";

    /**缺省秒格式*/
    public static final String DEFAULT_SECOND = "SECOND";

    /**缺省长日期格式*/
    public static final String DEFAULT_DATETIME_FORMAT = "yyyy-MM-dd HH-mm";

    /**缺省长日期格式,精确到秒*/
    public static final String DEFAULT_DATETIME_FORMAT_SEC = "yyyy-MM-dd HH:mm:ss";

    /**星期数组*/
    public static final String[] WEEKS = {"星期日", "星期一", "星期二", "星期三", "星期四",
        "星期五", "星期六"};

    /**
     * 取当前日期的字符串表示
     * @return 当前日期的字符串 ,如2010-05-28
     **/
    public static String today()
    {
        return today(DEFAULT_DATE_FORMAT);
    }

    /**
     * 根据输入的格式得到当前日期的字符串
     * @param strFormat 日期格式
     * @return
     */
    public static String today(String strFormat)
    {
        return toString(new Date(), strFormat);
    }

    /**
     * 取当前时间的字符串表示,
     * @return 当前时间,如:21:10:12
     **/
    public static String currentTime()
    {
        return currentTime(DEFAULT_TIME_FORMAT);
    }

    /**
     * 根据输入的格式获取时间的字符串表示
     * @param 输出格式,如'hh:mm:ss'
     * @return 当前时间,如:21:10:12
     **/

    public static String currentTime(String strFormat)
    {
        return toString(new Date(), strFormat);
    }

    /**
     * 取得相对于当前时间增加天数/月数/年数后的日期
     * <br>
     * 欲取得当前日期5天前的日期,可做如下调用:<br>
     *        getAddDay("DATE", -5).
     * @param field,段,如"year","month","date",对大小写不敏感
     * @param amount,增加的数量(减少用负数表示),如5,-1
     * @return    格式化后的字符串 如"2010-05-28"
     * @throws ParseException 
     **/

    public static String getAddDay(String field, int amount)
        throws ParseException
    {
        return getAddDay(field, amount, null);
    }

    /**
     * 取得相对于当前时间增加天数/月数/年数后的日期,按指定格式输出
     *
     * 欲取得当前日期5天前的日期,可做如下调用:<br>
     *        getAddDay("DATE", -5,'yyyy-mm-dd hh:mm').
     * @param field,段,如"year","month","date",对大小写不敏感
     * @param amount,增加的数量(减少用负数表示),如5,-1
     * @param strFormat,输出格式,如"yyyy-mm-dd","yyyy-mm-dd hh:mm"
     * @return 格式化后的字符串 如"2010-05-28"
     * @throws ParseException 
     **/
    public static String getAddDay(String field, int amount, String strFormat)
        throws ParseException
    {
        return getAddDay(null, field, amount, strFormat);
    }

    /**
     * 功能：对于给定的时间增加天数/月数/年数后的日期,按指定格式输出
     * 
     * @param date String 要改变的日期
     * @param field int 日期改变的字段，YEAR,MONTH,DAY
     * @param amount int 改变量
     * @param strFormat 日期返回格式
     * @return 
     * @throws ParseException
     */
    public static String getAddDay(String date, String field, int amount,
                                   String strFormat)
        throws ParseException
    {
        if (strFormat == null)
        {
            strFormat = DEFAULT_DATETIME_FORMAT_SEC;
        }
        Calendar rightNow = Calendar.getInstance();
        if (date != null && !"".equals(date.trim()))
        {
            rightNow.setTime(parseDate(date, strFormat));
        }
        if (field == null)
        {
            return toString(rightNow.getTime(), strFormat);
        }
        rightNow.add(getInterval(field), amount);
        return toString(rightNow.getTime(), strFormat);
    }

    /**
     * 获取时间间隔类型
     * @param field 时间间隔类型
     * @return 日历的时间间隔
     */
    protected static int getInterval(String field)
    {
        String tmpField = field.toUpperCase();
        if (tmpField.equals(DEFAULT_YEAR))
        {
            return Calendar.YEAR;
        }
        else if (tmpField.equals(DEFAULT_MONTH))
        {
            return Calendar.MONTH;
        }
        else if (tmpField.equals(DEFAULT_DATE))
        {
            return Calendar.DATE;
        }
        else if (DEFAULT_HOUR.equals(tmpField))
        {
            return Calendar.HOUR;
        }
        else if (DEFAULT_MINUTE.equals(tmpField))
        {
            return Calendar.MINUTE;
        }
        else
        {
            return Calendar.SECOND;
        }
    }

    /**
     * 获取格式化对象
     * @param strFormat 格式化的格式 如"yyyy-MM-dd"
     * @return 格式化对象
     */
    public static SimpleDateFormat getSimpleDateFormat(String strFormat)
    {
        if (strFormat != null && !"".equals(strFormat.trim()))
        {
            return new SimpleDateFormat(strFormat);
        }
        else
        {
            return new SimpleDateFormat();
        }
    }

    /**
     * 得到当前日期的星期数
     * @return 当前日期的星期的字符串
     * @throws ParseException
     */
    public static String getWeekOfMonth()
        throws ParseException
    {
        return getWeekOfMonth(null, null);
    }

    /**
     * 根据日期的到给定日期的在当月中的星期数
     * @param date 给定日期
     * @return
     * @throws ParseException
     */
    public static String getWeekOfMonth(String date, String fromat)
        throws ParseException
    {
        Calendar rightNow = Calendar.getInstance();
        if (date != null && !"".equals(date.trim()))
        {
            rightNow.setTime(parseDate(date, fromat));
        }
        return WEEKS[rightNow.get(Calendar.WEEK_OF_MONTH)];
    }

    /**
     * 将java.util.date型按照指定格式转为字符串
     * @param date  源对象
     * @param format 想得到的格式字符串
     * @return 如：2010-05-28
     */
    public static String toString(Date date, String format)
    {
        return getSimpleDateFormat(format).format(date);
    }

    /**
     * 将java.util.date型按照缺省格式转为字符串
     * @param date 源对象
     * @return 如：2010-05-28
     */
    public static String toString(Date date)
    {
        return toString(date, DEFAULT_DATE_FORMAT);
    }

    /**
     * 强制类型转换 从串到日期
     * @param sDate  源字符串，采用yyyy-MM-dd格式
     * @param sFormat ps
     * @return 得到的日期对象
     * @throws ParseException
     */
    public static Date parseDate(String strDate, String format)
        throws ParseException
    {
        return getSimpleDateFormat(format).parse(strDate);
    }

    /***
     * 根据传入的毫秒数和格式，对日期进行格式化输出
     * @version 2011-7-12
     * @param object 
     * @param format
     * @return
     */
    public static String millisecondFormat(Long millisecond, String format)
    {
        if (millisecond == null || millisecond <= 0)
        {
            throw new IllegalArgumentException(String.format("传入的时间毫秒数[%s]不合法",
                "" + millisecond));
        }
        if (format == null || "".equals(format.trim()))
        {
            format = DEFAULT_DATE_FORMAT;
        }
        return toString(new Date(millisecond), format);
    }

    /**
     * 强制类型转换 从串到时间戳
     * @param sDate 源串
     * @param sFormat 遵循格式
     * @return 取得的时间戳对象
     * @throws ParseException
     */
    public static Timestamp parseTimestamp(String strDate, String format)
        throws ParseException
    {
        Date utildate = getSimpleDateFormat(format).parse(strDate);
        return new Timestamp(utildate.getTime());
    }

    /**
     * getCurDate 取当前日期
     * @return java.util.Date型日期
     **/
    public static Date getCurDate()
    {
        return (new Date());
    }

    /**
     * getCurTimestamp 取当前时间戳
     * @return java.sql.Timestamp
     **/
    public static Timestamp getCurTimestamp()
    {
        return new Timestamp(new Date().getTime());
    }

    /**
     * getCurTimestamp 取遵循格式的当前时间
     * @param sFormat 遵循格式
     * @return java.sql.Timestamp
     **/
    public static Date getCurDate(String format)
        throws Exception
    {
        return getSimpleDateFormat(format).parse(toString(new Date(), format));
    }

    /**
     * Timestamp按照指定格式转为字符串
     * @param timestamp 源对象
     * @param format ps（如yyyy.mm.dd）
     * @return 如：2010-05-28 或2010-05-281 13:21
     */
    public static String toString(Timestamp timestamp, String format)
    {
        if (timestamp == null)
        {
            return "";
        }
        return toString(new Date(timestamp.getTime()), format);
    }

    /**
     * Timestamp按照缺省格式转为字符串
     * @param ts 源对象
     * @return 如：2010-05-28
     */
    public static String toString(Timestamp ts)
    {
        return toString(ts, DEFAULT_DATE_FORMAT);
    }

    /**
     * Timestamp按照缺省格式转为字符串，可指定是否使用长格式
     * @param timestamp 欲转化之变量Timestamp
     * @param fullFormat 是否使用长格式
     * @return 如：2010-05-28 或2010-05-28 21:21
     */
    public static String toString(Timestamp timestamp, boolean fullFormat)
    {
        if (fullFormat)
        {
            return toString(timestamp, DEFAULT_DATETIME_FORMAT_SEC);
        }
        else
        {
            return toString(timestamp, DEFAULT_DATE_FORMAT);
        }
    }

    /**
     * 将sqldate型按照指定格式转为字符串
     * @param sqldate 源对象
     * @param sFormat ps
     * @return 如：2010-05-28 或2010-05-28 00:00
     */
    public static String toString(java.sql.Date sqldate, String sFormat)
    {
        if (sqldate == null)
        {
            return "";
        }
        return toString(new Date(sqldate.getTime()), sFormat);
    }

    /**
     * 将sqldate型按照缺省格式转为字符串
     * @param sqldate 源对象
     * @return 如：2010-05-28
     */
    public static String toString(java.sql.Date sqldate)
    {
        return toString(sqldate, DEFAULT_DATE_FORMAT);
    }

    /**
     * 计算日期时间之间的差值， date1得时间必须大于date2的时间
     * @version 2011-7-12
     * @param date1 
     * @param date2
     * @return {@link java.util.Map} Map的键分别为, day(天), hour(小时),minute(分钟)和second(秒)。
     */
    public static Map<String, Long> timeDifference(final Date date1,
                                                   final Date date2)
    {
        if (date1 == null || date2 == null)
        {
            throw new NullPointerException("date1 and date2 can't null");
        }
        long mim1 = date1.getTime();
        long mim2 = date2.getTime();
        if (mim1 < mim2)
        {
            throw new IllegalArgumentException(String.format(
                "date1[%s] not be less than date2[%s].", mim1 + "", mim2 + ""));
        }
        long m = (mim1 - mim2 + 1) / 1000l;
        long mday = 24 * 3600;
        final Map<String, Long> map = new HashMap<String, Long>();
        map.put("day", m / mday);
        m = m % mday;
        map.put("hour", (m) / 3600);
        map.put("minute", (m % 3600) / 60);
        map.put("second", (m % 3600 % 60));
        return map;
    }
    
    
    /**
     * 计算日期时间之间相差天数， date1得时间必须大于date2的时间
     * @version 2011-7-12
     * @param date1 
     * @param date2
     * @return integer 天数
     */
    public static Integer timeDValue(final Date date1,final Date date2){
    	long buyTime, nowTime, surplusTime;
		  buyTime = date2.getTime();
		  nowTime = date1.getTime();
		  surplusTime = Math.abs((nowTime-buyTime)/1000/60/60/24);
    	return (int)surplusTime;
    }

    public static Map<String, Integer> compareTo(final Date date1,
                                                 final Date date2)
    {
        if (date1 == null || date2 == null)
        {
            return null;
        }
        long time1 = date1.getTime();
        long time2 = date2.getTime();
        long time = Math.max(time1, time2) - Math.min(time1, time2);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(time);
        Map<String, Integer> map = new HashMap<String, Integer>();
        map.put(
            "year",
            (calendar.get(Calendar.YEAR) - 1970) > 0 ? (calendar.get(Calendar.YEAR) - 1970) : 0);
        map.put(
            "month",
            (calendar.get(Calendar.MONTH) - 1) > 0 ? (calendar.get(Calendar.MONTH) - 1) : 0);
        map.put(
            "day",
            (calendar.get(Calendar.DAY_OF_MONTH) - 1) > 0 ? (calendar.get(Calendar.DAY_OF_MONTH) - 1) : 0);
        map.put(
            "hour",
            (calendar.get(Calendar.HOUR_OF_DAY) - 8) > 0 ? (calendar.get(Calendar.HOUR_OF_DAY) - 8) : 0);
        map.put(
            "minute",
            calendar.get(Calendar.MINUTE) > 0 ? calendar.get(Calendar.MINUTE) : 0);
        map.put(
            "second",
            calendar.get(Calendar.SECOND) > 0 ? calendar.get(Calendar.SECOND) : 0);
        return map;
    }

    public static String getDayOfWeekCn(String dateStr)
    {
        Calendar cal = Calendar.getInstance();
        String weekCn = null;
        Timestamp time = getTimeOfDateStr(dateStr);
        if (time != null)
        {
            cal.setTime(time);
            int day = cal.get(Calendar.DAY_OF_WEEK);
            switch (day)
            {
                case 1:
                    weekCn = "7";
                    break;
                case 2:
                    weekCn = "1";
                    break;
                case 3:
                    weekCn = "2";
                    break;
                case 4:
                    weekCn = "3";
                    break;
                case 5:
                    weekCn = "4";
                    break;
                case 6:
                    weekCn = "5";
                    break;
                case 7:
                    weekCn = "6";
                    break;
                default:
                    weekCn = "";
                    break;
            }
        }
        return weekCn;
    }

    /**
     * 把yyyy-MM-dd格式的字符串转换成Timestamp
     * 
     * @param dateStr
     * @return Timestamp
     */
    @SuppressWarnings("finally")
    public static Timestamp getTimeOfDateStr(String dateStr)
    {
        DateFormat df = new java.text.SimpleDateFormat("yyyy-MM-dd");
        java.sql.Timestamp time = null;
        try
        {
            java.util.Date da = df.parse(dateStr);
            time = new java.sql.Timestamp(da.getTime());
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally
        {
            return time;
        }
    }

    /**
     * @method: getMonday
     * @description: 指定日期所在星期的星期一
     * @param date
     * @return    参数
     * @return Date    返回类型
     * @throws
     */
    public static Date getMonday(Date date)
    {

        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        // 关于DAY_OF_WEEK的说明
        // Field number for get and set indicating
        // the day of the week. This field takes values
        // SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY,
        // and SATURDAY
        cal.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);
        return cal.getTime();
    }

    /**
     * 
     * @method: getCurrentMonth
     * @description: 获取当前日期的月份值
     * @return
     * @throws Exception    参数
     * @return int    返回类型
     * @throws
     */
    public static int getCurrentMonth() throws Exception
    {
        Calendar cld = Calendar.getInstance();
        int currentMonth = cld.get(Calendar.MONTH);
        return currentMonth + 1;
    }

    /**
     * @method: getCurrentDay
     * @description: 当前日期所在月份天的数值
     * 	如：2015-05-18 返回18
     * @return
     * @throws Exception    参数
     * @return int    返回类型
     * @throws
     */
    public static int getCurrentDay()
        throws Exception
    {
        Calendar cld = Calendar.getInstance();
        int currentMonth = cld.get(Calendar.DATE);
        return currentMonth;
    }

    /**
     * 根据秒值，算出通话时长
     * @param timeLan
     * @return String
     */
    public static String getCallTimeByMinTime(String timeLan)
    {
        if (timeLan == null || "".equals(timeLan)
            || "null".equals(timeLan.trim()))
        {
            timeLan = "00:00:00";
        }
        else
        {
            timeLan = timeLan.substring(0, timeLan.indexOf("."));
            String hour = Integer.parseInt(timeLan) / 3600 + "";
            String min = Integer.parseInt(timeLan) / 60 + "";
            String sec = Integer.parseInt(timeLan) % 60 + "";
            hour = hour.equals("0") ? "00" : hour;
            hour = hour.length() == 0 ? "0" + hour : hour.length() == 1 ? "0"
                                                                          + hour : hour;
            min = min.equals("0") ? "00" : min;
            min = min.length() == 0 ? "00" + min : min.length() == 1 ? "0"
                                                                       + min : min;
            sec = sec.equals("0") ? "00" : sec;//如果秒数为0，补齐两个0
            sec = sec.length() == 0 ? "0" + sec : sec.length() == 1 ? "0" + sec : sec;//如果秒数，只有一位，补0
            timeLan = hour + ":" + min + ":" + sec;
        }
        return timeLan;
    }
    
    /**
     * @method: getcurrentTimeMillis
     * @description: 用一句话描述这个方法的作用
     * @return    参数
     * @return Date    返回类型
     * @throws ParseException 
     */
    public static Timestamp getaddedTime(Date date) throws ParseException{
    	Calendar cal = Calendar.getInstance();
    	cal.setTime(date);
    	cal.add(Calendar.MINUTE, 60);
    	cal.getTime();
    	return parseTimestamp(toString(cal.getTime(), DEFAULT_DATETIME_FORMAT_SEC), DEFAULT_DATETIME_FORMAT_SEC);
    }
    
    /**
     * @throws ParseException 
     * @method: getNextDay
     * @description: 获得指定时间的后一天
     * @return    参数
     * @return Date    返回类型
     * @throws
     */
    public static Date getNextDay(Date date , int n) {  
        Calendar calendar = Calendar.getInstance();  
        calendar.setTime(date);  
        calendar.add(Calendar.DAY_OF_MONTH, n);  
        date = calendar.getTime();  
        return date;  
    } 
    
    /**
     * @method: getNextDay
     * @description: 获得指定时间的后N年的时间
     * @return    参数
     * @return Date    返回类型
     * @throws
     */
    public static Date getNextYear(Date date, int n) {  
        Calendar calendar = Calendar.getInstance();  
        calendar.setTime(date);  
        calendar.add(Calendar.YEAR, +n);  
        date = calendar.getTime();  
        return date;  
    } 
    
    /**
     * @method: getNextDay
     * @description: 获得指定时间的后N秒的时间
     * @return    参数
     * @return Date    返回类型
     * @throws
     */
    public static Date getNextSecs(Date date, int n) {  
        Calendar calendar = Calendar.getInstance();  
        calendar.setTime(date);  
        calendar.add(Calendar.SECOND, +n);  
        date = calendar.getTime();  
        return date;  
    } 
    
    /** 
     * 计算两个日期之间相差的天数 
     * @param date1 
     * @param date2 
     * @return 
     */  
    public static int daysBetween(Date date1,Date date2)  
    {  
        Calendar cal = Calendar.getInstance();  
        cal.setTime(date1);  
        long time1 = cal.getTimeInMillis();               
        cal.setTime(date2);  
        long time2 = cal.getTimeInMillis();       
        long between_days=(time2-time1)/(1000*3600*24);  
        return Integer.parseInt(String.valueOf(between_days));         
    } 
    
    /**
     * 
     * @method: getDaysOfTheMonth
     * @description: 指定月份共多少天 
     * @param date
     * @return    参数
     * @return int    返回类型
     * @throws
     */
    public static int getDaysOfTheMonth(Date date){//获取当月天数
		Calendar rightNow = Calendar.getInstance();
        rightNow.setTime(date); // 要计算你想要的月份，改变这里即可
		int days = rightNow.getActualMaximum(Calendar.DAY_OF_MONTH);
		return days;
	}
    
    public static void main(String[] args) throws Exception {
		System.out.println(getCurrentDay());
	}
    
}
