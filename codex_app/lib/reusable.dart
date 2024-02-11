import 'package:codex_app/Screen2.dart';
import 'package:codex_app/screen1.dart';
import 'package:flutter/material.dart';

class ReusableCards extends StatelessWidget {
  ReusableCards({super.key});
  
  Widget reusableContainer(BuildContext context , String name , String imgUrl){
    return InkWell(
      onTap:() => {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen1(name:name , imgUrl : imgUrl)),
          
        )
      },
      child: Container(
        // color: Colors.amber,
        height: 200,
        width: 200,
        margin: EdgeInsets.only(left:60,top: 20,bottom: 20),
        // child: Center(child:Image.network(imgUrl),),
        decoration: BoxDecoration(
                    border: Border.all(color: Colors.black , width: 3  ,style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(250),
                    image: DecorationImage(image: NetworkImage(imgUrl)),
                  ),
        
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CodeX App",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
        actions: [
          IconButton(
            onPressed: () {
              print("click on add");
            },
            icon: Icon(Icons.search, color: Colors.black),
            tooltip: "search",
            color: Colors.blue,
          ),
        ],
        ),
      body: SizedBox(
        child: Container(
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(height: 20,),
              Text("Languages",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
              SizedBox(height: 10,),
              SingleChildScrollView(scrollDirection: Axis.horizontal,

              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  reusableContainer(context , "Java" , "https://cdn.iconscout.com/icon/free/png-256/free-java-60-1174953.png"),
                  reusableContainer(context , "Php" , "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHtSR57dZznCsbDGWnISQZgtpLvHLTqZx23Q&usqp=CAU"),
                  reusableContainer(context , "Dart","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvEVbs09pDUz40KLNQyDpg2lBrEKFrR80v0YuBJPXFzA&s"),
                ],
              ),
              ),
              Text("Framworks",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              SingleChildScrollView(scrollDirection: Axis.horizontal,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  reusableContainer(context , "Hibernate" , "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjvuh_S-lEUnod2fBzix7wISu9MNtmExox31OiGCMRjQ&s"),
                  reusableContainer(context , "Flutter" , "https://play-lh.googleusercontent.com/DGJ2OhH8GD92VnBtOrfThkKflETS9xfTWMWrpq_nLED2CynN9nUtAbjIjQtwrBPmhEkL"),
                  reusableContainer(context , "Spring","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlb5HtghUVALLw32JZvpyTLlYk3GAaZuvm-Q&usqp=CAU"),
                ],
              ),
              ),
              Text("Databases",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              SingleChildScrollView(scrollDirection: Axis.horizontal,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  reusableContainer(context , "MySQL" , "https://static-00.iconduck.com/assets.00/database-mysql-icon-1849x2048-81vgyimd.png"),
                  reusableContainer(context , "MongoDB" , "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4Vn-GdDDHy_LJP5hm6O1QS653AZcMF_k_qA&usqp=CAU"),
                  reusableContainer(context , "Oracle","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhKIdGaThC0vlnnUJ9ltwu4jqUM4buBYGfEg&usqp=CAU"),
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