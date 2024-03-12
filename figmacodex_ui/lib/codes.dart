
import 'package:figmacodex_ui/topics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Codes extends StatefulWidget {
  Map CodeList;

  Codes({super.key, required this.CodeList});

  @override
  State<Codes> createState() => _CodesState(CodeList);
}

class _CodesState extends State<Codes> {
  Map? CodeList;
  _CodesState(this.CodeList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFF9B89CE),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 50, right: 10, top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Topics(),
                                ));
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new_sharp,
                            color: Colors.white,
                          )),
                      Text(
                        'Java',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),
                      ),
                      Text(
                        'Full Stack',
                        style: TextStyle(fontSize: 25,color: Colors.white)
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 70, left: 30,right: 30),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(62, 35, 232, 1),
                          Color.fromRGBO(0, 0, 0, 1)
                        ]),
                    image:
                        DecorationImage(image: NetworkImage("https://s3-alpha-sig.figma.com/img/f03d/a731/d2095c64ead756e0f3226bba3566b04d?Expires=1710720000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FSw3eum3E6cC9UFbDqrZ8M4Tee4~rt04RpXmBc4rRZJdxR3TtkPjQe8Dqb2pUDaN0s8Oy4Jny583dfcQSHlxoIywc-zpM2gtE~qJCnBVPXzfNvaD4Xr4JvjUfLaf-4VLZ9teOw1Ir9OGD0xH6Ry~ouXNBxms~HsDfl0WliRX8MfYTc1vna9xuVOxSH~DV~PIhYLXU~lpSceLT9mfTV-61FXcNZEs-FiystV2A~ZB2fb6jbSTdQG6k5E4DdfiFbFzp866YRa~O8uar2ivncuQmq-80XG3SpPWUPI58l1ZfG4JJCyFy0E8sSjkgbnRI2yM1rgpttrkxUjD~1TKT6PE3w__"))),
              )
            ],
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 50),
              padding: const EdgeInsets.only(top: 10),
              // height: 544,
             
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Text(CodeList!['title'],
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                        ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 2,
                    width: double.infinity,
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 0, left: 30),
                        child: Icon(Icons.circle, size: 10),
                      ),
                      Container(
                          height: 35,
                          width: 210,
                          margin: const EdgeInsets.only(top: 20, left: 10),
                          child: Text(
                            "What is Java",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)
                          ))
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 35, top: 0),
                    height: 60,
                    width: 300,
                    child: Text(
                      'lorem ipsum lorem ipsum lorem ipsum lorem ipsum  ',
                      
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 5, left: 30),
                        child: Icon(Icons.circle, size: 10),
                      ),
                      Container(
                          height: 35,
                          width: 250,
                          margin: const EdgeInsets.only(top: 20, left: 10),
                          child: Text(
                            'Java is Platform Independent',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)
                          ))
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 35, top: 0),
                    height: 60,
                    width: 300,
                    child: Text(
                      'lorem ipsum lorem ipsum lorem ipsum lorem ipsum',
                      
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                        height: 400,
                        child: Center(
                          child: ListView.builder(
                            itemCount: CodeList!['codes'].length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(top: 10,left: 20),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text('Code ${index+1}',
                                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)
                                        )
                                        
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.all( 20),
                                      child: Container(
                                        margin: EdgeInsets.only(right: 14),
                                        padding: EdgeInsets.all(10),
                                        color: Colors.black,
                                        child: Text("${CodeList!['codes'][index]}",
                                              style:TextStyle(color: Colors.white) ,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  
}