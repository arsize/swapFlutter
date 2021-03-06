import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'app/colors/colors.dart';
import 'app/common/langs/langs.dart';
import 'app/routes/app_pages.dart';
import 'global.dart';
import 'dart:ui' as ui;

void main() => Global.init().then((e) => runApp(MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "",
      translations: Messages(),
      locale: ui.window.locale,
      fallbackLocale: Locale('en', 'US'),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      defaultTransition: Transition.rightToLeft,
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
      theme: ThemeData().copyWith(
        brightness: Brightness.light,
        primaryColor: Colours.app_main,
      ),
    );
  }
}
