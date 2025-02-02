import 'package:flutter/material.dart';

class BackButton extends StatelessWidget {
  BackButton({super.key, required this.screen});
Widget screen;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      elevation: 2,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: IconButton(onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => screen));

        },
            icon: Icon(Icons.arrow_back_ios_new
              ,color: Colors.black,)),
      ),
    );

  }
}
