import 'package:flutter/material.dart';
import 'package:http_app/homepage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyMyAppState();
}

class _MyMyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Homepage(),
    );
  }
}

