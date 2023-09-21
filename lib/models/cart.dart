import 'package:sushi_app/models/food_model.dart';

class Cart {
  Food food;
  int amount;

  Cart({
    required this.food,
    required this.amount,
  });

  Food get _food => food;
  int get _amount => amount;
}
