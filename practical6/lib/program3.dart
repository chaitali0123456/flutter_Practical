import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget{

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Normal Row Image"),
        centerTitle: true,
      ),
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(width: 50),
            Container(
              height: 300,
              width: 300,
              child: Image.network("https://images.news18.com/ibnlive/uploads/2022/01/republic-day-2022-16429579294x3.jpg"),
            ),

            SizedBox(width: 50),
            Container(
              height: 300,
              width: 300,
              child: Image.network("https://www.shutterstock.com/image-vector/illustration-indian-army-soilder-holding-260nw-1894419163.jpg"),
            ),

            SizedBox(width: 50),
            Container(
              height:300,
              width: 300,
              child: Image.network("https://t4.ftcdn.net/jpg/04/81/81/43/360_F_481814341_VKkqmADJI7s3tKJNQiNHDmohID9oJiT1.jpg"),
            )
          ],
        ),
      ),
    );
  }
}