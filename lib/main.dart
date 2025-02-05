import 'package:flutter/material.dart';
import 'package:food_hub/Features/Featured%20Login/Presentation/Welcome%20Screen.dart';
import 'Features/Featured Login/Presentation/Splash Screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

