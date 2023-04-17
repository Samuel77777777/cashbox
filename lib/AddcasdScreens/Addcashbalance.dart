import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Utils.dart';

class Addcashbalance extends StatelessWidget {
  const Addcashbalance({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Le',
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    )),
                Text(
                  '1,300,567',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                      fontSize: 52),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text('Current wallet balance: 0',
                style: GoogleFonts.inter(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: iconColor,
                )),
            SizedBox(height: 20),
            //phone
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: TextFormField(
                style: myTextStyle,
                keyboardType: TextInputType.phone,
                obscureText: false,
                decoration: InputDecoration(),
              ),
            ),
            SizedBox(height: 200),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(size.width * 0.03)),
                width: size.width * 0.9,
                height: size.height * 0.07,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Addcashsuccess');
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
                    "Add cash",
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
