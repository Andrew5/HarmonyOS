import { TaskStatisties } from '../view/TaskStatisties'
import { TaskItem } from '../view/TaskItem'

@Entry
@Component
struct Page02_TaskList {
  build() {
    // 以弹性布局为基础来理解Column:主轴：垂直方向  侧轴：水平
    Column() {
      Text("你好 晴天")
        .fontSize(FontWeight.Bold)
        .fontWeight(FontWeight.Bold)
        .fontColor("#fc010113")
      // .margin({left: 10, top:10,right:20,bottom:10})
      Text("让每天的工作效率提高")
        .fontColor(Color.Brown)
        .fontSize(14)
        .margin({ top: 14 })

      Column() {
        Button().onClick((event: ClickEvent) => {
          console.log("输出")
        })
          .width(40)
          .height(40)
          .borderRadius(20)
      }

      Scroll() {
        Column() {
          Text("我的计划")
            .fontColor(Color.Brown)
            .fontSize(26)
            .margin({ top: 30})

          TaskStatisties()
          // 第三个模块
          Column({ space: 10 }) {
            Row() {
              Text("今日任务")
                .fontSize(26)
                .fontWeight(FontWeight.Bold)
                .fontColor(Color.Orange)
              Text("查看更多")
                .fontSize(14)
                .fontWeight(FontWeight.Bold)
                .fontColor(Color.Black)
            }
            .justifyContent(FlexAlign.SpaceBetween)
            .alignItems(VerticalAlign.Bottom)
            .border({
              width: 1,
              color: Color.Black
            })
            .width("100%")

            // task list
            TaskItem()
          }
          .width("100%")
          .margin({ top: 20 ,bottom:40})
        }
        .alignItems(HorizontalAlign.Start)
      }
      .scrollable(ScrollDirection.Vertical)
      .scrollBar(BarState.Off)





      // Column() {
      //   Text("你好 小王")
      //     .fontSize(30)
      //     .fontWeight(FontWeight.Bold)
      //     .fontColor("#1235E")
      //   Text("测试代码")
      //
      //   // Row()
      //   //   .width("100vp")
      //   //   .height("100vp")
      //   //   .backgroundColor("red")
      //   // Row()
      //   //   .width("100lpx")
      //   //   .height("100lpx")
      //   //   .backgroundColor("black")
      //   // Row()
      //   //   .width(px2vp(100))
      //   //   .height("300px")
      //   //   .backgroundColor("blue")
      //   // Row()
      //   //   .width(vp2px(100) + "px")
      //   //   .height("300px")
      //   //   .backgroundColor("black")
      // }
      // .width("100%")
      // .height("100%")
      // .backgroundColor(Color.Grey)
      // .justifyContent(FlexAlign.SpaceBetween)//设置主轴方向文本
      // .alignItems(HorizontalAlign.Start)

      // Row() {
      //   Text("Row")
      // }
      // .width("100%")
      // .height("50%")
      // .backgroundColor(Color.Black)
      // .alignItems(VerticalAlign.Top)
      // .justifyContent(FlexAlign.SpaceBetween)
    }
    .width("100%")
    .height("100%")
    .backgroundColor("#ffee7206")
    .alignItems(HorizontalAlign.Start)
    .padding({
      left: 10,
      top: 10,
      right: 10,
      bottom: 10
    })
  }
}