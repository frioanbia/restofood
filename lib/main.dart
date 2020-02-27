import 'package:flutter/material.dart';
import 'package:restofood/home_screen.dart';
//import 'package:restofood/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: "Restofood",
      home: HomeScreen(),
    );
  }
}
