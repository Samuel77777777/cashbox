import 'package:cashbox/AddcasdScreens/Addcash.dart';
import 'package:cashbox/AddcasdScreens/Addcashbalance.dart';
import 'package:cashbox/Auth/AccountCreatedScreen.dart';
import 'package:cashbox/Auth/ForgotPassword.dart';
import 'package:cashbox/Auth/Login.dart';
import 'package:cashbox/Auth/Otp.dart';
import 'package:cashbox/Auth/SignUp.dart';
import 'package:cashbox/Bottomanav.dart';
import 'package:cashbox/Cashout/Cashout.dart';
import 'package:cashbox/Cashout/CashoutBalance.dart';
import 'package:cashbox/Cashout/CashoutSuccess.dart';
import 'package:cashbox/HomePage.dart';
import 'package:cashbox/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => Login(),
    '/bottombar': (context) => BottomBar(),
    '/splash': (context) => Splash(),
    '/signup': (context) => SignUp(),
    '/Otp': (context) => OtpScreen(),
    '/Accountcreate': (context) => AccountScreen(),
    '/Homescreen': (context) => HomePage(),
    '/Addcash': (context) => AddCash(),
    '/Addcashsuccess': (context) => CashSuccess(),
    '/cashout': (context) => Cashout(),
    '/cashoutsuccess': (context) => CashSuccess(),
    '/addcashbalance': (context) => Addcashbalance(),
    '/forgotpassword': (context) => ForgotPassword(),
    '/cashoutbalance': (context) => CashoutBalance(),
  };
}
