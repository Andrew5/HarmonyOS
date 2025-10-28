// 为解决路由器传递参数的约束问题
export class ParamsType<T> {
  value: T
  constructor(value:T) {
    this.value = value
  }
}