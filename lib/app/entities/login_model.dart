/*
 * @Author: Arsize 
 * @Date: 2021-09-26 17:43:16 
 * @Describe: 登录信息模型
 */

import 'dart:convert';

class LoginModel {
  LoginModel({
    required this.unregistered,
    this.appToken,
    this.userNickname,
    this.userPhoto,
    this.uid,
    this.status,
    this.account,
    this.isBindVehicle,
    this.isAdmin,
  });

  bool unregistered;
  String? appToken;
  String? userNickname;
  String? userPhoto;
  String? uid;
  int? status;
  String? account;
  int? isBindVehicle;
  int? isAdmin;

  factory LoginModel.fromMap(Map<String, dynamic> json) {
    return LoginModel(
      unregistered: json["unregistered"],
      appToken: json["appToken"],
      userNickname: json["userNickname"],
      uid: json["uid"],
      userPhoto: json["userPhoto"],
      status: json["status"],
      account: json["account"],
      isBindVehicle: json["isBindVehicle"],
      isAdmin: json["isAdmin"],
    );
  }
  factory LoginModel.fromJson(String source) =>
      LoginModel.fromMap(json.decode(source));

  Map<String, dynamic> toJson() => {
        "unregistered": unregistered,
        "appToken": appToken,
        "userNickname": userNickname,
        "uid": uid,
        "userPhoto": userPhoto,
        "status": status,
        "account": account,
        "isBindVehicle": isBindVehicle,
        "isAdmin": isAdmin,
      };
}
