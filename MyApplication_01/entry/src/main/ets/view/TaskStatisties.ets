import { TaskModel } from "../viewModel/TaskModel"

@Component
export struct TaskStatisties{
  // 只要父组件中传递子组件传递的数据过去。字段和子组件同名。默认会覆盖子组件的数据。
  // 子组件基本变量，能接受数据，但是无法实现修改页面更新
  // 单向@Prop 默认是父组件传递过来的 无需初始化 只能在@Component使用 不能再@Entry组件中使用
  //
  // private  title:string = "title"
  @Prop title:string

  @Prop tasks:Array<TaskModel>

  computedStatusCount(status:string){
    const count = this.tasks.reduce((sum:number,item:TaskModel) =>{
      if (item.taskStatus === status)
      {
        sum+=1
      }
      return sum
    },0)
    return count
  }

  build() {
    Row() {
      // 存放已完成的任务
      Column({space: 10}) {
        Text(`${this.title}`)
        Column({space: 10}) {
          Text("已完成")
            .margin({left:15})
            .fontColor(Color.Black)
            .fontSize(18)
          Text(`${this.computedStatusCount("done")}任务`)
            .margin({left:15})
            .fontColor(Color.Black)
            .fontSize(18)
        }
        .height(164)
        .width(168)
        .borderRadius(18)
        .backgroundColor(Color.Orange)
        // .alignItems(HorizontalAlign.Start)
        // 存放等待中
        Column({space: 10}) {
          Text("等待中")
            .margin({left:15})
            .fontColor(Color.Black)
            .fontSize(18)
          Text(`${this.computedStatusCount("doing")}任务`)
            .margin({left:15})
            .fontColor(Color.Black)
            .fontSize(18)
        }
        .width(168)
        .height(128)
        .backgroundColor(Color.Red)
        // .alignItems(HorizontalAlign.Start)
        // .padding({left:20,top:20})
        .borderRadius(18)
      }
      .width("100%")
      .height(302)
      .backgroundColor(Color.Green)

      Column() {

      }
      .width("100%")
      .height("100%")
      .backgroundColor(Color.Blue)
    }
    .width("50%")
    .height(300)
    .backgroundColor(Color.Green)
  }
}