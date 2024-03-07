import 'package:flutter/material.dart';

class QuiceApp extends StatefulWidget {
 QuiceApp({super.key});

  @override
  State<QuiceApp> createState() => _QuiceAppState();
}

class _QuiceAppState extends State<QuiceApp> {
  int index = 0;
  List<Map> questions = [
    {
      "question": "Founder of BJP?",
      "options": ["LK Advani", "Modi", "Amit Shaha", "Fadnvis"],
      "correctAns" : 1,
    },
    {
      "question": "Founder of Congress?",
      "options": ["M Gandhi", "Rahul Gandhi", "Nehru", "Indira Gandhi"],
      "correctAns" : 3
    },
    {
      "question": "Founder of Shivsena?",
      "options": ["B Thakre", "Uddhav Thakre", "Eknath Shinde", "Raj Thakre"],
      "correctAns" : 1
    }
  ];
  int rightAnswer = 0 ;

  void correctOptions(int index) {
    setState(() {
      rightAnswer = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
              width: 30,
            ),
            Text("Total Questions ${questions.length}"),
            SizedBox(height: 20 ,),
        
            Text("Q.${index + 1} ${questions[index]["question"]}"),
            SizedBox(height: 20 ,),
            Container(
              width: 200,
              child: ElevatedButton(
                  onPressed: () => correctOptions(questions[index]["correctAns"]),
                  child: Text("A. ${questions[index]["options"][0]}") ,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: rightAnswer == 1 ? (questions[index]["correctAns"]==1 ? 
                    Colors.green : Colors.red) : Colors.blue,
                  ),
                  ),                  
            ),
            SizedBox(height: 20 ,),
            Container(
              width: 200,
              child: ElevatedButton(
                  onPressed: () => correctOptions(questions[index]["correctAns"]),
                  child: Text("B. ${questions[index]["options"][1]}"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: rightAnswer == 3 ? (questions[index]["correctAns"]==3 ? 
                    Colors.green : Colors.red) : Colors.blue,
                  ),
                  ),
            ),
            SizedBox(height: 20 ,),
            Container(
              width: 200,
              child: ElevatedButton(
                  onPressed: () => correctOptions(questions[index]["correctAns"]),
                  child: Text("C. ${questions[index]["options"][2]}"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: rightAnswer == 3 ? (questions[index]["correctAns"]==3 ? 
                    Colors.green : Colors.red) : Colors.blue,
                  ),
                  ),
            ),
            SizedBox(height: 20 ,),
            Container(
              width: 200,
              child: ElevatedButton(
                  onPressed: ()=> correctOptions(questions[index]["correctAns"]),
                  child: Text("D. ${questions[index]["options"][3]}"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: rightAnswer == 3 ? (questions[index]["correctAns"]==3 ? 
                    Colors.green : Colors.red) : Colors.blue,
                  ),
                  ),
            ),
            SizedBox(height: 20 ,),
            Container(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    if(rightAnswer >= 0){
                    if (index < questions.length - 1) {
                      setState(() {
                        index = index + 1;
                        rightAnswer = -1;
                      });
                    }
                    }
                  },
                  
                  child: Icon(Icons.navigate_next)),
            )
          ],
        ),
      ),
    );
  }
}
  