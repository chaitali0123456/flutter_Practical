import 'package:codexapp/loginpage.dart';
import 'package:codexapp/topicUI.dart';
import 'package:flutter/material.dart';
import 'package:codexapp/CodesList/javacodes.dart';
import 'package:codexapp/CodesList/dartcodes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class CodeXapp extends StatefulWidget {
  String username;
  CodeXapp({super.key, required this.username});

  @override
  State<CodeXapp> createState() => _CodeXappState(username);
}

class _CodeXappState extends State<CodeXapp> {
  String username;
  _CodeXappState(this.username);
  int count = 0;

  final List<String> items = [
    'Java',
    'Dart',
    'Python',
    'JavaScript',
  ];
  String? selectedValue;

  Widget languages() {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 10),
      child: const Text(
        "Language : ",
        style: TextStyle(fontSize: 22),
      ),
    );
  }

  Widget ImageCard(String image) {
    return Container(
      margin: const EdgeInsets.only(top: 20, right: 20, bottom: 35, left: 20),
      width: 150,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade600,
                spreadRadius: 1,
                blurRadius: 15,
                offset: const Offset(0, 15))
          ]),
    );
  }

  Widget languagesWidgets() {
    return CarouselSlider(
      items: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TopicUi(appName: "JavaTopics", CodesList: javacodes)));
          },
          child: ImageCard("images/java-14-logo.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TopicUi(appName: "DartTopics", CodesList: dartcodes)));
          },
          child: ImageCard("images/Dart-logo.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TopicUi(
                        appName: "PythonTopics", CodesList: dartcodes)));
          },
          child: ImageCard("images/Python-logo.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TopicUi(
                        appName: "JavaScriptTopics", CodesList: javacodes)));
          },
          child: ImageCard("images/js-logo.png"),
        )
      ],
      options: CarouselOptions(
        autoPlay: true,
        initialPage: 0,
        reverse: true,
        autoPlayInterval: const Duration(seconds: 4),
        // autoPlayAnimationDuration: const Duration(milliseconds: 800),
        // autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        viewportFraction: 0.5,
        height: 200,
        enlargeFactor: 0.225,
      ),
    );
  }

  Widget FrameWork() {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 10),
      child: const Text(
        "FrameWork : ",
        style: TextStyle(fontSize: 22),
      ),
    );
  }

  Widget FrameWorkWidgets() {
    return CarouselSlider(
      items: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TopicUi(appName: "JavaTopics", CodesList: javacodes)));
          },
          child: ImageCard("images/react-logo.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TopicUi(appName: "JavaTopics", CodesList: javacodes)));
          },
          child: ImageCard("images/flutter-logo.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TopicUi(appName: "JavaTopics", CodesList: javacodes)));
          },
          child: ImageCard("images/spring-logo.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TopicUi(appName: "JavaTopics", CodesList: javacodes)));
          },
          child: ImageCard("images/hibernate-logo.png"),
        )
      ],
      options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 16 / 7,
          initialPage: 0,
          reverse: true,
          viewportFraction: 0.5,
          height: 200,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.225),
    );
  }

  Widget Database() {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 10),
      child: const Text(
        "Database : ",
        style: TextStyle(fontSize: 22),
      ),
    );
  }

  Widget DatabaseWidgets() {
    return CarouselSlider(
      items: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TopicUi(appName: "JavaTopics", CodesList: javacodes)));
          },
          child: ImageCard("images/maria.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TopicUi(appName: "JavaTopics", CodesList: javacodes)));
          },
          child: ImageCard("images/mongodb.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TopicUi(appName: "JavaTopics", CodesList: javacodes)));
          },
          child: ImageCard("images/mysql.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TopicUi(appName: "JavaTopics", CodesList: javacodes)));
          },
          child: ImageCard("images/oracle.png"),
        )
      ],
      options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 16 / 7,
          initialPage: 0,
          reverse: false,
          viewportFraction: 0.5,
          height: 200,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.225),
    );
  }

  Widget Tools() {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 10),
      child: const Text(
        "Tools : ",
        style: TextStyle(fontSize: 22),
      ),
    );
  }

  Widget ToolsWidgets() {
    return Builder(builder: (context) {
      return CarouselSlider(
        items: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TopicUi(
                            appName: "JavaTopics", CodesList: javacodes)));
              },
              child: ImageCard("images/github.png")),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TopicUi(
                          appName: "JavaTopics", CodesList: javacodes)));
            },
            child: ImageCard("images/github.png"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TopicUi(
                          appName: "JavaTopics", CodesList: javacodes)));
            },
            child: ImageCard("images/postman.png"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TopicUi(
                          appName: "JavaTopics", CodesList: javacodes)));
            },
            child: ImageCard("images/vs-logo.png"),
          )
        ],
        options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 16 / 7,
            initialPage: 0,
            reverse: true,
            viewportFraction: 0.5,
            height: 200,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.225),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CodeX",
          style: TextStyle(fontSize: 22, color: Color.fromARGB(255, 0, 0, 0)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: const Color.fromARGB(255, 0, 0, 0),
          )
        ],
      ),
      // floatingActionButton:
      //     IconButton(onPressed: reload, icon: const Icon(Icons.add)),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    languages(),
                    languagesWidgets(),
                    FrameWork(),
                    FrameWorkWidgets(),
                    Database(),
                    DatabaseWidgets(),
                    Tools(),
                    ToolsWidgets(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(username),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                isExpanded: true,
                hint: const Text(
                  'Select Language',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                items: items
                    .map((String item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                    .toList(),
                value: selectedValue,
                onChanged: (String? value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 40,
                  width: 140,
                ),
                menuItemStyleData: const MenuItemStyleData(
                  height: 40,
                ),
              ),
            ),
            ListTile(
              title: const Text('Batch'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: const Text("Do you want to Logout"),
                    content: const Text("Press Okay to logout"),
                    actions: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        child: const Text("Logout"),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
