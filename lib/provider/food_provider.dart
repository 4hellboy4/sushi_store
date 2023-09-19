import 'package:flutter/material.dart';
import 'package:sushi_app/models/food_model.dart';

class FoodProvider extends ChangeNotifier {
  List<Food> food = [
    Food(
      name: "Salmon sushi",
      price: "21.00",
      imagePath: "assets/images/free-icon-sushi-roll-3259048.png",
      rating: "5.0",
      descriprion:
          "Chirashi, meaning, “scattered,” is a bowl of vinegared rice topped with a mix of raw fish (typically chef’s choice) and various garnishes. It’s fast and easy to make, and convenient to eat. In Japan the toppings vary depending on the region where it’s being served and is often eaten on Hinamatsuri, Girls Day or Doll Day, a special day in Japan celebrated on March 3rd.Maki is cut rolled sushi, traditionally made with a sheet of nori, wrapped around a layer of rice, vegetables, and fish, then rolled up using a special bamboo mat, and cut into 6-8 pieces. There are a variety of maki sushi rolls you can order which range in size and style. ",
    ),
    Food(
      name: "Tuna sushi",
      price: "23.00",
      imagePath: "assets/images/free-icon-sushi-roll-5229619.png",
      rating: "4.93",
      descriprion:
          "Chirashi, meaning, “scattered,” is a bowl of vinegared rice topped with a mix of raw fish (typically chef’s choice) and various garnishes. It’s fast and easy to make, and convenient to eat. In Japan the toppings vary depending on the region where it’s being served and is often eaten on Hinamatsuri, Girls Day or Doll Day, a special day in Japan celebrated on March 3rd.Maki is cut rolled sushi, traditionally made with a sheet of nori, wrapped around a layer of rice, vegetables, and fish, then rolled up using a special bamboo mat, and cut into 6-8 pieces. There are a variety of maki sushi rolls you can order which range in size and style. ",
    ),
    Food(
      name: "LOx sushi",
      price: "23.00",
      imagePath: "assets/images/free-icon-sushi-roll-3643573.png",
      rating: "4.4",
      descriprion:
          "Chirashi, meaning, “scattered,” is a bowl of vinegared rice topped with a mix of raw fish (typically chef’s choice) and various garnishes. It’s fast and easy to make, and convenient to eat. In Japan the toppings vary depending on the region where it’s being served and is often eaten on Hinamatsuri, Girls Day or Doll Day, a special day in Japan celebrated on March 3rd.Maki is cut rolled sushi, traditionally made with a sheet of nori, wrapped around a layer of rice, vegetables, and fish, then rolled up using a special bamboo mat, and cut into 6-8 pieces. There are a variety of maki sushi rolls you can order which range in size and style. ",
    ),
    Food(
      name: "Pososi sushi",
      price: "15.00",
      imagePath: "assets/images/free-icon-sushi-3259005.png",
      rating: "4.4",
      descriprion:
          "Chirashi, meaning, “scattered,” is a bowl of vinegared rice topped with a mix of raw fish (typically chef’s choice) and various garnishes. It’s fast and easy to make, and convenient to eat. In Japan the toppings vary depending on the region where it’s being served and is often eaten on Hinamatsuri, Girls Day or Doll Day, a special day in Japan celebrated on March 3rd.Maki is cut rolled sushi, traditionally made with a sheet of nori, wrapped around a layer of rice, vegetables, and fish, then rolled up using a special bamboo mat, and cut into 6-8 pieces. There are a variety of maki sushi rolls you can order which range in size and style. ",
    ),
  ];
}
