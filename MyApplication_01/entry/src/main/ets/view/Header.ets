
@Component
// 默认暴露组件
// 默认暴露文件只能暴露一次
// 普通暴露可以暴露多次(没有写default)
export  struct Header{
  build() {
    Column(){
      Text("Header组件")
    }
    .width("100%")
    .height("100%")
  }
}