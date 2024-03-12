
import 'package:figmacodex_ui/HomePage.dart';
import 'package:figmacodex_ui/codes.dart';
import 'package:flutter/material.dart';


class Topics extends StatefulWidget {
  List? CodeList = [];
  Topics({super.key,this.CodeList});

  @override
  State<Topics> createState() => _TopicsState(CodeList);
}

class _TopicsState extends State<Topics> {
  List? CodeList = [];
  _TopicsState(this.CodeList);

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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
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
                      Container(
                        child: Text(
                          'Full Stack',
                          style: TextStyle(fontSize: 25,color: Colors.white)
                        ),
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
                    image: DecorationImage(
                        image: NetworkImage("https://s3-alpha-sig.figma.com/img/f03d/a731/d2095c64ead756e0f3226bba3566b04d?Expires=1710720000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FSw3eum3E6cC9UFbDqrZ8M4Tee4~rt04RpXmBc4rRZJdxR3TtkPjQe8Dqb2pUDaN0s8Oy4Jny583dfcQSHlxoIywc-zpM2gtE~qJCnBVPXzfNvaD4Xr4JvjUfLaf-4VLZ9teOw1Ir9OGD0xH6Ry~ouXNBxms~HsDfl0WliRX8MfYTc1vna9xuVOxSH~DV~PIhYLXU~lpSceLT9mfTV-61FXcNZEs-FiystV2A~ZB2fb6jbSTdQG6k5E4DdfiFbFzp866YRa~O8uar2ivncuQmq-80XG3SpPWUPI58l1ZfG4JJCyFy0E8sSjkgbnRI2yM1rgpttrkxUjD~1TKT6PE3w__"))),
              )
            ],
          ),
          Expanded(
            child: Container(
                margin: EdgeInsets.only(top: 50),
                padding: EdgeInsets.only(top: 20),
                height: 544,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                        
                      child: Center(
                        child: Container(
                          child: ListView.builder(
                           
                            itemCount:CodeList!.length,
                                
                            itemBuilder: (context, index) {
                            return  Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Codes(CodeList: CodeList![index]),));
                                },
                                              
                                child: Container(
                                    height: 120,
                                    width: 300,
                                    margin: EdgeInsets.only(top: 20),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.horizontal(
                                            left: Radius.circular(100), right: Radius.circular(10)),
                                        boxShadow: [
                                          BoxShadow(offset: Offset(2, 2), blurRadius: 1, color: Colors.grey)
                                        ]),
                                    child: Row(
                                      children: [
                                        
                                        Container(
                                          margin: EdgeInsets.only(left: 20),
                                          height: 70,
                                          width: 90,
                                          decoration: BoxDecoration(
                                              color: Colors.grey, borderRadius: BorderRadius.circular(100)),
                                        ),
                                       
                                        Container(
                                          margin: EdgeInsets.only(left: 10),
                                          child: Text(
                                            '${CodeList![index]['title']}',
                                           style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              ),
                        
                            );
                            
                          },),
                        ),
                      ),
                        
                        ),
          ),
        
      
        
        
        ],
      ),
    );
  }
}