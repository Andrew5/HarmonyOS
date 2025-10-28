import { TaskModel } from "../viewModel/TaskModel"
import { DateUtils } from "../utils/DataFormat"
import json from "@ohos.util.json";
import { JSON } from "@kit.ArkTS";
import { it } from "@ohos/hypium";
import { router } from "@kit.ArkUI";

// import  CreateTaskModel, {TaskModel}  from  '../viewModel/TaskModel';
@Component
export struct TaskItem {

  @Prop tasks:Array<TaskModel>

  computedTodaotask(){
    const today: string = DateUtils.formatDate(new Date().getTime(), "YYYY-MM-DD");
    //筛选
    const result = this.tasks.filter((item:TaskModel)=>item.taskTime === today)
    console.log(`${JSON.stringify(result)}`)
    return result
  }
  build() {
    Column({ space: 10 }){
      /**
       * ForEach
       在鸿蒙开发中如果要涉及循环渲染数据可以使用两种方案：
       1.ForEach的方式来实现：直接封装了循环的语法，接受数组来进行动态遍历
       2.LazyForEach来实现：循环懒加载数据，可以实现大数据量的情况下，实现性能优化。
       ForEach这个接口需要传递三个参数
       ForEach (this.tasks, (item: TaskModel, index: number) =>), (item: TaskModel) =>item.id)
       第一个参数：必须提供一个数组。
       第二个参数：循环体，接受遍历得到对象，index下标
       第三个参数：可选项，用于指定一个字段为循环的key
       * */
      ForEach(this.tasks,(item:TaskModel,index:number)=>{
        Column({ space: 10 }) {
          Row({ space: 20 }) {
            Text(`${item.taskName}状态为:${item.taskStatus}`)
              .fontSize(14)
              .fontWeight(FontWeight.Bold)
              .fontColor(Color.Black)
          }

          Text(`${item.taskBeginDate}-${item.taskEndDate}`)
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
            .fontColor(Color.Black)

          Row() {
            Text(`${item.taskType == 1 ? "生活" : "工作"}`)
              .fontSize(14)
              .fontWeight(FontWeight.Bold)
              .fontColor(Color.White)
          }
          .width(40)
          .height(30)
          .backgroundColor(Color.Red)
          .justifyContent(FlexAlign.Center)
          .borderRadius(20)
        }
        .width("100%")
        .height(120)
        .backgroundColor(Color.Pink)
        .borderRadius(10)
        .padding({ left: 10, top: 10 })
        .alignItems(HorizontalAlign.Start)
        .onClick(()=>{
          router.pushUrl({
            url:"pages/Page08_Detail",
            params: {value:item}
          })
        })
      },(item:TaskModel)=>item.id)
    }
  }
}

