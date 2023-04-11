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
            'Add Cash',
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
            // create a scrollable column for the content
            child: Column(children: [
          // add a SizedBox to create some space between the app bar and the content
          SizedBox(
            height: size.height * 0.12,
          ),

          // add an image using an AssetImage
          Center(child: Image(image: AssetImage('./assets/addcash.png'))),

          // add another SizedBox to create some space between the image and the text
          SizedBox(height: size.height * 0.08),

          // add a text widget to explain what the user needs to do
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

          // add another SizedBox to create space between the text and the button
          SizedBox(height: size.height * 0.06),

          // add a header for the button
          Text(
            'Add cash to wallet',
            style: GoogleFonts.inter(
              fontSize: size.width * 0.06,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
            ),
          ),

          // add another SizedBox to create space between the header and the button
          SizedBox(height: size.height * 0.06),

          // add a container to hold the button
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
                  _showAddCashModal(context);
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddCashSuccess()),
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
