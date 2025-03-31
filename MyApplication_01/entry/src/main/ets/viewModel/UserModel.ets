// 方法一 接口 对象字面量
// export interface UserModel {
//   id: number;
//   name: string;
// }
// 方法二 类
export class UserModel {
  id: number;
  name: string;

  // 构造函数
  constructor(id: number, name: string) {
    this.id = id
    this.name = name
  }
}
