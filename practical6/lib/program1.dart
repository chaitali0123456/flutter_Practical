import 'package:flutter/material.dart';

class Screen extends StatelessWidget{

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Column"),
        // centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Container(
              height: 200,
              width: 200, 
              color: Color.fromARGB(255, 216, 32, 8),
            ),
            
            SizedBox(height: 20),
             Container(
              height: 200,
              width: 200, 
              color: Color.fromARGB(255, 122, 8, 216),
            ),
          ],
        ),
      ),
    );
  }
}