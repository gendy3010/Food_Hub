import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildButton(IconData icon, VoidCallback onPressed, bool isActive) {
  return InkWell(
    onTap: onPressed,
    borderRadius: BorderRadius.circular(30),
    child: Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.orange : Colors.white,
        border: Border.all(color: Colors.orange, width: 2),
      ),
      child: Icon(icon, color: isActive ? Colors.white : Colors.orange,size: 18,),
    ),
  );
}
