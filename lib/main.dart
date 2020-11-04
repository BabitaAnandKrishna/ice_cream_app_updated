import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),

    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[
            Stack(
              children:<Widget> [
                Container(
                  height: ScreenHeight,//*0.35,
                  width: ScreenWidth,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.pinkAccent[100], Colors.pink[400]]
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10 ,top:50.0),
                  child: Center(
                    child: Expanded(
                      child: Text("Welcome to Ice Cream Centre",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Parisienne",
                        ),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:100.0),
                  child: Center(
                      child: Image.asset(
                        "Assests/Images/Easiest-Raspberry-Shortcake-Ricotta-Ice-Cream-1.jpg",
                        height: ScreenHeight,
                        width: ScreenWidth,
                      fit: BoxFit.fill,)),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}