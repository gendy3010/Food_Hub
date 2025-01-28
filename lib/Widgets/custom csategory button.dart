import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String label;

  CategoryButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 95,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            SizedBox(height: 3),
            Image.asset('assets/images/burger.png'),
            SizedBox(height: 8),
            Text(label,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Sofia',
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
