import { loginComponentManager } from '@kit.AccountKit'
import { CollaborationCameraStateDialog } from '@hms.collaboration.camera'
import json from '@ohos.util.json'

// 不支持import写法 仅支持在同一个组件(同一个文件内)内使用
// 容器默认通用属性可以提取
// 不支持传递参数
// 组件外调用 公共样式
@Styles
function titleText2() {
  .height(100)
  .width(100)
  .backgroundColor(Color.Blue)
  .borderRadius(10)
}

// 定义扩展样式

// @Extend(Text)可以支持Text的私有属性fontColor
@Extend(Text)
function fancy() {
  .fontColor(Color.Red)
}

// superFancyText可以调用预定义的fancy
@Extend(Text)
function superFancyText(size: number) {
  .fontSize(size)
  .fancy()
}

@Extend(Text)
function textStyles() {
  .fontSize(16)
  .fontColor($r("app.color.text_color"))
  .margin({
    bottom: 15
  })
}

@Extend(TextInput)
function inputStyles() {
  .borderRadius(0)
  .backgroundColor($r("app.color.content_color"))
  .placeholderColor($r("app.color.text_color"))
}

@Extend(Line)
function lineStyles(value: string = "100%") {
  .width(value)
  .height(1)
  .backgroundColor(Color.Black)
}

@Entry
@Component
struct Page06_AddTask {
  private selectedDate: Date = new Date()
  // 组件内部状态变更时 UI会重新渲染
  // 必须有初始化，不能为空值
  // 可以支持object class string number boolean
  // 默认为私有变量 只能在组件中访问
  @State currentState:boolean = false
  // 组件内调用 公共样式
  @Styles
  titleText(){
    .height(100)
    .width(100)
    .backgroundColor(Color.Red)
    .borderRadius(10)
  }

  // 箭头函数 this指向只关注父组件(父级作用域)
  calendarChange = () => {
    CalendarPickerDialog.show({
      selected: this.selectedDate,
      onChange: (value) => {
        const localDate = new Date(value).toLocaleString('zh-CN', {
          timeZone: 'Asia/Shanghai', // 指定时区
          year: 'numeric',
          month: '2-digit',
          day: '2-digit',
          hour: '2-digit',
          minute: '2-digit',
          second: '2-digit',
          hour12: false // 24小时制
        });
        console.log("CalendarPickerDialog:", localDate);
      }
    })
  }
  timePickerChange = () => {
    TimePickerDialog.show({
      selected: this.selectedDate,// 默认要显示出来的时间
      useMilitaryTime: true, // 设置时间采用24小时格式
      disappearTextStyle: {// 设置头部日期和底部日期的样式
        color: Color.Red, font: { size: 15, weight: FontWeight.Bold }
      },
      textStyle: { color: Color.Green },// 设置中间日期样式，除 选中日期
      selectedTextStyle: { color: Color.Brown, font: { size: 20 } },// 选中日期的样式
      onAccept: (value: TimePickerResult) => {
        console.log(JSON.stringify(value));
      }
    })
  }

  build() {
    Column() {
      Text("新建任务")
        .fontWeight(FontWeight.Bold)
        .fontSize(26)
        .fontColor($r("app.color.text_color"))
        .margin({
          bottom: 20
        })

      // 主体内容
      Column() {
        // 标题
        Column() {
          Text("标题")
            .textStyles()
          // .fontSize(16)
          // .fontColor($r("app.color.add_title_color"))
          TextInput({
            placeholder: "请输入名字"
          })
            .inputStyles()

          Line()
            .lineStyles()
        }
        .width("100%")
        .alignItems(HorizontalAlign.Start)

        // 日期
        Column() {
          Text("日期")
            .textStyles()
          // .fontSize(16)
          // .fontColor($r("app.color.add_title_color"))
          TextInput({
            placeholder: "请输入日期"
          })
            .inputStyles()
            .onClick(this.calendarChange)

          Line()
            .lineStyles()
        }
        .width("100%")
        .alignItems(HorizontalAlign.Start)
        .padding({ top: 10 })


        // 时间选择
        Column() {
          Text("时间")
            .textStyles()
          Row() {
            Column() {
              // .fontSize(16)
              // .fontColor($r("app.color.add_title_color"))
              TextInput({
                placeholder: "请选择开始日期"
              })
                .inputStyles()
                .onClick(this.timePickerChange)

              Line()
                .lineStyles("90%")
            }
            .width("48%")

            Column() {
              TextInput({
                placeholder: "请输入结束日期"
              })
                .inputStyles()
                .onClick(this.timePickerChange)

              Line()
                .lineStyles("90%")
            }
            .width("48%")
          }
        }
        .width("100%")
        .alignItems(HorizontalAlign.Start)
        .padding({ top: 10 })

        // 描述
        Column() {
          Text("描述")
            .textStyles()
          // .fontSize(16)
          // .fontColor($r("app.color.add_title_color"))
          TextInput({
            placeholder: "请输入任务详情"
          })
            .inputStyles()

          Line()
            .lineStyles()
        }
        .width("100%")
        .alignItems(HorizontalAlign.Start)
        .padding({ top: 10 })

        // 选择类型
        Column() {
          Text("类型")
            .textStyles()
          Row() { // 水平方向布局
            Row() {
              Radio({
                value: "1",
                group: "type"
              })
                .width(24)
                .height(24)
                .radioStyle({
                  checkedBackgroundColor: "#5B67CA"
                })
                .onChange((isChecked: boolean) => {
                  console.log(`选中个人任务 ${isChecked}`)
                })
              Text("个人任务")
                .fontColor("#10275A")
                .fontWeight(FontWeight.Bold)
            }


            Row() { // 水平方向布局
              Radio({
                value: "1",
                group: "type"
              })
                .width(24)
                .height(24)
                .radioStyle({
                  checkedBackgroundColor: "#5B67CA"
                })
                .onChange((isChecked: boolean) => {
                  console.log(`选中工作任务 ${isChecked}`)
                })
              Text("工作任务")
                .fontColor("#10275A")
                .fontWeight(FontWeight.Bold)
            }
          }
          .width("100%")
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .alignItems(HorizontalAlign.Start)
        .padding({ top: 10 })


        // 标签
        Column() {
          Text("标签")
            .textStyles()
          Column() {
            Text("工作")
              .fontSize(18)
              .fontColor(Color.White)
          }
          .alignItems(HorizontalAlign.Center)
          .justifyContent(FlexAlign.Center)
          .width(60)
          .height(30)
          .backgroundColor(Color.Brown)
          .border({
            width:2,
            // color:Color.Yellow
            color:this.currentState?Color.Yellow:Color.Transparent
          })
          .onClick(()=>{
            this.currentState = !this.currentState
          })
        }
        .width("100%")
        .alignItems(HorizontalAlign.Start)
        .padding({ top: 10 })
      }
    }
    .height("100%")
    .width("100%")
    .padding(10)
    .backgroundColor($r("app.color.content_color"))
  }
}

