import 'package:flutter/material.dart';

class TestChanger extends ChangeNotifier {
  int count = 0;

  doIncrease() {
    count++;
    notifyListeners();
  }
}
