@Component
export struct TaskItem {
  build() {
    Column({ space: 10 }){
      Column({ space: 10 }) {
        Row({ space: 20 }) {
          Text("完成第一阶段")
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
            .fontColor(Color.Black)
        }

        Text(`9:00-12:00`)
          .fontSize(14)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.Black)

        Row() {
          Text("生活")
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
      Column({ space: 10 }) {
        Row({ space: 20 }) {
          Text("完成第一阶段")
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
            .fontColor(Color.Black)
        }

        Text(`9:00-12:00`)
          .fontSize(14)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.Black)

        Row() {
          Text("生活")
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
      Column({ space: 10 }) {
        Row({ space: 20 }) {
          Text("完成第一阶段")
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
            .fontColor(Color.Black)
        }

        Text(`9:00-12:00`)
          .fontSize(14)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.Black)

        Row() {
          Text("生活")
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
    }
  }
}

