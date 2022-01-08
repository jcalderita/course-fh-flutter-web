import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 15;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decremente() {
    _counter--;
    notifyListeners();
  }

  get counter => _counter;
}
