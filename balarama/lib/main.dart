import 'package:balarama/screens/rootPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          primaryColor: Colors.green,
          accentColor: Color(0xff075E54),
        ),
        home: IndexPage());
  }
}