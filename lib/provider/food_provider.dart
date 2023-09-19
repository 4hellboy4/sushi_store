import 'package:flutter/material.dart';
import 'package:sushi_app/models/food_model.dart';

class FoodProvider extends ChangeNotifier {
  List<Food> food = [
    Food(
      name: "Salmon sushi",
      price: "21.00",
      imagePath: "assets/images/free-icon-sushi-roll-3259048.png",
      rating: "5.0",
    ),
    Food(
      name: "Tuna sushi",
      price: "23.00",
      imagePath: "assets/images/free-icon-sushi-roll-5229619.png",
      rating: "4.93",
    ),
    Food(
      name: "LOx sushi",
      price: "23.00",
      imagePath: "assets/images/free-icon-sushi-roll-3643573.png",
      rating: "4.4",
    ),
    Food(
      name: "Pososi sushi",
      price: "15.00",
      imagePath: "assets/images/free-icon-sushi-3259005.png",
      rating: "4.4",
    ),
  ];
}
