// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Utils.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              // padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Sign in",
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: size.width * 0.08,
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      width: size.width * 0.9,
                      alignment: Alignment.center,
                      // padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Email",
                                  textAlign: TextAlign.end,
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      fontStyle: FontStyle.normal,
                                      color: iconColor),
                                ),
                              ),
                            ],
                          ),
                          TextFormField(
                            obscureText: false,
                            style: myTextStyle,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                              onPressed: () {},
                              icon:
                                  Icon(Icons.email_outlined, color: iconColor),
                            )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.05),
                    Container(
                      width: size.width * 0.9,
                      alignment: Alignment.center,
                      // padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Password",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      fontStyle: FontStyle.normal,
                                      color: iconColor),
                                ),
                              ),
                            ],
                          ),
                          TextFormField(
                              obscureText: _obscurePassword,
                              style: myTextStyle,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: size.width * 0.002,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(size.width * 0.04),
                                    )),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _obscurePassword = !_obscurePassword;
                                    });
                                  },
                                  icon: Icon(
                                    _obscurePassword
                                        ? Icons.visibility_off_outlined
                                        : Icons.visibility_outlined,
                                    color: iconColor,
                                  ),
                                ),
                              )),
                        ],
                      ),
                    )
                  ],
                )),
            SizedBox(height: size.height * 0.05),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(size.width * 0.03)),
                width: size.width * 0.9,
                height: size.height * 0.07,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/bottombar');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    elevation: 1,

                    padding: EdgeInsets.symmetric(vertical: size.height * 0.02),

                    // ignore: deprecated_member_use
                    primary: Colors.black,
                  ),
                  child: Text(
                    overflow: TextOverflow.visible,
                    "Sign in",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: size.width * 0.05,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                )),
            SizedBox(height: 20),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/forgotpassword');
                    },
                    child: Text(
                      "Forgot your password?",
                      style: GoogleFonts.inter(
                          fontSize: 14.22,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          color: iconColor),
                    ),
                  ),
                  SizedBox(
                    width: 126,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: Text(
                      "Sign up",
                      style: GoogleFonts.inter(
                          fontSize: 14.22,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          color: iconColor),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
