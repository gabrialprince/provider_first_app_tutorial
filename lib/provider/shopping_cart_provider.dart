import 'package:flutter/material.dart';

class ShoppingCart with ChangeNotifier //with keyword is used to denote mixin
{
  final List<String> _shoppingCart = ['Apple', 'Mango', 'Grapes'];

  int get count => _shoppingCart.length;
  List<String> get cart => _shoppingCart;

  void addItem(String item) {
    _shoppingCart.add(item);
    notifyListeners();
  }

  void resetCart() {
    _shoppingCart.remove('Bread');
    notifyListeners();
  }
}
