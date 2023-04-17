import 'package:cashbox/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Utils.dart';

class AddCashSuccess extends StatelessWidget {
  const AddCashSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    // get the screen size of the device
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Add Cash',
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              fontSize: 20,
              color: Colors.black),
        ),
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
                'Cash has been added\n successfully. Tap button to go\n back to the home menu.',
                style: GoogleFonts.inter(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    color: iconColor),
              ),
            ),
            SizedBox(
              height: 128,
            ),
            Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
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
                    "Home",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
