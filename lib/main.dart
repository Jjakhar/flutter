import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // int x = 1;
    // String name = "Jaiyant Jakhar";

    return MaterialApp(
      // home: homepage(),

      // initialRoute: "/home",

      routes: {
        "/": (context) => loginpage(),
        // "/home": (context) => homepage(),
        // "/login": (context) => loginpage(),

        myroutes.homeroute: (context) => homepage(),
        myroutes.loginroute: (context) => loginpage(),
      },
    );
  }
}
