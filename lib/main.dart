import 'package:flutter/material.dart';
import 'package:food_hub/Modules/Food%20Details.dart';
import 'package:food_hub/Modules/Side%20Menu.dart';
import 'package:food_hub/Widgets/Ingredient%20Selection.dart';
import 'Modules/Cart Screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: SideMenu(),
    );
  }
}

