import 'package:flutter/material.dart';

class User_Details extends StatefulWidget {
Map userprofile;
 User_Details({super.key,required this.userprofile});

  @override
  State<User_Details> createState() => _User_DetailsState(userprofile);
}

class _User_DetailsState extends State<User_Details> {
  Map userprofile;
  _User_DetailsState(this.userprofile);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("${userprofile["name"]}"),
      ),
      body:SizedBox(
        width: double.infinity,

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,

          child:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              margin: EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 20),
              color: Colors.black,
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 30,right:20,bottom: 30,left: 30 ),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Username : ${userprofile["username"]}",
                      style:TextStyle(fontSize: 20,color: Colors.white) ,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Email : ${userprofile["email"]}",
                      style: TextStyle(fontSize: 15,color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Address : ${userprofile["address"]['street']}",
                      style: TextStyle(fontSize: 15,color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Suite ${userprofile["address"]['suite']}",
                      style: TextStyle(fontSize: 15,color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("City : ${userprofile["address"]['city']}",
                      style: TextStyle(fontSize: 15,color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Zipcode : ${userprofile["address"]['zipcode']}",
                      style: TextStyle(fontSize: 15,color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Phone : ${userprofile["phone"]}",
                      style: TextStyle(fontSize: 15,color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Website : ${userprofile['website']}",
                      style: TextStyle(fontSize: 15,color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Company name: ${userprofile['company']['name']}",
                      style: TextStyle(fontSize: 15,color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Company catchPhrase: ${userprofile['company']['catchPhrase']}",
                      style: TextStyle(fontSize: 15,color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Company bs: ${userprofile['company']['bs']}",
                      style: TextStyle(fontSize: 15,color: Colors.white),
                      ),
                      
                    ],
                   ),
                 ),
               ],
             ),
            )
          ],
        ),
      ),
    ),
    ),
    
    );
  }
}