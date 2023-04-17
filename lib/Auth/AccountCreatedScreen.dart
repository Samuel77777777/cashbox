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
            SizedBox(height: size.height * 0.1),
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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(size.width * 0.03)),
                width: size.width * 0.9,
                height: size.height * 0.07,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
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
