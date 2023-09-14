import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/consts/color.dart';
import 'package:sushi_app/router/router.dart';
import 'package:sushi_app/widgets/intro_page_button/intro_page_button.dart';
import 'package:sushi_app/widgets/intro_page_heading/intro_page_heading.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  void goToMainPage() {
    GoRouter.of(context).go(MyRouter.home);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkred,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 75.0,
          right: 25,
          left: 25,
          bottom: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const IntroPageHeading(),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Image.asset("assets/images/free-icon-sushi-3259005.png"),
            ),
            const SizedBox(height: 25),
            Text(
              "THE TASTE OF THE JAPANESE FOOD",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 30,
                color: white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Fel the taste of the most popular Japanese food from anywhere and anytime",
              style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 220, 220, 220),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            IntroPageButton(
              name: "Get Started",
              onPressed: goToMainPage,
            ),
          ],
        ),
      ),
    );
  }
}
