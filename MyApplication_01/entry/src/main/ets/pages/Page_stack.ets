interface Person {
  name: string
  age: number
  weight: number
  // 带参箭头函数
  sing: (song: string) => void
  // 无参箭头函数
  dance:() => void
}
// 基于接口 定义对象
let ym: Person = {
  name: '大张伟',
  age: 18,
  weight: 90,
  // 定义方法
  sing: (song: string) => {
    console.log('FCC','唱歌',song)
  },
  dance: () => {
    console.log('FCC','跳舞')
  }
}

// 联合类型
let judge: number | string = 100
judge = 'A+'
judge = 'A+'
console.log('年总',judge)
// 是由多个类型联合组成的数据类型
let gender: 'man' | 'woman' | 'secret' = 'secret'

enum ThemeColor {
  Red = '#ff0f29',
  Orange = '#fff85002',
  Green = '#ff03f307'
}
let color: ThemeColor = ThemeColor.Red

@Entry
@Component
struct Page_stack{
  @State message: string = "Hello";

  build() {
    Column()
    {
      Stack({alignContent:Alignment.BottomStart}){
        Column(){
          Text('大背景')
            .fontSize(24)
            .fontColor(Color.White)
            .fontWeight(FontWeight.Bold)
          
          Image($r('app.media.startIcon'))
            .width(80)
            .height(80)
            .margin({top: 20})
        }
        .width(300)
        .height(300)
        .backgroundColor(Color.Red)
        .justifyContent(FlexAlign.Center)

        Column(){
          Text('中等层')
            .fontSize(18)
            .fontColor(Color.White)
            .fontWeight(FontWeight.Medium)
          
          Text('Stack布局演示')
            .fontSize(14)
            .fontColor(Color.White)
            .margin({top: 10})
        }
        .width(200)
        .height(200)
        .backgroundColor(Color.Orange)
        .justifyContent(FlexAlign.Center)

        Column(){
          Text('顶层')
            .fontSize(12)
            .fontColor(Color.White)
            .fontWeight(FontWeight.Normal)
        }
        .width(100)
        .height(100)
        .backgroundColor(Color.Pink)
        .justifyContent(FlexAlign.Center)
      }
    }
    .height("100%")
    .width("100%")
    .backgroundColor(Color.Brown)

  }

}