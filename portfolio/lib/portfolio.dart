
import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  Portfolio({super.key});

  @override
  State<Portfolio> createState() => __portfolioState();
}

class __portfolioState extends State<Portfolio> {
  int count=0;
  void clickfun(){
    setState(() {
      count=count+1;
    });
  }
  Text printname(){
     if(count>=1){
         return Text("Chaitali Pawar",
                    style: TextStyle(fontSize: 30,color: const Color.fromARGB(255, 9, 9, 9) ),);
     }
     else{
           return Text("");
     }
  }
  
  Container printimg(){
    if(count>=2){
        return Container(
          height: 150,
          width: 150,
                      decoration: BoxDecoration(
                       border:Border.all(width: 2,color: Colors.brown.shade500,style: BorderStyle.solid,),
                        borderRadius: BorderRadius.circular(100.0),
                        //color: Colors.black,
                        image: DecorationImage(image: NetworkImage("https://render.fineartamerica.com/images/rendered/medium/canvas-print/16/20/mirror/break/images/artworkimages/medium/1/autumn-sunrise-tithi-luadthong-canvas-print.jpg"),
                        fit: BoxFit.cover),
                      ),
                     );
    }
    else{
      return Container();
    }
  }


   Text printlang( BuildContext context, String lang,int chapcount){
     if(count>=chapcount){
         return Text(lang,
                    style: TextStyle(fontSize: 25,color: Colors.brown.shade800,fontWeight: FontWeight.w500),);
     }
     else{
           return Text("");
     }
  }
   Container reusablecontainer(BuildContext context,String imgurl,int lcount){
      
        if(count >= lcount){
           return Container(
                          height: 150,
                            width: 150,
                            
                            margin: EdgeInsets.only(top:20,left: 10,bottom: 10,right: 10),
                            decoration: BoxDecoration(
                            
                              image: DecorationImage(image: NetworkImage(imgurl),fit: BoxFit.fill),
                              color: Colors.white,
                              boxShadow:[
                                BoxShadow(
                                  color:  Colors.black,
                                  offset: Offset(10, 10),
                                  blurRadius: 10,
                                ),
                                ]
                            ),
                          
                        
           );
          }
          else{
            return Container();
          }
          
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        title: Text("Portfolio",style: TextStyle(fontSize: 30),),
       ),
       floatingActionButton: IconButton(
        onPressed: (){
         clickfun();
        
       }, 
        color: Colors.blue,
       icon:Icon(Icons.add_box),
       ),
       body: SizedBox(
      
          width: double.infinity,
          height: double.infinity,
          
             child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
               child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      SizedBox(height: 30,),
                      printname(),
                      SizedBox(height: 20,),
                       printimg(),
                       SizedBox(height: 20,),
                       Row(
                        children: [
                          SizedBox(width: 120,),
                          printlang(context,"Languages",3), ],),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              reusablecontainer(context, "https://bairesdev.mo.cloudinary.net/blog/2023/05/hombre-de-negocios-hace-clic-en-el-concepto-de-aplicaciC3B3n-del-lenguaje-de-programaciC3B3n-java-en.jpg_s1024x1024wisk20cS6kVBNtZb9e9LsJWe3gCdwxpyGdSvulzCko7c1kVENA.jpg?tx=w_3840,q_auto",4),
                              reusablecontainer(context, "https://images.datacamp.com/image/upload/v1646560927/shutterstock_1329434768_bf9003ea47.jpg",5),
                              reusablecontainer(context, "https://blog.talent500.co/wp-content/uploads/2023/01/Skills-you-need-to-get-a-job-as-a-JavaScript-developer-1.png",6),
                              reusablecontainer(context, "https://media.licdn.com/dms/image/D4D12AQEaTK5_cv5Fmg/article-cover_image-shrink_720_1280/0/1677082453584?e=2147483647&v=beta&t=hy4wcIl2vOpp5lr5k74obYVN63IT-U4lydNOIo3hHGo",7)
                            ],
                          ),
                        ),
                         SizedBox(height: 20,),
                         Row(
                        children: [
                          SizedBox(width: 120,),
                          printlang(context,"Framework",8), ],),
                           SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            
                            children: [
                              reusablecontainer(context, "https://blog.talent500.co/wp-content/uploads/2023/10/Benefits-of-ReactJS.jpg",9),
                              reusablecontainer(context, "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJbfQi7cz4B2qYmUgP8nHIJqR1skAMjjNUdA&usqp=CAU",10),
                              reusablecontainer(context, "https://cdn.servermania.com/images/f_webp,q_auto:best/v1693496622/blog/Featured-4/Featured-4.png?_i=AA",11),
                              reusablecontainer(context, "https://miro.medium.com/v2/resize:fit:670/1*8II_bpoFX_eqtoIzxG-eNg.jpeg",12),
                            ],
                          ),
                        ),

                         SizedBox(height: 20,),
                         Row(
                        children: [
                          SizedBox(width: 120,),
                          printlang(context,"Databases",13), ],),
                           SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            
                            children: [
                             reusablecontainer(context,"https://cms.intuji.com/wp-content/uploads/2023/10/MySQL.png",14),
                             reusablecontainer(context,"https://discover.strongdm.com/hubfs/Imported_Blog_Media/60cbc1205c30f372af2801ce_create-user-mongodb-securely-3.jpeg",15),
                             reusablecontainer(context,"data:image/jpeg;base64,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",16),
                             reusablecontainer(context,"https://i0.wp.com/teclues.com/wp-content/uploads/2020/08/mongo.jpg",17),    
                            ],
                          ),
                        ),


                              SizedBox(height: 20,),
                         Row(
                        children: [
                          SizedBox(width: 120,),
                          printlang(context,"Tools",18), ],),
                           SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            
                            children: [
                             reusablecontainer(context,"https://static-00.iconduck.com/assets.00/git-icon-2048x2048-r06ixacl.png",19),
                             reusablecontainer(context,"https://miro.medium.com/v2/resize:fit:3000/0*r30odGcXiuapymH4",20),
                             reusablecontainer(context,"https://strapi.dhiwise.com/uploads/618fa90c201104b94458e1fb_64fec58f7275d4c0f238ad3a_must_have_extensions_for_vs_code_Main_Image_b28ba3f4bb.jpg",21),
                             reusablecontainer(context,"https://www.tabnine.com/blog/wp-content/uploads/2021/11/blog_image_19-1.png",22),    
                            ],
                          ),
                        ),
                  
                  ],
               ),
             ),
       ),
    );
  }
}







