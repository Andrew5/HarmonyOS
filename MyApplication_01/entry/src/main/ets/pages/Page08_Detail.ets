import { router } from '@kit.ArkUI';
import { JSON } from '@kit.ArkTS';
import { TaskModel } from '../viewModel/TaskModel';
import  { ParamsType } from '../viewModel/TaskParamsModel';


@Entry
@Component
struct Page08_Detail {
  @State message: string = "详情页面";

  // 取数据
  // UI 挂载完成后
  aboutToAppear(): void {
    const params = router.getParams()
    // 断言 我明确知道我的params对象数据类型为ParamsType
    const taskDetail:TaskModel = (params as ParamsType<TaskModel>).value
    console.log(taskDetail.taskName)
  }

  build() {
      RelativeContainer() {
        Text(this.message)
          .id(`Page08_Detail`)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .alignRules({
            center: { anchor: "__container__", align: VerticalAlign.Center },
            middle: { anchor: "__container__", align: HorizontalAlign.Center }

          })
      }

    .width('100%')
    .height('100%')
  }
}