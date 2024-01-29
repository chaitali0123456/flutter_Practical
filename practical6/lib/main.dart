import 'package:flutter/material.dart';
import 'package:practical6/program1.dart';
import 'package:practical6/program2.dart';
import 'package:practical6/program3.dart';
import 'package:practical6/program4.dart';
import 'package:practical6/program5.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "this is my app",
      home: Screen(),
      //home: ScreenOne(),
      // home: ScreenTwo(),
      // home: ScreenFour(),
      //home: ScreenFive(),
    );
  }
}
