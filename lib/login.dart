import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Container(
            width: 100.w,
            height: 36.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50.0),  // Adjust the radius as needed
                bottomRight: Radius.circular(20.0),  // Adjust the radius as needed
              ),
              image: DecorationImage(
                image: AssetImage('assets/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height:0.5.h
                ),
                Image.asset(
                  'assets/student.png',
                  height: 20.h,
                  width: 40.w,

                ),
                SizedBox(height: 2.h), // Adjust spacing between image and text
                Text(
                  'Student Task Manager',
                  style: TextStyle(color: Colors.white, fontSize: 4.5.h ,fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Image.asset(
                    "assets/bg.png"


                  ),
                  Container(

                    decoration: BoxDecoration(
                       // Your container background color
                      color:Colors.blue,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50.0),  // Adjust the radius as needed
                          // Adjust the radius as needed
                      ),

                    ),
                  padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 5.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Align(
                       alignment: Alignment.center,
                        child: Text(
                          'Login',
                        textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 4.h, fontWeight: FontWeight.w900,
                          color: Colors.black ),
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Sign in to continue',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 2.h,
                              ),
                        ),
                      ),
                      TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: "Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 3.h), // Adjust spacing between fields
                      TextField(
                        style: TextStyle(),
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 6.h), // Adjust spacing before the Sign In button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'dashboard');
                            },
                            child: Text(
                              'Sign In',
                              style: TextStyle(fontSize: 16),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black, // Button background color
                              onPrimary: Colors.white, // Text color
                              minimumSize: Size(80.w, 10.h),
                              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20), // Button padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // Button border radius
                              ),
                            ),
                          )

                        ],
                      ),
                      SizedBox(height: 3.h), // Adjust spacing after the Sign In button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'register');
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0xff4c505b),
                                fontSize: 3.h,
                              ),
                            ),
                            style: ButtonStyle(),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0xff4c505b),
                                fontSize: 3.h,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
            ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
