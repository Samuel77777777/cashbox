// ignore_for_file: deprecated_member_use

import 'package:cashbox/Auth/AccountCreatedScreen.dart';
import 'package:cashbox/Auth/Login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Utils.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  bool _passwordvisible = false;

  // controllers
  final fullnameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

// for validation
  late String _fullName;
  late String _email;
  late String _phone;
  late String _password;

// to submit the form
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, '/Accountcreate');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
      ),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Create new account",
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
              SizedBox(height: 30),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        child: Container(
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
                                controller: fullnameController,
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
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your full name';
                                  }
                                  return null;
                                },
                                onSaved: (value) => _fullName = value!,
                              ),
                            ],
                          ),
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
                              controller: emailController,
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
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your email';
                                } else if (!value.contains('@')) {
                                  return 'Please enter a valid email';
                                }
                                return null;
                              },
                              onSaved: (value) => _email = value!,
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
                              controller: phoneController,
                              style: myTextStyle,
                              keyboardType: TextInputType.phone,
                              obscureText: false,
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.phone_outlined,
                                    color: iconColor),
                              )),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your phone number';
                                }
                                return null;
                              },
                              onSaved: (value) => _phone = value!,
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
                              controller: passwordController,
                              style: myTextStyle,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: _passwordvisible,
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _passwordvisible = !_passwordvisible;
                                  });
                                },
                                icon: Icon(
                                    _passwordvisible
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: iconColor),
                              )),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your password';
                                } else if (value.length < 6) {
                                  return 'Password must be at least 6 characters';
                                }
                                return null;
                              },
                              onSaved: (value) => _password = value!,
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
                    onPressed: _submitForm,
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                      elevation: 1,

                      padding:
                          EdgeInsets.symmetric(vertical: size.height * 0.02),

                      // ignore: deprecated_member_use
                      primary: Colors.black,
                    ),
                    child: Text(
                      overflow: TextOverflow.visible,
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
                      Navigator.pushNamed(context, '/');
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
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
