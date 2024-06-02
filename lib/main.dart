import 'package:flutter/material.dart';
import 'package:music_app_design/animated_screen.dart';
import 'package:music_app_design/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen1(),
    );
  }
}
