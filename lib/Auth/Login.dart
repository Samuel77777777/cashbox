// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:cashbox/Auth/SignUp.dart';
import 'package:cashbox/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Utils.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

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
                            style: myTextStyle,
                            keyboardType: TextInputType.emailAddress,
                            obscureText: false,
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
                                  onPressed: () {},
                                  icon: Icon(Icons.visibility_outlined,
                                      color: iconColor),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
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
                    "Sign in",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 22,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
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

void setState(Null Function() param0) {}
