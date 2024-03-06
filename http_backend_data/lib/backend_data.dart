import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_backend_data/user_details.dart';


class BackendData extends StatefulWidget {
  const BackendData({super.key});

  @override
  State<BackendData> createState() => _BackendDataState();
} 

class _BackendDataState extends State<BackendData> {

  List data= [];

  fetchdata()async{
    var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    
     data = json.decode(response.body);

    setState(() {
      
    });
  }


  @override
  void initState() {
    super.initState();
    print("initstate");
    fetchdata();
  }
  @override
  Widget build(BuildContext context) {
    // print("bulid method ");
    return Scaffold(
      appBar: AppBar(
        title: Text("Users Backend Data"),
      ),
      body: ListView.builder(
        itemCount:  data.length,
        itemBuilder: (context, index) {
          return Container(  
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStatePropertyAll(Size(200, 50))
              ),
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => User_Details(userprofile: data[index],),));
              }, 
              child: Text("${data[index]['name']}")),
          );
        },),
    );
  }
}