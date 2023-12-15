import 'package:flutter/material.dart';

class MyModel extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  increment() {
    _counter += 1;
    notifyListeners();
  }
}
