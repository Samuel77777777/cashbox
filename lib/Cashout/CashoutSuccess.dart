import 'package:cashbox/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Utils.dart';

class CashSuccess extends StatelessWidget {
  const CashSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    // get the screen size of the device
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        // set the background color to white
        backgroundColor: backgroundColor,
        elevation: 0,

        // add a back button that doesn't do anything when pressed
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        // add the title of the page in black using Google Fonts
        title: Text(
          'Cash out',
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              fontSize: 20,
              color: Colors.black),
        ),

        // center the title
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 159),
            Center(
                child: Image.asset(
              './assets/hand.png',
              fit: BoxFit.cover,
            )),
            SizedBox(height: 43),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                'Cash has been sent to your\n mobile money account. Tap\n button to go back to the home\n menu.',
                style: GoogleFonts.inter(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    color: iconColor,
                    height: 1.5),
              ),
            ),
            SizedBox(
              height: 128,
            ),
            Container(
                // set the border radius to 10
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),

                // set the width and height of the container
                width: size.width * 0.9,
                height: size.height * 0.07,

                // add an ElevatedButton to add cash to the wallet
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
                    "Home",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: size.width * 0.06,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
