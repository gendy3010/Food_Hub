import 'package:flutter/material.dart';

class ReviewTextField extends StatelessWidget {
  ReviewTextField({super.key,this.suffix});
  Icon? suffix;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 70.0,horizontal:20 ),

        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange)
        ),
        suffixIcon: suffix,
        border: const OutlineInputBorder(
        ),
      ),


    );
  }
}
