@Entry
@Component
struct Page_Login {
  build() {
    // 组件间的距离
    Column({space: 10}) {//纵向排列
      Image($r('app.media.huawei_logo'))
        .width(50)
      TextInput({
        placeholder:"请输入用户名"
      })
      TextInput({
        placeholder:"请输入密码"
      }).type(InputType.Password)

      Button("登录").onClick((event: ClickEvent) => {

      })
        .width(200)

      Row({space: 10}){// 横着排列
        Text('前往注册')
        Text('忘记密码')
          .margin({
            left:20
          })
      }

      Text('小龙女')
        .backgroundColor(Color.Pink)
        .padding({
          left: 20,
          right: 20,
          top: 5,
          bottom: 5,
        })
        .height(30)
        .borderRadius({
          topLeft:20,
          topRight:5,
          bottomLeft:5,
          bottomRight:20
        })


      Column() {

        Text('测试1')
          .width(200)
          .height(50)
          .backgroundColor(Color.Red)
          .backgroundImage($r('app.media.startIcon'))
          .backgroundImageSize({ width: 50, height: 50 })// .backgroundImagePosition({ x: 10, y: 0 })
          .backgroundImagePosition(Alignment.Start)
          .padding({
            left: 60,
            top: 10
            // right:0
          }) // 文字右移

        // Fill 不保持宽高比例进行放大缩小，图片会变形 完全填充满
        // Cover 图片不拉伸 不变形 ：等比例缩放背景图至图片完全覆盖组件范围
        // Contain 等比例缩放背景图，当宽或高与组件尺寸相同停止缩放
        // .backgroundImageSize(ImageSize.Cover)
        // .backgroundImagePosition(Alignment.Center)

        Text('测试2')
          .width(200)
          .height(50)
          .backgroundColor(Color.Pink)
          .margin({
            top:10,
            bottom:10
          })

        Text('测试3')
          .width(200)
          .height(50)
          .backgroundColor(Color.Grey)
      }
      .width('100%')
      .height(200)
      .backgroundColor(Color.Orange)
      .justifyContent(FlexAlign.SpaceEvenly)
      // 设置排布主方向的对齐方式（主轴）
      // justifyConteny（枚举FLexALign） ctrL+p cmd+p
      // 1.Start （排布主方向）主轴起始位置对齐
      // 2.Center 主轴居中对齐
      // 3.End 主轴结束位置对齐
      // 4.SpaceBetween 贴边显示，中间的元素均匀分布间隙
      // 5.SpaceAround 间隙环绕 0.5 1 1 1 0.5 的间隙分布，靠边只有一半的间隙
      // 6.SpaceEvenLy 间隙均匀环绕，靠边也是完整的一份间隙

    }
    .width('100%')
    // .height('100%')
    .padding(20)
  }
}