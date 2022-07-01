import 'package:flutter/material.dart';
import 'pages/Home_Page.dart';
import 'pages/Login_page.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.red),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/home",
      routes: {
        "/": (context) => Login(),
        "/Login_page": (context) => Login(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
