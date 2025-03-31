import { UserModel } from '../viewModel/UserModel';
import { DateUtils, getRandomDateCurrentMonth } from  '../utils/DataFormat';
import  CreateTaskModel, {TaskModel}  from  '../viewModel/TaskModel';
import { data } from '@kit.TelephonyKit';
import {Children} from '../view/Children'
interface IUser{
  id: number,
  name:string
}

@Entry
@Component
struct Page07_State {

  @State message: string = `Hello`;
// 简单数据构造
  @State myUser:IUser = {id:1,name:"123"}

  // // 方法一
  // @State user:UserModel = {id:1,name:"xiaoxia"}
  // // 方法二
  @State user: UserModel = new UserModel(1, "xiaofeifie"); // ✅ 正确方式

  @State currentTime: string = DateUtils.formatDate(new Date());
  @State timestampTime: string = DateUtils.formatDate(1699999999999);
  @State isoTime: string = DateUtils.formatDate("2023-11-15T10:00:00Z");

  @State timestampTime1: string = DateUtils.formatDate(new Date(),"YYYY-MM-DD");

  private today:Date = new Date()

  @State tasks:Array<TaskModel> = []

  // 组件加载完毕
  aboutToAppear(): void {
    const array = CreateTaskModel.initData()
    // console.log(JSON.stringify(array))
    this.tasks = array

    // const result = getRandomDateCurrentMonth()
    // this.message = result
  }
// 亿鑫会硕

  build() {
    Column() {
      // 在UI中引用状态变量
      Text(this.currentTime)
        .fontSize(20)
      // Unix 时间戳（毫秒） 后端返回的毫秒数
      Text(this.timestampTime)
        .fontSize(20)
        .margin({ top: 10 })
      // ISO 8601 字符串（带 Z） 国际化的时间交换格式
      Text(this.isoTime)
        .fontSize(20)
        .margin({ top: 10 })

      // ISO 8601 字符串（带 Z） 国际化的时间交换格式
      Text(`测试时间 ${this.timestampTime1}`)
        .fontSize(20)
        .margin({ top: 10 })

      // Children({user:$user})
      Children({ titleSub: "测试单向传递", user: $user }) // 传递 @State user

      // Children({ titleSub: this.message })

      // 刷新按钮
      Button('刷新时间')
        .onClick(() => {
          this.currentTime = DateUtils.formatDate(new Date());
        })
    }
    .width('100%')
    .height('100%')
  }
}