import 'package:cashbox/AddcasdScreens/Addcashsuccess.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Utils.dart';

class AddCash extends StatelessWidget {
  const AddCash({super.key});

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
            child: Column(children: [
          SizedBox(
            height: size.height * 0.12,
          ),
          Center(child: Image(image: AssetImage('./assets/addcash.png'))),
          SizedBox(height: size.height * 0.08),
          Center(
            child: Text(
              'Wallet is empty. Add cash from\n mobile money to your wallet',
              style: GoogleFonts.inter(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  fontSize: size.width * 0.05,
                  color: iconColor,
                  height: 1.24),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: size.height * 0.06),
          Text(
            'Add cash to wallet',
            style: GoogleFonts.inter(
              fontSize: size.width * 0.06,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
            ),
          ),
          SizedBox(height: size.height * 0.06),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.width * 0.03)),
              width: size.width * 0.9,
              height: size.height * 0.07,
              child: ElevatedButton(
                onPressed: () {
                  _showAddCashModal(context);
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  elevation: 1,

                  padding: EdgeInsets.symmetric(vertical: size.height * 0.02),

                  // set the color of the button to black
                  // ignore: deprecated_member_use
                  primary: Colors.black,
                ),
                child: Text(
                  overflow: TextOverflow.visible,
                  "Add Cash",
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ))
        ])));
  }
}

// add cash function

void _showAddCashModal(BuildContext context) {
  final Size size = MediaQuery.of(context).size;
  showModalBottomSheet<void>(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: 274,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 30),
              Text(
                'Choose mobile money wallet',
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    color: Colors.black,
                    height: 1.5),
              ),
              SizedBox(height: 20),
              Text(
                'Cash can be added from mobile money\n account. Select mobile money to add cash.',
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    fontSize: 13,
                    height: 1.2),
              ),
              SizedBox(height: 44),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(size.width * 0.03)),
                width: size.width * 0.9,
                height: size.height * 0.07,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/addcashbalance');
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
                    "Orange Money",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
