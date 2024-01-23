import 'package:flutter/material.dart';

class Employee extends StatelessWidget{

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("My first App"),
      ),
      body: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
            Column(
              children: [
                SizedBox(height: 50),
                Container(
                  color: Color.fromARGB(255, 88, 35, 11),
                  height: 100,
                  width: 100,
                ),
                SizedBox(height: 50),
                Container(
                  color: Color.fromARGB(255, 233, 90, 24),
                  height: 100,
                  width:100,
                ),
                SizedBox(height: 50),
                Container(
                  color: Color.fromARGB(255, 110, 29, 202),
                  height: 100,
                  width: 100,
                )
              ],
            ),
            Column(
              children: [
                SizedBox(height: 50),
                Container(
                  color: Color.fromARGB(255, 12, 108, 218),
                  height: 100,
                  width: 100,
                ),
                SizedBox(height: 50),
                Container(
                  color: Color.fromARGB(255, 219, 37, 243),
                  height: 100,
                  width: 100,
                ),
                SizedBox(height: 50),
                Container(
                  color: Color.fromARGB(255, 126, 14, 29),
                  height: 100,
                  width: 100,
                )
              ],
            )
           ],
        ),
      ),

    );

  }
} 
