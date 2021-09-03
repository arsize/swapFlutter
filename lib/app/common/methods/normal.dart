/*
 * @Author: Arsize 
 * @Date: 2021-09-03 16:28:13 
 * @Describe: 常用的简便函数
 */

/// 判断list中是否有某元素
bool isInTheList(e, List list) {
  return list.any((element) => element == e);
}
