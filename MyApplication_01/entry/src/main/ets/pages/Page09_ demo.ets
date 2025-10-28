@Entry
@Component
struct Page09_demo {
  @State message: string = '鸿蒙学习';
  build() {
    // 先排版 再内容
    /*
     * 主要布局容器
        Column: 垂直布局容器，用于垂直排列子组件
        Row: 水平布局容器，用于水平排列子组件
        Stack: 堆叠布局容器，用于重叠显示组件
        Flex: 弹性布局容器，支持复杂的对齐和分布
        Grid: 网格布局容器，用于网格状排列
        Scroll: 滚动容器，支持内容滚动
        List: 列表容器，用于长列表展示
     * */
    // 垂直布局容器，用于垂直排列子组件
    // build在内部构建界面的最外层 有且只有一个根元素(容器组件)
    Column() {
      Text('小说简介')
        .width('100%')
        .fontSize(20)
        .fontWeight(700)
        .height(40)
        .fontColor(Color.Red)

      Text('长文字显示，长文字显示，长文字显示，长文字显示，长文字显示，长文字显示，长文字显示，长文字显示,我是长文本')
        .width('100%')
        .fontSize(20)
        .fontWeight(700)
        .fontColor(Color.Red)
        .lineHeight(25)
        .backgroundColor(Color.Yellow)
        .padding(5) // 添加内边距
        .textOverflow({
          overflow:TextOverflow.Ellipsis
        })
        .maxLines(8)
      // 网络加载
      Image('https://www.itheima.com/images/logo.png')
        .height(50)
        .width(50)
        .margin({top: 10})
      
      Text('耐克龙年款')
        .width('100%')
        .margin({top: 10})

      Row(){
        //  本地加载
        Image($r('app.media.startIcon'))
          .height(30)
          .width(30)
        Text('令人脱发的代码')
          .width(200)
      }
      .width(200)
      .margin({top: 10})

      // 水平布局容器，用于水平排列子组件
      Row() {
        Text('都市')
          .width(50)
          .height(30)
          .backgroundColor(Color.Green)
        Text('生活')
          .width(50)
          .height(30)
          .backgroundColor(Color.Yellow)
        Text('情感')
          .width(50)
          .height(30)
          .backgroundColor(Color.Orange)
        Text('男频')
          .width(50)
          .height(30)
          .backgroundColor(Color.Green)
      }
      .width('100%')
      .margin({top: 10}) // 外边距：Row距离上方长文字10pt
      .padding({left: 0, right: 0, top: 5, bottom: 5}) // 内边距：Row内部上下5pt空间

    }
    .width('100%')
    .height('100%')
    .padding(10)
    .backgroundColor(Color.Pink)
  }

}