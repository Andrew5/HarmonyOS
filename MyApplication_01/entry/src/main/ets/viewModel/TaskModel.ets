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
// 根据当前任务时间，计算我们的任务状态
  updateTaskStatus() {
    const currentDateString: string = DateUtils.formatDate(new Date().getTime(), "YYYY-MM-DD");

    if (this.taskTime > currentDateString) {
      this.taskStatus = TaskStatusType.FUTURE;
    } else if (this.taskTime === currentDateString) {
      this.taskStatus = TaskStatusType.DOING;
    } else if (this.taskTime <= currentDateString) {
      this.taskStatus = TaskStatusType.UNDONE;
    } else {
      this.taskStatus = TaskStatusType.DONE;
      console.log("currentDateString:", currentDateString);
    }
  }
}

// 数据模拟
class CreateTaskModel {
  private tasks: TaskModel[] = [];

  initData() {
    console.log("[CreateTaskModel] 开始初始化任务数据...");
    const today = new Date();
    const tomorrow = new Date(today);
    tomorrow.setDate(today.getDate() + 1);
    console.log("[CreateTaskModel] 开始初始化任务数据...");

    for (let index = 0; index < 20; index++) {
      // 创建不同日期的任务示例
      // const taskDate = index % 2 === 0
      //   ? DateUtils.formatDate(today, "YYYY-MM-DD") // 今天
      //   : DateUtils.formatDate(tomorrow, "YYYY-MM-DD"); // 明天
      const fullDate = getRandomDateCurrentMonth()
      console.log(`[CreateTaskModel] 生成任务 ${index + 1} 的随机日期: ${fullDate}`);
      const task = new TaskModel(
        `${index+1}`,
        `计划要完成的任务${index + 1}`,
        fullDate, // 使用动态日期
        `这是任务的详情${index + 1}`,
        "09:00",
        "12:00",
        1,
        1,
      );
      console.log(`[CreateTaskModel] 创建任务:`, {
        id: task.id,
        taskName: task.taskName,
        taskTime: task.taskTime,
        taskMsg: task.taskMsg
      });
      this.tasks.push(task);
    }
    console.log("[CreateTaskModel] 任务初始化完成，共生成:", this.tasks.length, "个任务");
    console.log("[CreateTaskModel] 生成的任务列表:", JSON.stringify(this.tasks, null, 2));
    return this.tasks;
  }
}
// 暴露实例方法
export default new CreateTaskModel();