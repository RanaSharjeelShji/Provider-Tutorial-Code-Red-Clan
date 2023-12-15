import 'package:flutter/material.dart';

class MyModel extends ChangeNotifier{
  int _counter = 0;
  int get counter => _counter;
  increaseValue() {
    _counter++;
    notifyListeners();
  }
}
// Step onE  make a class with any name;
//aik variable bna lo
// uska getter setter bnalo
// functionality k liye function bna lo
// functionlaity lo notifyListner lga do
//au main screen pr jao
