import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  int day = 30;
  String name = "Praveen Mehta";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog"),
      ),
      drawer: MyDrawer(),
      body: Center(
          child: Container(
        child: Text("Hello $name this is a $day days course ':)"),
      )),
    );
  }
}
