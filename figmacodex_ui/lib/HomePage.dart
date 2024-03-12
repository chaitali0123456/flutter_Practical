
import 'package:figmacodex_ui/CodeList/merncode.dart';
import 'package:figmacodex_ui/CodeList/javacode.dart';
import 'package:figmacodex_ui/topics.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _HomePageState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 315,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(44, 55, 149, 0.6705882352941176),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(180))),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(45)),
                      image: DecorationImage(
                        image: NetworkImage("https://s3-alpha-sig.figma.com/img/a292/1987/07ec608cb4e03fa67259d43981b91332?Expires=1710720000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=iLQ6fzW5Myvzbi42yPIbsJOEihlJZMCdDNqFMvADgS0IUFoHfxbJHIUhV16NnXpCb1-4SiEZP2Z~qy7pBwwqzD90SXkISF0Zp2cf4Ef3mtIntdvDhR6UMahfTUbLFb56LolQNa9N8fOkoSfIYHxNl7cuhB24wpvIFBzm4geJUh7t5RZC3PhXSeJCbAmJSx8jM5S1gEZNgEAkJYZ0DsJ-cj~Mcv3T-r2Jf~mt-Fazst5tdC6mOGp-CtlmWmgrWxaSlNYQAPF4webkpBkZL7UpRP5u7F1B7WR~5dyA1Lzc3xRLC6CbOKiiHtD9RlhTaHFVieGhQH4EXiOsTrMTXyYT1w__"),
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Hi, Chaitali",
                          style: TextStyle(fontSize: 35,color: Colors.white),
                          ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text("Hope You are Fine",
                                style: TextStyle(color: Colors.white),
                            ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 20, top: 30),
                child: Text(
                  "Courses For You",
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  )),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Topics(CodeList:javacodes),
                          ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20, top: 30),
                      height: 201,
                      width: 183,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text(
                              "Java Full Stack",
                              style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),
                              ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Image.network("https://s3-alpha-sig.figma.com/img/127f/27c7/69077eb5698c6efbc0c65eaca88de29e?Expires=1710720000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=B8bd1PT94JMDiUsJu90o-k6a~tPwXnSgAWzHoS6YHcqCUDAadDtTXqeIPZeikF1xoZW8GAxX1fPyyIYvuh19D0~zzz4qjnHvlUv8ocI3bEX9IM5Ccp7vHQuHgBPRWCRMmytTpq--XawHyvIJu3N8garsdKzHOyi7CjeaTVGzRdASXG7k~3nwbHYzwbTxBIREE5iauazXDxKE0VEPNwUhkEdlN1JenRZ3gSUGkRaotd~-IKbzKR~F2kx8Ejewog8bGpBooVhZk3jep2dheG9luCj6LqiN-Q9~ax67LJNbKT1X6iQd9WyZ3TDReQLz3aRlck6FkGYcm4I~2L0hyqsaFA__",
                              height: 120,
                              width: 120,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        // border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(93, 108, 244, 0.67),
                            Color.fromRGBO(210, 21, 33, 0.667)
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Topics(
                              CodeList: mernList,
                            ),
                          ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20, top: 30),
                      height: 201,
                      width: 183,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text(
                              "MERN Stack",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Image.network("https://s3-alpha-sig.figma.com/img/f6b8/de33/edc5f33c949491d5a12482bfa703e913?Expires=1710720000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=jHWx2Gk3RZPAzQzuRU6oSKGRe~VqLfgh6qM-RW1sgSvU9BzC0YE-H8pKaygoV6Lt~ouujmlzNZQDH0unUV4r--00VTzkjnmFc5-5QnYhYQGgJ7TP7EKVpC0uOIt3cGZT3biKg1RB1gPHw793c8nV788ZFYm39MfjoZ~5ZssFvtTdz8B2xDkCAZISnIKCAw3bP8KTgJeGsve70VvOY7J7694StRptBu5GIBN2ZTGk~93Krm6c8hesN8KJqm2z7LdNp4BLy0OInX9UzqFgENmbGn-xcH4we-D6AjMudTOfUFuRJDdNudd0Y6y~RP3~f~NntNkeYx73fD5oQjrOogXgQg__",
                              height: 120,
                              width: 120,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        // border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(244, 132, 132, 1),
                            Color.fromRGBO(153, 4, 4, 1)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 20, top: 30),
                child: Text(
                  "Upcoming Courses",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                  )),
            Container(
              height: 157,
              width: 353,
              margin: EdgeInsets.only(left: 15, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          "9th March 2024",
                          style: TextStyle(color: Colors.white,fontSize: 20),
                          ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 45,top: 10),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8))),
                                            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)
                                              ),
                              onPressed: () {},
                              child: Text(
                                "Join Demo",
                                style: TextStyle(color: Colors.white),
                                
                              )))
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 12),
                    child: Text(
                      "10 am - 12 am",
                      style: TextStyle(color: Colors.white),
                       ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50, top: 20),
                    child: Text(
                      "Flutter App Developmet",
                      style: TextStyle(fontSize: 20,color: Colors.white),
                       ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(244, 132, 132, 1),
                    Color.fromRGBO(153, 4, 4, 1)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}