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