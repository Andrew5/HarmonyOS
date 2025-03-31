// export 暴露
export class DataFormat{
// 定义方法
  dataFormat(value: Date){
    const year = value.getFullYear()
    const month = value.getMonth() + 1
    const date =  value.getDate()

    return `${year}-${month}-${date}`
  }
}
// 暴露一个实例
export default  new DataFormat()

/**
 * 时间格式化工具类
 */
export class DateUtils {
  /**
   * 格式化时间为字符串
   * @param date 时间对象（Date | number | string）
   * @param format 格式模板，默认为 'YYYY-MM-DD HH:mm:ss'
   * @returns 格式化后的时间字符串
   */

  static formatDate(
    date: Date | number | string,
    format: string = 'YYYY-MM-DD HH:mm:ss'
  ): string {
    // 统一转换为 Date 对象
    const parsedDate = DateUtils.parseDate(date);
    if (!parsedDate) return '';

    const year = parsedDate.getFullYear();
    const month = DateUtils.padZero(parsedDate.getMonth() + 1);
    const day = DateUtils.padZero(parsedDate.getDate());
    const hours = DateUtils.padZero(parsedDate.getHours());
    const minutes = DateUtils.padZero(parsedDate.getMinutes());
    const seconds = DateUtils.padZero(parsedDate.getSeconds());

    // 替换格式模板中的占位符
    return format
      .replace('YYYY', year.toString())
      .replace('MM', month)
      .replace('DD', day)
      .replace('HH', hours)
      .replace('mm', minutes)
      .replace('ss', seconds);
  }

  /**
   * 将时间戳或字符串转换为 Date 对象
   * @param input 时间输入（Date | number | string）
   * @returns Date 对象，无效时返回 null
   */
  private static parseDate(input: Date | number | string): Date | null {
    if (input instanceof Date) return input;
    if (typeof input === 'number') return new Date(input);
    if (typeof input === 'string') {
      // 尝试解析字符串（兼容 ISO 格式和时间戳字符串）
      const parsed = new Date(input);
      return isNaN(parsed.getTime()) ? null : parsed;
    }
    return null;
  }

  /**
   * 补零（如 9 -> '09'）
   * @param num 数字
   * @returns 两位数的字符串
   */
  private static padZero(num: number): string {
    return num < 10 ? `0${num}` : num.toString();
  }

  /**
   * 获取当前时间的格式化字符串
   * @param format 格式模板（默认 'YYYY-MM-DD HH:mm:ss'）
   */
  static now(format?: string): string {
    return DateUtils.formatDate(new Date(), format);
  }

  /**
   * 计算时间差（如 "1天前"）
   * @param time 过去的时间（Date | number | string）
   * @returns 相对时间描述（如 "3分钟前"）
   */
  static timeAgo(time: Date | number | string): string {
    const parsedDate = DateUtils.parseDate(time);
    if (!parsedDate) return '';

    const now = new Date();
    const diffInSeconds = Math.floor((now.getTime() - parsedDate.getTime()) / 1000);

    if (diffInSeconds < 60) return `${diffInSeconds}秒前`;
    if (diffInSeconds < 3600) return `${Math.floor(diffInSeconds / 60)}分钟前`;
    if (diffInSeconds < 86400) return `${Math.floor(diffInSeconds / 3600)}小时前`;
    if (diffInSeconds < 2592000) return `${Math.floor(diffInSeconds / 86400)}天前`;
    return DateUtils.formatDate(parsedDate, 'YYYY-MM-DD');
  }
}
/**
 * 获得随机日期
 * */
export function getRandomDateCurrentMonth(){
  let today = new Date()
  const  year = today.getFullYear()
  let mouth = today.getMonth()
  let minDay = 1
  let maxDay = new Date(year,mouth + 1,0).getDate()
  let randomDay = Math.floor(Math.random() * (maxDay - minDay + 1)) + minDay
  return `${year} - ${String(mouth).padStart(2,"0")} - ${String(randomDay).padStart(2,"0")}`
}
/**
 *
 * String(mouth).padStart(2,"0")
 将月份数字转换为字符串
 使用 .padStart(2,"0") 方法确保总是2位数，不足时前面补零
 例如：3 → "03"，11 → "11"


 String(randomDay).padStart(2,"0")
 将随机生成的天数转换为字符串
 同样用 .padStart(2,"0") 补零
 例如：5 → "05"，15 → "15"
 * */