import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';

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
      themeMode: ThemeMode.light,
      theme: MyThemes.lighTheme(context),
      darkTheme: MyThemes.darkTheme(context),

      // home: homepage(),

      initialRoute: MyRoutes.homeroute,
      debugShowCheckedModeBanner: false,

      routes: {
        "/": (context) => LoginPage(),
        // "/home": (context) => HomePage(),
        // "/login": (context) => LoginPage(),

        MyRoutes.homeroute: (context) => HomePage(),
        MyRoutes.loginroute: (context) => LoginPage(),
      },
    );
  }
}
