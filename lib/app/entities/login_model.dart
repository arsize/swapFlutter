/*
 * @Author: Arsize 
 * @Date: 2021-09-26 17:43:16 
 * @Describe: 登录信息模型
 */

class LoginModel {
  LoginModel({
    required this.registered,
    this.appToken,
    this.userNickname,
    this.userPhoto,
    this.uid,
    this.status,
    this.account,
    this.isBindVehicle,
  });

  bool registered;
  String? appToken;
  String? userNickname;
  String? userPhoto;
  String? uid;
  int? status;
  String? account;
  int? isBindVehicle;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        registered: !json["unregistered"],
        appToken: json["appToken"],
        userNickname: json["userNickname"],
        uid: json["uid"],
        userPhoto: json["userPhoto"],
        status: json["status"],
        account: json["account"],
        isBindVehicle: json["isBindVehicle"],
      );

  Map<String, dynamic> toJson() => {
        "unregistered": !registered,
        "appToken": appToken,
        "userNickname": userNickname,
        "uid": uid,
        "userPhoto": userPhoto,
        "status": status,
        "account": account,
        "isBindVehicle": isBindVehicle,
      };
}
