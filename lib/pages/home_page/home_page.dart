import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/consts/color.dart';
import 'package:sushi_app/widgets/intro_page_button/intro_page_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        centerTitle: true,
        title: Text(
          "Tokyo",
          style: TextStyle(
            color: Colors.grey[900],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 35),
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: darkred,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Get 20% Promo",
                        style: GoogleFonts.dmSerifDisplay(
                            fontSize: 22, color: white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      IntroPageButton(
                        name: "Redeem",
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/images/free-icon-sushi-2252075.png",
                    height: 100,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: white),
                      borderRadius: BorderRadius.circular(20)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Search here...",
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Food Menu",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[900],
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
