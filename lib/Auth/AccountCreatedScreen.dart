import 'package:cashbox/Auth/Login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 169,
            ),
            Center(
              child: Text(
                'Your account has \n been created',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 69,
            ),
            Center(
              child: Image(image: AssetImage('./assets/accountcreated.png')),
            ),
            SizedBox(
              height: 195,
            ),
            Container(
                // set the border radius to 10
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(size.width * 0.03)),

                // set the width and height of the container
                width: size.width * 0.9,
                height: size.height * 0.07,

                // add an ElevatedButton to add cash to the wallet
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // set the elevation to 1
                    elevation: 1,

                    // set the padding of the button using a percentage of the screen height
                    padding: EdgeInsets.symmetric(vertical: size.height * 0.02),

                    // set the color of the button to black
                    // ignore: deprecated_member_use
                    primary: Colors.black,
                  ),

                  // add the text for the button in white using Google Fonts
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                )),
          ],
        )),
      ),
    );
  }
}
