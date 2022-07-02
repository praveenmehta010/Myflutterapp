import 'package:application/utils/routes.dart';
import 'package:application/widgets/themes.dart';
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
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),
      initialRoute: Myroute.homeRoute,
      routes: {
        "/": (context) => Login(),
        Myroute.loginRoute: (context) => Login(),
        Myroute.homeRoute: (context) => HomePage(),
      },
    );
  }
}
