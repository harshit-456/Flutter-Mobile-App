import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
class MyDashboard extends StatefulWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/dashboard.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10, top: 30),
                child: Image.asset(
                    "assets/student_2.png",
                  width: 35.w,
                  height:100.h
                ),
              ),
              Column(
                children: [
                   Container(
                margin: EdgeInsets.only(left: 5, right: 30,top:40.h),
                    child: Text(
                      'UPCOMING\nDEADLINES',
                      style: GoogleFonts.goudyBookletter1911(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w800,
                          ),
                    ),
                    ),
                  ),
                  Container(

                    margin: EdgeInsets.only(left: 5, right: 30),
                    child: ElevatedButton(

                      onPressed: () {
                        // Add your sign-in logic here
                      },
                      child: Text(
                        'STAY ON TOP OF YOUR TO-DO\nLIST WITH THIS DASHBOARD\nVIEW',
                        style: TextStyle(fontSize: 12),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, // Button background color
                        onPrimary: Colors.white, // Text color,
                        minimumSize: Size(52.w, 5),
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal:5),
                        // Button padding
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Button border radius
                        ),
                      ),
                    ),
                  ),
                ],
              )
              ],
              ),

    ), );
  }
}
