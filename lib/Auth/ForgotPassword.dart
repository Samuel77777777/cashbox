import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    // get the screen size
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // add some space at the top of the screen
              SizedBox(height: 160),
              Center(
                child: Text(
                  'Forgot Password',
                  style: GoogleFonts.inter(
                    fontSize: size.width * 0.1, // make the font size responsive
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Text(
                'Enter your Email to \n  Regain your password ',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    fontSize:
                        size.width * 0.05, // make the font size responsive
                    color: Color(0xFF808080),
                    height: 1.375),
              ),

              SizedBox(
                height: size.height * 0.04,
              ),
              Container(
                width: size.width * 0.9,
                alignment: Alignment.center,
                // add some padding to the container
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
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
                              fontSize: size.width *
                                  0.05, // make the font size responsive
                              fontStyle: FontStyle.normal,
                              height: 1.375,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextFormField(
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontSize: 18,
                          height: 1.2),
                      obscureText: false,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(size.width * 0.04),
                          ),
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: size.width * 0.002,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(size.width * 0.04),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.07),
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

                      padding:
                          EdgeInsets.symmetric(vertical: size.height * 0.02),

                      // ignore: deprecated_member_use
                      primary: Colors.black,
                    ),
                    child: Text(
                      overflow: TextOverflow.visible,
                      "Enter",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
