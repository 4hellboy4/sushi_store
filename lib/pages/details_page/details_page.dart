import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sushi_app/consts/color.dart';
import 'package:sushi_app/provider/food_provider.dart';
import 'package:sushi_app/widgets/intro_page_button/intro_page_button.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int amount = 0;

  void decrementNumber() {
    setState(() {
      if (amount > 0) amount--;
    });
  }

  void incrementNumber() {
    setState(() {
      amount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var food =
        Provider.of<FoodProvider>(context, listen: false).food[widget.index];
    return Scaffold(
      //food[widget.index].imagePath
      backgroundColor: white,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView(
                children: [
                  Image.asset(food.imagePath, height: 200),
                  const SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text(
                        food.rating,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    food.name,
                    style: GoogleFonts.dmSerifDisplay(
                      color: Colors.black,
                      fontSize: 28,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    food.descriprion,
                    style: TextStyle(
                      color: Colors.grey[600],
                      height: 2,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: darkred,
            width: double.infinity,
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "\$${food.price}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: whitepillow,
                          ),
                          child: IconButton(
                            onPressed: decrementNumber,
                            icon: const Icon(Icons.remove),
                            color: white,
                          ),
                        ),
                        SizedBox(
                          width: 40,
                          child: Center(
                            child: Text(
                              amount.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: whitepillow,
                          ),
                          child: IconButton(
                            onPressed: incrementNumber,
                            icon: const Icon(Icons.add),
                            color: white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 15),
                IntroPageButton(name: "Add", onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
