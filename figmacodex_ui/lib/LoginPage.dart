
import 'package:figmacodex_ui/HomePage.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? name;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
                height: 315,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(37, 49, 163, 0.667),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(180))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 50),
                      child: Text(
                        "Welcome",
                       style: TextStyle(fontSize: 38,color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 52, top: 20),
                      child: Text(
                        "Please sign in to continue",
                        style: TextStyle(fontSize: 15,color: Colors.white),
                     ),
                    )
                  ],
                )),
            Container(
                child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100),
                  width: 300,
                  child: TextField(
                      onChanged: (value) {
                        name = value;
                      },
                      controller: emailController,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Mobile no. or email",
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.close_rounded)))),
                ),
                Container(
                  width: 300,
                  child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Password",
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.visibility_off)))),
                ),
                Container(
                    margin: EdgeInsets.only(top: 20, bottom: 50),
                    child: Text(
                      "Forgot password?",
                      )),
                Container(
                  height: 40,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>HomePage(),
                          ));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                      ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xFF6371F2)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)))),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Text(
                        "Dont have an account? ",
                        ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Text(
                        "Sign up",
                        ),
                    )
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}