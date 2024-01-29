import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Margin and padding"), centerTitle: true,),
      
      body: Container(
        height: 400,
        width: 400,
        // color: Colors.blue,
        margin: EdgeInsets.only(left: 480,top:100),
        // padding: EdgeInsets.only(left: 50),
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 255, 7, 193),width: 10, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(800),
          color: Colors.pink ,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(10, 10),
              blurRadius: 10
            )
          ],
          image: DecorationImage(image: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/025/284/015/small_2x/close-up-growing-beautiful-forest-in-glass-ball-and-flying-butterflies-in-nature-outdoors-spring-season-concept-generative-ai-photo.jpg"),
          fit: BoxFit.cover)

          
        )
       )
    );
  }
}
