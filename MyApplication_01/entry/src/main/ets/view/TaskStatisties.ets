@Component
export struct TaskStatisties{
  build() {
    Row() {
      // 存放已完成的任务
      Column({space: 10}) {
        Column({space: 10}) {
          Text("已完成")
            .margin({left:15})
            .fontColor(Color.Black)
            .fontSize(18)
          Text("0任务")
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
          Text("0任务")
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