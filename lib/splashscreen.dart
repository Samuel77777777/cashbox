import 'dart:async';
import 'package:cashbox/Auth/Login.dart';
import 'package:cashbox/Utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Image.asset('./assets/splash.png'),
      ),
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Show splash screen while waiting for 2 seconds
            return SplashScreen();
          } else {
            // Navigate to home screen after 2 seconds
            return Login();
          }
        },
      ),
    );
  }
}
