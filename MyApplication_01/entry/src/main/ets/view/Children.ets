import { UserModel } from "../viewModel/UserModel"

@Component
export struct Children {
  private title: string = "title";
  @Prop titleSub?: string;
  // @Prop user: UserModel = { id: 0, name: "9" }; // ✅ 允许默认值

  @Link user:UserModel;

  @Prop msg?: string // 子组件持有副本
  // 通过构造函数初始化 @Link user
  constructor(user: UserModel) {
    super();
    this.user = user;
  }
  /*
   *
  特性	      @Prop	                          @Link
  数据所有权	子组件持有数据的副本	              子组件与父组件共享同一数据引用
  同步方向	  单向同步（父 → 子）	              双向同步（父 ⇄ 子）
  修改权限	  子组件可修改本地副本，但不影响父组件	子组件修改会同步更新父组件数据
  适用场景	  父组件传递初始值，子组件独立处理	    父子组件需实时同步数据（如表单输入）
  初始化要求	必须由父组件初始化(直接赋值即可)     必须由父组件通过$符号传递（如$foo）
  默认值	    可以有默认值	                    不能有默认值，必须由父组件提供(必须通过构造函数传递)
   * */
  build() {
    Column(){
      Text(this.titleSub ?? "默认值")
        .fontSize(30)

      Text(`${this.title}`)

      Text(`${this.user.id}`)
      Text(`${this.user.name}`)
      Button().onClick((event: ClickEvent) =>{
        this.user.name = "测试"
      })

      Text(this.msg)
        .onClick(() => {
          this.msg = "Child Modified" // 仅修改本地副本，父组件不受影响
        })
        .fontColor(Color.Red)
    }
    .width("100%")
    .height("100%")

  }
}