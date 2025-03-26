import text from '@ohos.graphics.text';

@Entry
@Component
// ArkTS第一天
// class User{
//   id:number
//
//   constructor(id :number) {
//     this.id = id
//   }
// }
struct Demo1 {
  @State message: string = "Hello world";
  username: string = 'HarmonyOS World';
  // @State user: User | null | undefined | string = null
  @State map:Record<string,string>  = {
    "key":"",
    "value":"123"
  }
  play(){
    console.log("Playing..."); // ✅ 示例代码，避免未使用变量
  }

  show = ()=> {
    this.play();
    this.username = "xiaofei";
  }

  checkMe = ()=> {
    this.message = "harmwsond"
    console.log("输出")
  }

   factorial(n: number): number {
    if (n <= 1) {
      return 1;
    }
    return n * this.factorial(n - 1);
  }

  build() {
    Column(){
      Button("点击").onClick((event: ClickEvent) => {
        this.checkMe()
      })
      TextInput({placeholder:"请输入内容",text:$$this.message}).onBlur(()=>{
        console.log("123")
      })

      Text(this.message)
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .textAlign(TextAlign.Center)
        .fontColor(Color.Blue);

      Button("开始").onClick(this.checkMe.bind(this))
    }
    .height('100%')
    .width('100%')


    /*let hi: string = 'Hello';
    hi = 'hello, world';
    const hello: string = 'hello';

    let bigInteger = BigInt("999999999999999999999999999999999999999999999999999999999999");
    console.log(`bigInteger: ${bigInteger.toString()}`); // ✅ 确保 BigInt 正确输出
    */
  }
}