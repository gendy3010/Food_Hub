import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,top: 10),
      child: Stack(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/images/profile.png'), // Add your image asset
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55,top: 55),
            child: Container(
              height: 30,
              width: 30,
              child: Material(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.camera_alt,size:20,color: Colors.grey,)),
            ),
          ),
        ],
      ),
    );
  }
}
