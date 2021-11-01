import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/homepage.dart';
import 'package:flutter_catalog/pages/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text('FirstApp'),
      //   ),
      // body: Homepage(),
      // ),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      themeMode: ThemeMode.light,
      // theme: ThemeData.dark(),.
      initialRoute: "/",
      routes: {
        "/": (context) => Login(),
        "/home": (context) => Homepage(),
      },
    );
  }
}
