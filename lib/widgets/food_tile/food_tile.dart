import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTile extends StatelessWidget {
  const FoodTile({
    Key? key,
    required this.name,
    required this.price,
    required this.imagePath,
    required this.rating,
    required this.onTapped,
  }) : super(key: key);

  final String name;
  final String price;
  final String imagePath;
  final String rating;
  final void Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        height: 100,
        width: 200,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Image.asset(
                imagePath,
                height: 100,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                name,
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("\$$price"),
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text(
                        rating,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
