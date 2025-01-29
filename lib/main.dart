import 'package:flutter/material.dart';
import 'package:food_hub/Modules/Reset%20Password%20Screen.dart';
import 'package:food_hub/Modules/Side%20Menu.dart';
import 'package:food_hub/Modules/Splash%20Screen.dart';
import 'package:food_hub/Modules/Verification%20Code%20Screen.dart';

import 'Modules/test.dart';



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
      home:SideMenu(),
      debugShowCheckedModeBanner: false,
    );
  }
}

