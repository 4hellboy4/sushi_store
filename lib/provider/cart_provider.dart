import 'package:flutter/material.dart';
import 'package:sushi_app/models/cart.dart';

class CartProvider extends ChangeNotifier {
  final List<Cart> _cart = [];

  void addToCart(Cart cart) {
    _cart.add(cart);
    notifyListeners();
  }

  void removeFromCart(int index) {
    _cart.removeAt(index);
    notifyListeners();
  }

  List<Cart> get cart => _cart;
}
