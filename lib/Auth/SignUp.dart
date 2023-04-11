// ignore_for_file: deprecated_member_use

import 'package:cashbox/Auth/AccountCreatedScreen.dart';
import 'package:cashbox/Auth/Login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Utils.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create New Account",
                    style: GoogleFonts.inter(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Form(
                  child: Column(
                children: [
                  Container(
                    width: size.width * 0.9,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Full Name",
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
                          obscureText: false,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.person_outlined,
                              color: iconColor,
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // email
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
                            icon: Icon(
                              Icons.email_outlined,
                              color: iconColor,
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //phone
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
                                "Phone number",
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
                          keyboardType: TextInputType.phone,
                          obscureText: false,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.phone_outlined, color: iconColor),
                          )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // password
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
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: false,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.visibility_outlined,
                                color: iconColor),
                          )),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
              SizedBox(height: size.height * 0.05),
              Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  width: size.width * 0.9,
                  height: size.height * 0.07,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AccountScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      // set the elevation to 1
                      elevation: 1,

                      // set the padding of the button using a percentage of the screen height
                      padding:
                          EdgeInsets.symmetric(vertical: size.height * 0.02),

                      // set the color of the button to black
                      // ignore: deprecated_member_use
                      primary: Colors.black,
                    ),

                    // add the text for the button in white using Google Fonts
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: size.width * 0.06,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          height: 1.17),
                    ),
                  )),
              // already have an account
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                      style: GoogleFonts.inter(
                          height: 1.2,
                          fontSize: 14.2,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          color: iconColor)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      "Sign in",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          fontSize: 14.22,
                          color: Colors.black),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
