@Entry
@Component
struct Page_stack{
  @State message: string = "Hello";

  build() {
    Column()
    {
      Stack({alignContent:Alignment.BottomStart}){
        Column(){

        }
        .width(300)
        .height(300)
        .backgroundColor(Color.Red)

        Column(){

        }
        .width(200)
        .height(200)
        .backgroundColor(Color.Orange)

        Column(){

        }
        .width(100)
        .height(100)
        .backgroundColor(Color.Pink)
      }
    }
    .height("100%")
    .width("100%")
    .backgroundColor(Color.Brown)

  }

}