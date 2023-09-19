import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sushi_app/consts/color.dart';
import 'package:sushi_app/provider/food_provider.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    var food = Provider.of<FoodProvider>(context, listen: false).food;
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 30, right: 30),
              child: SingleChildScrollView(
                child: ListView(
                  children: [
                    Image.asset(food[widget.index].imagePath, height: 200),
                    const SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          food[widget.index].rating,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text(
                      food[widget.index].descriprion,
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 200,
            color: darkred,
          ),
        ],
      ),
    );
  }
}
