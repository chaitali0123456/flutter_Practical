import 'package:flutter/material.dart';

class Employee extends StatelessWidget{

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Happy Republic Day.......!"),
        centerTitle: true,
      ),
      body: Container(
        height: 600,
        width: 1080,

        child: Image.network("https://www.shutterstock.com/image-vector/illustration-indian-army-soilder-holding-260nw-1894419163.jpg",
        fit: BoxFit.cover,),
        
      ),
    );
  }
}