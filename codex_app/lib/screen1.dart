import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  String? name ;
  String? imgUrl ;
   Screen1({super.key , this.name , this.imgUrl } );

   List<String> javaTopics = ["Introduction","Inheritance" , "Interface" , "Pollymorphism","Abstraction"];
   List<String> phpTopics = ["Introduction","Function","Array","Database Connectivity"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$name"),
      ),
      body: ListView.builder(
        itemCount: javaTopics.length,
        itemBuilder: (context, index) {
          print(index);
          return Center(
            child: Container(
              // color: Colors.amber,
              height: 70,
              width: 200,
            child: Text("${javaTopics[index]}",style: TextStyle(fontSize: 25),),
            margin: EdgeInsets.all(40),
            ), 
          );
        },
        
      ),
      
    );
  }
}