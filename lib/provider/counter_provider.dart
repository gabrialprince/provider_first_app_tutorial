import 'package:flutter/material.dart';

class Counter with ChangeNotifier //with keyword is used to denote mixin
{
  int _count = 0;

  int get count =>
      _count; // is used to retrieve a particular class field and save it in a variable.

  void increment() {
    _count++;
    notifyListeners();
  }

  void reset() {
    _count = 0;

    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }
}
