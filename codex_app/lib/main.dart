// import 'package:codex_app/program1.dart';
import 'package:codex_app/reusable.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CodeX App",
      home: ReusableCards(),
    );
  }
}
