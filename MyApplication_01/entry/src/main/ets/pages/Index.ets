import { Header } from '../view/Header'
import formatUtils from '../utils/DataFormat'

@Entry
@Component
struct Index {
  @State message: string = formatUtils.dataFormat(new Date());
  showMsg = ()=> {
    let num: number = 100
    return num
  }
  checkedMe = ()=>{
    console.log("测试哦")
    for (let index = 0; index < 100; index++) {
      console.log(`索引是：${index}`);
      if (index % 2 == 0) {
        console.log(`${index}`)
        const result = this.showMsg()
        console.log(`result: ${result}`)
      }
    }
  }

  build() {
    Column() {
      Text("这是主页面2")
      Text(this.message)

      Button("修改message5").onClick((event: ClickEvent) => {
        this.message = "2024-08-10"
      })
      Button("实现循环效果").onClick(this.checkedMe)
      Header()
    }

    // RelativeContainer() {
    //   Text(this.message)
    //     .id('HelloWorld')
    //     .fontSize($r('app.float.page_text_font_size'))
    //     .fontWeight(FontWeight.Bold)
    //     .alignRules({
    //       center: { anchor: '__container__', align: VerticalAlign.Center },
    //       middle: { anchor: '__container__', align: HorizontalAlign.Center }
    //     })
    //     .onClick(() => {
    //       this.message = 'Welcome';
    //     })
    // }
    // .height('100%')
    // .width('100%')
  }
}