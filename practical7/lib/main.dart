import 'package:flutter/material.dart';
import 'package:practical7/appbar.dart';
// import 'package:practical7/boxcolorchange.dart';
import 'package:practical7/increment.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: "this is app",
        home: AppIcon() 
      
    );
  }
}
