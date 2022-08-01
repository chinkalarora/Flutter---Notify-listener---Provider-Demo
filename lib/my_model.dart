import 'package:flutter/foundation.dart';

class MyModel extends ChangeNotifier {
  int value = 0;
  String tempName = "chinkal test demo";
  void changeValue() {
    value += 1;
    notifyListeners();
  }

  void concatValue(String name) {
    tempName = name;
    notifyListeners();

  }
}