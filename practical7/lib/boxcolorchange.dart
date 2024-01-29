import 'package:flutter/material.dart';

class ColorsChange extends StatefulWidget {
  const ColorsChange({super.key});

  @override
  State<ColorsChange> createState() => _ColorsState();
}

class _ColorsState extends State<ColorsChange> {
  bool boxColor = false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Statefull widget"),),

      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 200,
                color: boxColor ? Color.fromARGB(255, 241, 6, 100) : Color.fromARGB(255, 9, 242, 226)
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                setState(() {
                  boxColor = !boxColor ;
                });
              }, child: Text("click"))
            ],
          ),
        ),
      ),
    );
  }
}