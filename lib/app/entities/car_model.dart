class CarModel {
  CarData? data;
  int? code;
  String? msg;

  CarModel({this.data, this.code, this.msg});

  CarModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? CarData.fromJson(json['data']) : null;
    code = json['code'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> result = <String, dynamic>{};
    result['data'] = data?.toJson();
    result['code'] = code;
    result['msg'] = msg;
    return result;
  }
}

class CarData {
  String? vehicleId;
  String? vehicleSn;
  String? batterySn;
  String? numberPlate;
  int? bindingState;
  String? batteryTypeName;
  String? bindingTime;
  String? voltage;
  String? capacity;
  String? lockCode;

  CarData(
      {this.vehicleId,
      this.vehicleSn,
      this.batterySn,
      this.numberPlate,
      this.bindingState,
      this.batteryTypeName,
      this.bindingTime,
      this.voltage,
      this.capacity,
      this.lockCode});

  CarData.fromJson(Map<String, dynamic> json) {
    vehicleId = json['vehicleId'];
    vehicleSn = json['vehicleSn'];
    batterySn = json['batterySn'];
    numberPlate = json['numberPlate'];
    bindingState = json['bindingState'];
    batteryTypeName = json['batteryTypeName'];
    bindingTime = json['bindingTime'];
    voltage = json['voltage'];
    capacity = json['capacity'];
    lockCode = json['lockCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['vehicleId'] = vehicleId;
    data['vehicleSn'] = vehicleSn;
    data['batterySn'] = batterySn;
    data['numberPlate'] = numberPlate;
    data['bindingState'] = bindingState;
    data['batteryTypeName'] = batteryTypeName;
    data['bindingTime'] = bindingTime;
    data['voltage'] = voltage;
    data['capacity'] = capacity;
    data['lockCode'] = lockCode;
    return data;
  }
}
