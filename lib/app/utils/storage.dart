import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

/// 本地存储-单例模式
class LoacalStorage {
  // ignore: prefer_final_fields
  static LoacalStorage _instance = LoacalStorage._();
  factory LoacalStorage() => _instance;
  static late SharedPreferences _prefs;

  LoacalStorage._();

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<bool> setJSON(String key, dynamic jsonVal) {
    String jsonString = jsonEncode(jsonVal);
    return _prefs.setString(key, jsonString);
  }

  dynamic getJSON(String key) {
    String? jsonString = _prefs.getString(key);
    return jsonString == null ? null : jsonDecode(jsonString);
  }

  Future<bool> setBool(String key, bool val) {
    return _prefs.setBool(key, val);
  }

  bool getBool(String key) {
    bool? val = _prefs.getBool(key);
    // ignore: prefer_if_null_operators
    return val == null ? false : val;
  }

  Future<bool> remove(String key) {
    return _prefs.remove(key);
  }
}
