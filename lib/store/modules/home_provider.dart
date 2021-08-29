import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  int _count = 1;
  get count => _count;

  add() {
    _count++;
    notifyListeners();
  }
}
