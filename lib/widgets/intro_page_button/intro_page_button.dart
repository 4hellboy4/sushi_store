import 'package:flutter/material.dart';
import 'package:sushi_app/consts/color.dart';

class IntroPageButton extends StatelessWidget {
  const IntroPageButton({
    Key? key,
    required this.name,
    required this.onPressed,
  }) : super(key: key);

  final String name;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: whitepillow,
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              name,
              style: TextStyle(
                color: white,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.arrow_forward,
              color: white,
            ),
          ],
        ),
      ),
    );
  }
}
