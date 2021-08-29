// 全局状态共享
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:swapapp/store/modules/home_provider.dart';
import 'package:swapapp/store/modules/other_provider.dart';

List<SingleChildWidget> store = [
  ChangeNotifierProvider(create: (context) => HomeProvider()),
  ChangeNotifierProvider(create: (context) => OtherProvider()),
];
