@Entry
@Component
struct Page_stack {
  @State message: string = "Hello";
// 相对定位
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

        Column() {
          Text("box3")
        }
        .width(100)
        .height(100)
        .backgroundColor(Color.Pink)
        .alignRules({
          middle:{ anchor: "__container__", align: HorizontalAlign.Center },
          center:{ anchor: "__container__", align: VerticalAlign.Center }
        })

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