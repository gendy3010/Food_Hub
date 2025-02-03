import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
   CustomTextFormField({super.key,required this.hintText,required this.warninText});
String hintText;
String warninText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value){
        if(value!.isEmpty){
          return warninText;
        }
        return null;
      },
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange)
        ),
        hintText:  hintText,
        border: OutlineInputBorder(
        ),
      ),


    );
  }
}
