import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;
  void setCounter(int value) {
    _counter = value;
    notifyListeners();
  }

  void incrment() {
    _counter = _counter + 1;
    notifyListeners();
  }

  void decrement() {
    _counter = _counter - 1;
    notifyListeners();
  }

  // int getCounter() {
  //   return _counter; => getter
  // }

  int get counter => _counter; // getter
}
