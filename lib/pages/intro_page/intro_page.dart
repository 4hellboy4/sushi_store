import 'package:flutter/material.dart';
import 'package:sushi_app/consts/color.dart';
import 'package:sushi_app/widgets/intro_page_heading/intro_page_heading.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkred,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const IntroPageHeading(),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset("assets/images/free-icon-sushi-3259005.png"),
          ),
        ],
      ),
    );
  }
}
