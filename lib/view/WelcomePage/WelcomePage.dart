import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var ColorConstant;
    return Container(
      /*decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(assetName),
        fit: BoxFit.cover,
        opacity: 0.8,
      )),*/
      child: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 65, horizontal: 25),
        child: Column(
          children: [
            Text(
              "Let's Adventure..,",
              style: TextStyle(
                color: ColorConstant.PrimaryWhite,
              ),
            )
          ],
        ),
      )),
    );
  }
}
