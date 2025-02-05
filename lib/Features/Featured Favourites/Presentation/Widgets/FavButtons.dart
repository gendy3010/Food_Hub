import 'package:flutter/material.dart';

import '../../../../Core/Styles.dart';


class FavButtons extends StatefulWidget {
  @override
  _FavButtonsState createState() => _FavButtonsState();
}

class _FavButtonsState extends State<FavButtons> {
  bool isUpcoming = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),

        child: Container(
          height: 55,
          width: 320,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.all(4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              buildToggleButton("Food Items", isUpcoming, () {
                setState(() {
                  isUpcoming = true;
                });
              }),
              buildToggleButton(
                  "Restaurents", !isUpcoming, () {
                setState(() {
                  isUpcoming = false;
                });
              }),
            ],
          ),
        ),
      ),
    );
  }

}
Widget buildToggleButton(String text, bool isActive, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 49,
      width: 153,
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
  );
}
