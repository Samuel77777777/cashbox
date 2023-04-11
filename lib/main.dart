// import 'package:cashbox/AddcasdScreens/Addcash.dart';
// import 'package:cashbox/AddcasdScreens/Addcashbalance.dart';
// import 'package:cashbox/Auth/AccountCreatedScreen.dart';
// import 'package:cashbox/Auth/Login.dart';
// import 'package:cashbox/Auth/Otp.dart';
// import 'package:cashbox/Auth/SignUp.dart';
import 'package:cashbox/AddcasdScreens/Addcash.dart';
import 'package:cashbox/AddcasdScreens/Addcashbalance.dart';
import 'package:cashbox/Auth/Login.dart';
import 'package:cashbox/Auth/Otp.dart';
import 'package:cashbox/Auth/SignUp.dart';
import 'package:cashbox/Cashout/Cashout.dart';
import 'package:cashbox/Cashout/password.dart';
import 'package:cashbox/HomePage.dart';
import 'package:cashbox/SetttingScreen.dart';
import 'package:cashbox/Utils.dart';

// r

import 'package:flutter/material.dart';

// import 'onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(
              color: backgroundColor, // set the color of the icon
            ),
            // you can also customize other properties of the app bar here
          ),
          inputDecorationTheme: InputDecorationTheme(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: iconColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: iconColor,
              ),
            ),
          ),
        ),
        home: Login());
  }
}
