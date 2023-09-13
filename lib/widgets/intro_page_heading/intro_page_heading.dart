import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPageHeading extends StatelessWidget {
  const IntroPageHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "SUSHISTORE",
      style: GoogleFonts.dmSerifDisplay(
        fontSize: 28,
      ),
    );
  }
}
