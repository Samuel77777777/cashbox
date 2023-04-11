import 'package:cashbox/Utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Account",
          style: GoogleFonts.inter(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: backgroundColor,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          ListTile(
              leading: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.black,
              ),
              title: Text(
                'Master Chief Abu',
                style: GoogleFonts.inter(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.black),
              ),
              subtitle: Text(
                '@MasterChief',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                ),
              )),
          SizedBox(
            height: 38,
          ),
          Container(
            height: 400,
            color: myColor,
            child: Column(
              children: [
                ListTile(
                  leading:
                      Icon(Icons.account_circle_outlined, color: Colors.black),
                  title: Text('Setting One',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                          color: Colors.black)),
                ),
                ListTile(
                  leading:
                      Icon(Icons.account_circle_outlined, color: Colors.black),
                  title: Text('Setting One',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                          color: Colors.black)),
                ),
                ListTile(
                  leading:
                      Icon(Icons.account_circle_outlined, color: Colors.black),
                  title: Text('Setting One',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                          color: Colors.black)),
                ),
                ListTile(
                  leading:
                      Icon(Icons.account_circle_outlined, color: Colors.black),
                  title: Text('Setting One',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                          color: Colors.black)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
