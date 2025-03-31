import { DateUtils, getRandomDateCurrentMonth } from "../utils/DataFormat"
enum TaskStatusType {
  DONE = "done",
  UNDONE = "undone",
  FUTURE = "future",
  DOING = "doing"
}
// 定义数据的约束
export class TaskModel {
  id: string = ""
  taskName: string = ""
  taskTime: string = ""
  taskMsg: string = ""
  taskBeginDate: string = ""
  taskEndDate: string = ""
  taskType: number = 1
  taskTitle: number = 1
  taskStatus: string = ""

  constructor(
    id: string,
    taskName: string,
    taskTime: string,
    taskMsg:string,
    taskBeginDate: string,
    taskEndDate: string,
    taskType: number,
    taskTitle: number,
    taskStatus: string = ""
  ) {
    this.id = id
    this.taskName = taskName
    this.taskMsg = taskMsg
    this.taskTime = taskTime
    this.taskBeginDate = taskBeginDate
    this.taskEndDate = taskEndDate
    this.taskType = taskType
    this.taskTitle = taskTitle
    this.updateTaskStatus()
  }

  updateTaskStatus() {
    const currentDateStr: string = DateUtils.formatDate(new Date(), "YYYY-MM-DD");
    const currentDate = new Date(currentDateStr);
    // const taskDate = new Date(this.taskTime);

    if (this.taskTime > currentDate.toDateString()) {
      this.taskStatus = TaskStatusType.FUTURE;
    } else if (this.taskTime === currentDate.toDateString()) {
      this.taskStatus = TaskStatusType.DOING;
    } else {
      this.taskStatus = TaskStatusType.UNDONE;
    }
  }
}

// 数据模拟
class CreateTaskModel {
  private tasks: TaskModel[] = [];

  initData() {
    const today = new Date();
    const tomorrow = new Date(today);
    tomorrow.setDate(today.getDate() + 1);

    for (let index = 0; index < 20; index++) {
      // 创建不同日期的任务示例
      // const taskDate = index % 2 === 0
      //   ? DateUtils.formatDate(today, "YYYY-MM-DD") // 今天
      //   : DateUtils.formatDate(tomorrow, "YYYY-MM-DD"); // 明天
      const fullDate = getRandomDateCurrentMonth()
      const task = new TaskModel(
        `${index+1}`,
        `计划要完成的任务${index + 1}`,
        fullDate, // 使用动态日期
        `这是任务的详情${index + 1}`,
        "09:00",
        "12:00",
        1,
        1,
        "" // 状态由updateTaskStatus()设置
      );
      this.tasks.push(task);
    }
    return this.tasks;
  }
}
// 暴露实例方法
export default new CreateTaskModel();