import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int day = 30;
  String name = "Praveen Mehta";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog"),
      ),
      drawer: Drawer(),
      body: Center(
          child: Container(
        child: Text("Hello $name this is a $day days course ':)"),
      )),
    );
  }
}
