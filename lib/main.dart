import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/common/global.dart';
import 'routes/router.dart';
import 'store/store.dart';

void main() {
  Global.init(() {
    runApp(MultiProvider(
      providers: store,
      child: MyApp(),
    ));
  });
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light,
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var staticRoutes = Routes.collection();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(750, 1334 - 53 - 34), //设计稿尺寸->屏幕适配
      builder: () => AnnotatedRegion(
        value: SystemUiOverlayStyle.light,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: staticRoutes.keys.first,
          routes: staticRoutes,
          navigatorObservers: [Global.routeObserver],
          theme: ThemeData().copyWith(
            brightness: Brightness.light, //控件颜色模式
            primaryColor: Colours.app_main,
            pageTransitionsTheme: PageTransitionsTheme(
              builders: <TargetPlatform, PageTransitionsBuilder>{
                TargetPlatform.android: createTransition(),
                TargetPlatform.iOS: createTransition()
              },
            ),
          ),
        ),
      ),
    );
  }

  //全局路由动画构建
  PageTransitionsBuilder createTransition() {
    return CupertinoPageTransitionsBuilder();
  }
}
