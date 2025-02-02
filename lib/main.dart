import 'package:flutter/material.dart';
import 'package:food_hub/Modules/Featured%20Category/presentation/views/Category%20Screen.dart';
import 'package:food_hub/Modules/Splash%20Screen.dart';



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
      home: SplashScreen(),
    );
  }
}

