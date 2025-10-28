@Entry
@Component
struct Page_Navigation {
  build() {
    Column() {
      Row(){
        Image(($r('app.media.back_icon')))
          .width(30)
        Text('个人中心')
        Image($r('app.media.startIcon'))
          .width(24)
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .width('100%')
      .height(40)
      .padding({left: 10,right:10})
      .backgroundColor(Color.White)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
  }
}