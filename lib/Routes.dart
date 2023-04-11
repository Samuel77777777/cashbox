import 'package:cashbox/AddcasdScreens/Addcash.dart';
import 'package:cashbox/Auth/AccountCreatedScreen.dart';
import 'package:cashbox/Auth/Login.dart';
import 'package:cashbox/Auth/Otp.dart';
import 'package:cashbox/Auth/SignUp.dart';
import 'package:cashbox/Cashout/Cashout.dart';
import 'package:cashbox/Cashout/CashoutSuccess.dart';
import 'package:cashbox/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => Login(),
    '/signup': (context) => SignUp(),
    '/Otp': (context) => OtpScreen(),
    '/Accountcreate': (context) => AccountScreen(),
    '/Homescreen': (context) => HomePage(),
    '/Addcash': (context) => AddCash(),
    '/Addcashsuccess': (context) => CashSuccess(),
    '/cashout': (context) => Cashout(),
    '/cashoutsuccess': (context) => CashSuccess(),
  };
}
