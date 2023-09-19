import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTile extends StatelessWidget {
  const FoodTile({
    Key? key,
    required this.name,
    required this.price,
    required this.imagePath,
    required this.rating,
  }) : super(key: key);

  final String name;
  final String price;
  final String imagePath;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.white),
      child: Center(
        child: Column(
          children: <Widget>[
            Image.asset(imagePath),
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
