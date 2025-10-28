@Entry
@Component
struct Page_QQLogin {
  build() {
    Column() {
  Image($r('app.media.huawei_logo'))
    .width(100)
    .border({
      width:{
        left:1,right:2
      },
      color:{
        left:Color.Red,right:Color.Blue
      },
      style:{
        left: BorderStyle.Dashed,
        right:BorderStyle.Solid
      }
    })
      Text('请选择登录方式')
        .fontWeight(700)
        // 上下间距设置
        .margin({
          top:10,
          bottom:40
        })
        .border({
          width:1, // 宽必须设置
          color:'#fff50404',
          style:BorderStyle.Dotted // 样式
        })
      Button('QQ登录')
        .width('100%')
        .margin({
          bottom:10
        })
        // 单边框
        .border({
          width:{
            left:1
          }
        })
      Button('微信登录')
        .width('100%')
        .backgroundColor('#ddd')
        .fontColor('#000')
      Button('鸿蒙账号登录')
        .width('100%')
        .backgroundColor('#ddd')
        .fontColor('#000')
        .margin({
          top:10,
          bottom:10
        })
      /*
       *  https://github.com/Git-Lonnie/iOS-NetworkTool
          https://github.com/Git-Lonnie/iOS-ConstraintTool
          https://github.com/Git-Lonnie/iOS-AdaptationTool
       * */
    }
    .width('100%')
    // 整体增加间距
    .padding(20)
  }
}