@Entry
@Component
struct Page_stack {
  @State message: string = "Hello";
// 相对定位
  // middle 竖直中心位置 垂直方向（纵向居中） 垂直（Vertical）    Row
  // center 水平方向（横向居中）            水平（Horizontal）  Column
  build() {
    //
    Column() {
      RelativeContainer() {
        Column() {
          Text("box1")
            .fontColor(Color.Black)
        }
        .width(100)
        .height(100)
        .backgroundColor(Color.Red)
        .id("row1")

        Column() {
          Text("box2")
        }
        .width(100)
        .height(100)
        .backgroundColor(Color.Orange)
        .alignRules({
          right: { anchor: "__container__", align: HorizontalAlign.End },
          // middle: { anchor: "__container__", align: HorizontalAlign.Center },
          // left: { anchor: "__container__", align: HorizontalAlign.Center },
          // bottom:{anchor:"__container__", align: VerticalAlign.Center}
          // center: { anchor: "__container__", align: VerticalAlign.Center }
          top:{anchor:"__container__", align: VerticalAlign.Top}
        })
        .id("row2")

        Column() {
          Text("box3")
        }
        .width(100)
        .height(100)
        .backgroundColor(Color.Pink)
        .alignRules({
          // left:{ anchor: "row1", align: HorizontalAlign.End },
          // top:{anchor:"row1",align:VerticalAlign.Bottom}

          // middle:{ anchor: "__container__", align: HorizontalAlign.Center },
          // center:{ anchor: "__container__", align: VerticalAlign.Center }
          right:{anchor:"row2",align:HorizontalAlign.Start},
          top:{anchor:"row2",align:VerticalAlign.Bottom}
        })
        .id("row3")

        Column() {
          Text("box4")
        }
        .width(100)
        .height(100)
        .backgroundColor(Color.Pink)
        .alignRules({
          left:{ anchor: "__container__", align: HorizontalAlign.Start },
          bottom:{ anchor: "__container__", align: VerticalAlign.Bottom }
        })
        .id("row4")

        Column() {
          Text("box5")
        }
        .width(100)
        .height(100)
        .backgroundColor(Color.Pink)
        .alignRules({
          right:{ anchor: "__container__", align: HorizontalAlign.End },
          bottom:{ anchor: "__container__", align: VerticalAlign.Bottom }
        })
        .id("row5")
      }
      .height(300)
      .width(300)
      .border({
        width: 1,
        color: Color.Red
      })
    }
    .height("100%")
    .width("100%")
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
  }
}