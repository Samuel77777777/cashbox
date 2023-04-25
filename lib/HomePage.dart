import 'package:cashbox/AddcasdScreens/Addcash.dart';
import 'package:cashbox/Auth/Login.dart';
import 'package:cashbox/Cashout/Cashout.dart';
import 'package:cashbox/SetttingScreen.dart';
import 'package:cashbox/Utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        centerTitle: true,
        title: Text('Home',
            style: GoogleFonts.inter(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 36,
            ),
            // the actual cash
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('Le',
                  style: GoogleFonts.inter(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  )),
              SizedBox(width: 5),
              Text('1,300,567',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    fontSize: 52,
                    color: Colors.black,
                  ))
            ]),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      // ignore: deprecated_member_use
                      primary: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Addcash');
                    },
                    child: Center(
                      child: Text(
                        'Add Cash',
                        style: GoogleFonts.inter(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 55),
                Container(
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      // ignore: deprecated_member_use
                      primary: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/cashout');
                    },
                    child: Center(
                      child: Text(
                        'Cash Out',
                        style: GoogleFonts.inter(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 38,
              color: iconColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Recent Activity',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // list view
            // ListView(
            //   physics: ScrollPhysics(),
            //   shrinkWrap: true,
            //   padding: EdgeInsets.all(8.0),
            //   children: [
            //     Container(
            //       margin: EdgeInsets.all(5),
            //       decoration: BoxDecoration(
            //           border: Border.all(color: Colors.black, width: 2),
            //           borderRadius: BorderRadius.circular(10)),
            //       child: ListTile(
            //         leading: Icon(Icons.shopping_cart),
            //         title: Text('Cash added',
            //             style: GoogleFonts.inter(
            //               fontStyle: FontStyle.normal,
            //               fontWeight: FontWeight.w600,
            //               fontSize: 13,
            //             )),
            //         subtitle: Text(
            //           '8:40 AM, 20 November 2022',
            //           style: GoogleFonts.inter(
            //               fontStyle: FontStyle.normal, fontSize: 10),
            //         ),
            //         trailing: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Text(
            //               '+500',
            //               style: GoogleFonts.inter(
            //                   fontStyle: FontStyle.normal,
            //                   fontSize: 20,
            //                   fontWeight: FontWeight.w500,
            //                   color: Colors.black),
            //             ),
            //             Text(
            //               'SLL',
            //               style: GoogleFonts.inter(
            //                   fontStyle: FontStyle.normal,
            //                   fontSize: 8,
            //                   fontWeight: FontWeight.w500,
            //                   color: Colors.black),
            //             )
            //           ],
            //         ),
            //       ),
            //     ),
            //     // second container
            //     Container(
            //       margin: EdgeInsets.all(5),
            //       decoration: BoxDecoration(
            //           border: Border.all(color: Colors.black, width: 2),
            //           borderRadius: BorderRadius.circular(10)),
            //       child: ListTile(
            //         leading: Icon(Icons.send_sharp),
            //         title: Text('Cash withdrawn',
            //             style: GoogleFonts.inter(
            //               fontStyle: FontStyle.normal,
            //               fontWeight: FontWeight.w600,
            //               fontSize: 13,
            //             )),
            //         subtitle: Text(
            //           '8:40 AM, 20 November 2022',
            //           style: GoogleFonts.inter(
            //               fontStyle: FontStyle.normal, fontSize: 10),
            //         ),
            //         trailing: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Text(
            //               '-200',
            //               style: GoogleFonts.inter(
            //                   fontStyle: FontStyle.normal,
            //                   fontSize: 20,
            //                   fontWeight: FontWeight.w500,
            //                   color: Colors.black),
            //             ),
            //             Text(
            //               'SLL',
            //               style: GoogleFonts.inter(
            //                   fontStyle: FontStyle.normal,
            //                   fontSize: 8,
            //                   fontWeight: FontWeight.w500,
            //                   color: Colors.black),
            //             )
            //           ],
            //         ),
            //       ),
            //     ),

            //     // third container
            //     Container(
            //       margin: EdgeInsets.all(5),
            //       decoration: BoxDecoration(
            //           border: Border.all(color: Colors.black, width: 2),
            //           borderRadius: BorderRadius.circular(10)),
            //       child: ListTile(
            //         leading: Icon(Icons.shopping_cart),
            //         title: Text('Cash added',
            //             style: GoogleFonts.inter(
            //               fontStyle: FontStyle.normal,
            //               fontWeight: FontWeight.w600,
            //               fontSize: 13,
            //             )),
            //         subtitle: Text(
            //           '8:40 AM, 20 November 2022',
            //           style: GoogleFonts.inter(
            //               fontStyle: FontStyle.normal, fontSize: 10),
            //         ),
            //         trailing: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Text(
            //               '+500',
            //               style: GoogleFonts.inter(
            //                   fontStyle: FontStyle.normal,
            //                   fontSize: 20,
            //                   fontWeight: FontWeight.w500,
            //                   color: Colors.black),
            //             ),
            //             Text(
            //               'SLL',
            //               style: GoogleFonts.inter(
            //                   fontStyle: FontStyle.normal,
            //                   fontSize: 8,
            //                   fontWeight: FontWeight.w500,
            //                   color: Colors.black),
            //             )
            //           ],
            //         ),
            //       ),
            //     ),

            //     // fourth container
            //     Container(
            //       margin: EdgeInsets.all(5),
            //       decoration: BoxDecoration(
            //           border: Border.all(
            //             color: Colors.black,
            //             width: 2,
            //           ),
            //           borderRadius: BorderRadius.circular(10)),
            //       child: ListTile(
            //         leading: Icon(Icons.shopping_cart),
            //         title: Text('Cash added',
            //             style: GoogleFonts.inter(
            //               fontStyle: FontStyle.normal,
            //               fontWeight: FontWeight.w600,
            //               fontSize: 13,
            //             )),
            //         subtitle: Text(
            //           '8:40 AM, 20 November 2022',
            //           style: GoogleFonts.inter(
            //               fontStyle: FontStyle.normal, fontSize: 10),
            //         ),
            //         trailing: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Text(
            //               '+300',
            //               style: GoogleFonts.inter(
            //                   fontStyle: FontStyle.normal,
            //                   fontSize: 20,
            //                   fontWeight: FontWeight.w500,
            //                   color: Colors.black),
            //             ),
            //             Text(
            //               'SLL',
            //               style: GoogleFonts.inter(
            //                   fontStyle: FontStyle.normal,
            //                   fontSize: 8,
            //                   fontWeight: FontWeight.w500,
            //                   color: Colors.black),
            //             )
            //           ],
            //         ),
            //       ),
            //     ),
            //   ],
            // ),

            ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.all(8.0),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text('Cash added',
                        style: GoogleFonts.inter(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        )),
                    subtitle: Text(
                      '8:40 AM, 20 November 2022',
                      style: GoogleFonts.inter(
                        fontStyle: FontStyle.normal,
                        fontSize: 10,
                      ),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          index % 2 == 0
                              ? '+500'
                              : (index == 1 ? '-200' : '+300'),
                          style: GoogleFonts.inter(
                            fontStyle: FontStyle.normal,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'SLL',
                          style: GoogleFonts.inter(
                            fontStyle: FontStyle.normal,
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'See history',
                    style: GoogleFonts.inter(
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
