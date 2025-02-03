import 'package:flutter/material.dart';

import '../../../../Core/Styles.dart';

class OrderButton extends StatelessWidget {
   OrderButton({super.key,required this.text,required this.isActive,required this.onTap});
  String text;
  bool isActive;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22)
        ),
        child: Container(
          height: 49,
          width: 130,
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          decoration: BoxDecoration(
            color: isActive ? Colors.orange : Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              text,
              style: Style.textStyle14.copyWith(
                color: isActive ? Colors.white : Colors.orange,

              ),
            ),
          ),
        ),
      ),
    );
  }
}
