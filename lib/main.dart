import 'package:flutter/material.dart';
import 'pages/Home_Page.dart';
import 'pages/Login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      // initialRoute: "/home",
      routes: {
        "/": (context) => Login(),
        "/Login_page": (context) => Login(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
