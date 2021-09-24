/*
 * @Author: Arsize 
 * @Date: 2021-08-31 16:41:35 
 * @Describe: 校验
 */

/// 校验手机号码格式
bool checkMobile(mobile) {
  RegExp exp = RegExp(r'^(\d{8}|\d{11})$');
  return exp.hasMatch(mobile);
}

/// 校验六位验证码
bool checkPin(pin) {
  RegExp exp = RegExp(r'^(\d{6})$');
  return exp.hasMatch(pin);
}

/// 校验常用密码格式
bool checkPwd(pwd) {
  return true;
}

/// 检查邮箱格式
bool duIsEmail(String? input) {
  if (input == null || input.isEmpty) return false;
  // 邮箱正则
  String regexEmail = "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*\$";
  return RegExp(regexEmail).hasMatch(input);
}

/// 检查字符长度
bool duCheckStringLength(String? input, int length) {
  if (input == null || input.isEmpty) return false;
  return input.length >= length;
}
