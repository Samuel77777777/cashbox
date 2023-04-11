import 'dart:ui';

import 'package:flutter/material.dart';

class Intro1 extends StatelessWidget {
  const Intro1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image(image: AssetImage("./assets/splash.png")),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  textAlign: TextAlign.center,
                  "Cash box is here to save your worries by saving your money till you want it",
                  style: TextStyle(
                      fontSize: 18, color: Colors.grey, fontFamily: "Raleway"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
