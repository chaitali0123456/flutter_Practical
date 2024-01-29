import 'package:flutter/material.dart';

class ScreenFive extends StatelessWidget{

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Republic Day..........!"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child : SingleChildScrollView(
          scrollDirection: Axis.vertical,
        
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              child: Image.network("https://www.shutterstock.com/image-vector/indian-republic-day-celebrations-26th-260nw-1898161372.jpg"),
            ),

            Container(
              height: 200,
              width: 200,
              child: Image.network("https://images.news18.com/ibnlive/uploads/2022/01/republic-day-2022-16429579294x3.jpg",),
            ),

            Container(
              height: 200,
              width: 200,
              child: Image.network("https://t3.ftcdn.net/jpg/03/16/93/92/360_F_316939246_zwjJ0QLwUcXvcFanwiztc1F0bTo1JCf9.jpg"),
            ),

            Container(
              height: 200,
              width: 200,
              child: Image.network("https://t4.ftcdn.net/jpg/04/01/34/91/360_F_401349131_5mUZ0bRDhjS5OQv42gNW7cVWGkpoOJ0K.jpg"),
            ),

            Container(
              height: 200,
              width: 200,
              child: Image.asset("images/test.jpg"),
            )
            
          ],
        ),
      ),
      )

    );
  }
}