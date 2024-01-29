import 'dart:html';

import 'package:flutter/material.dart';

class IncrementCount extends StatefulWidget {
  const IncrementCount({super.key});

  @override
  State<IncrementCount> createState() => _IncrementCountState();
}

class _IncrementCountState extends State<IncrementCount> {
  int count = 0 ;
  @override
  Widget build(BuildContext context) {
    print("increment build");
    return Scaffold(
      appBar: AppBar(title: Text("Statfull widget"),),

      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$count"),

              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                setState(() {
                  count++;
                }
                );
              },
              child: Text("increment")) ,

              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                setState(() {
                  count = 0;
                }
                );
              },
              child: Text("Reset"))
              
            ],
          ),
        ),
      ),
    );
    
  }
}