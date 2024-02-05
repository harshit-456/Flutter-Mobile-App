import 'package:flutter/material.dart';
import 'package:mobile_app/login.dart';
import 'package:mobile_app/register.dart';
import 'package:mobile_app/dashboard.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //it requires 3 parameters
    //context, orientation, device
    //it always requires, see plugin documentation
    return Sizer(builder: (context, orientation, device) {
      return MaterialApp(
        initialRoute: 'login', //initial screen
        routes: {
          //various screens
          'login': (context) => MyLogin(),
          'register': (context) => MyRegister(),
          'dashboard': (context) => MyDashboard()
        },
      );
    });
  }
}
