import 'package:flutter/material.dart';

class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Instagram", style: TextStyle(color: Colors.black)),
        actions: [
         IconButton(onPressed: (){print("click on add");},icon: Icon(Icons.favorite,color:Colors.black),tooltip: "like", color: Colors.blue,),
               IconButton(onPressed: (){print("click on add");},icon: Icon(Icons.message,color:Colors.black),tooltip: "messgae", color: Colors.blue,),
        ],
      ),

      body: SizedBox(
        
        child: Container(
          color: Colors.black,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  Container(
                    child: Image.network("https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg?cs=srgb&dl=pexels-james-wheeler-417074.jpg&fm=jpg",
                    fit: BoxFit.cover,),
                    height: 400,
                    // width: 400,
                      
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                       IconButton(onPressed: (){print("click on add");},icon: Icon(Icons.favorite,color:const Color.fromARGB(255, 236, 234, 234)),tooltip: "like", color: Colors.blue,),
                       IconButton(onPressed: (){print("click on add");},icon: Icon(Icons.comment,color:Color.fromARGB(255, 243, 239, 239)),tooltip: "like", color: Colors.blue,),
                       IconButton(onPressed: (){print("click on add");},icon: Icon(Icons.share,color:const Color.fromARGB(255, 245, 244, 244)),tooltip: "like", color: Colors.blue,),
                      
                      Container(
                        width: 250,  
                      ),
                    ]
                      ),
                       Container(
                    child: Image.network("https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg",
                    fit: BoxFit.cover,),
                    height: 400,
                    width: 400,
                    
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                       IconButton(onPressed: (){print("click on add");},icon: Icon(Icons.favorite,color:const Color.fromARGB(255, 245, 243, 243)),tooltip: "like", color: Colors.blue,),
                     IconButton(onPressed: (){print("click on add");},icon: Icon(Icons.comment,color:const Color.fromARGB(255, 247, 246, 246)),tooltip: "like", color: Colors.blue,),
                      IconButton(onPressed: (){print("click on add");},icon: Icon(Icons.share,color:const Color.fromARGB(255, 243, 241, 241)),tooltip: "like", color: Colors.blue,),
                      Container(
                       width: 250, 
                        
                      ),
                    ]
                      ),
                     Container(
                    child: Image.network("https://rukminim2.flixcart.com/image/850/1000/kgsb1jk0-0/poster/n/h/y/medium-twfnp2-beautiful-waterfall-nature-view-large-size-high-original-imafwy37qv2b5g3v.jpeg?q=90&crop=false",
                    fit: BoxFit.cover,
                    ),
                    height: 400,
                    width: 400,                    
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                       IconButton(onPressed: (){print("click on add");},icon: Icon(Icons.favorite,color:const Color.fromARGB(255, 240, 239, 239)),tooltip: "like", color: Colors.blue,),
                       IconButton(onPressed: (){print("click on add");},icon: Icon(Icons.comment,color:const Color.fromARGB(255, 240, 237, 237)),tooltip: "like", color: Colors.blue,),
                      IconButton(onPressed: (){print("click on add");},icon: Icon(Icons.share,color:const Color.fromARGB(255, 252, 251, 251)),tooltip: "like", color: Colors.blue,),
                      Container( 
                        width: 250,                    
                      ),
              ]
                      ),
                       Container(
                    child: Image.network("https://static.vecteezy.com/system/resources/previews/022/448/291/non_2x/save-earth-day-poster-environment-day-nature-green-ai-generative-glossy-background-images-tree-and-water-free-photo.jpg",
                    fit: BoxFit.cover,),
                    height: 400,
                    // width: 200,
                    
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                       IconButton(onPressed: (){print("click on add");},icon: Icon(Icons.favorite,color:const Color.fromARGB(255, 248, 246, 246)),tooltip: "like", color: Colors.blue,),
                     IconButton(onPressed: (){print("click on add");},icon: Icon(Icons.comment,color:const Color.fromARGB(255, 245, 244, 244)),tooltip: "like", color: Colors.blue,),
                      IconButton(onPressed: (){print("click on add");},icon: Icon(Icons.share,color:const Color.fromARGB(255, 241, 240, 240)),tooltip: "like", color: Colors.blue,),
                      Container(
                        width: 250,
                      ),
                    ]
                      ),
                     Container(
                    child: Image.network("https://images.unsplash.com/photo-1618588507085-c79565432917?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhdXRpZnVsJTIwbmF0dXJlfGVufDB8fDB8fHww",
                    fit: BoxFit.cover,),
                    height: 400,
                    width: 400,
                    
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                       IconButton(onPressed: (){print("click on add");},icon: Icon(Icons.favorite,color:const Color.fromARGB(255, 248, 246, 246)),tooltip: "like", color: Colors.blue,),
                     IconButton(onPressed: (){print("click on add");},icon: Icon(Icons.comment,color:const Color.fromARGB(255, 250, 248, 248)),tooltip: "like", color: Colors.blue,),
                      IconButton(onPressed: (){print("click on add");},icon: Icon(Icons.share,color:const Color.fromARGB(255, 250, 249, 249)),tooltip: "like", color: Colors.blue,),
                      Container(
                        
                        width: 250,
                      ),
                    ]
                      ),
                      
                ],
              ),
              
            ),
        ),
      ),
    );
  }
}