import 'package:flutter/cupertino.dart';

class OtherProvider extends ChangeNotifier {
  int _count2 = 0;
  get count => _count2;

  add() {
    _count2++;
    notifyListeners();
  }
}
