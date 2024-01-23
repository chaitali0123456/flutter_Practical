import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'first_app',
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color:Color.fromARGB(255, 247, 32, 32),
                height: 250,
                width: 250,
              ),
              Container(
                color: Color.fromARGB(255, 55, 22, 201),
                height: 250,
                width: 250,
              ),
              Container(
                color: Color.fromARGB(255, 207, 17, 150),
                height: 250,
                width: 250,
              )
            ],
          ),
        ),
      ),
    );
  }
}
