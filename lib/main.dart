import 'package:flutter/material.dart';
import 'Home_Page.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );    
  }
}