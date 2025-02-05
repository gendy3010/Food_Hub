import 'package:flutter/material.dart';

import 'Features/Featured Favourites/Presentation/Views/Favourites Screen.dart';
import 'Features/Featured Login/Presentation/Splash Screen.dart';
import 'Features/Featured Rating&Reviews/Presentation/views/Review Resturant.dart';



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
      home: ReviewResturant(),
    );
  }
}

