import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
   CustomIconButton({super.key,required this.title,required this.image});
  String image;
  String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: (){},
      icon: Image.asset(image),
      label: Text(title,
        style: TextStyle(
          fontFamily: 'Sofia',
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 13,
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),

        backgroundColor:Colors.white ,
        foregroundColor:Colors.red ,
        side:BorderSide(color: Colors.white) ,
        minimumSize: Size(60, 50),
      ),
    );
  }
}
