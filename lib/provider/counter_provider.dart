import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  String title = "Provider Example";
  int count = 0;

  void incrementCounter() {
    count++;
    notifyListeners();
  }
}
