import 'package:flutter/material.dart';
import 'package:food_hub/Constants/constants.dart';
import 'package:food_hub/Modules/Login%20Screen.dart';
import 'package:food_hub/Modules/Verification%20Code%20Screen.dart';
import '../Constants/Styles.dart';

class ResetPassScreen extends StatelessWidget {
  ResetPassScreen({super.key});

  @override

  Widget build(BuildContext context) {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(KBackGImage,fit: BoxFit.fill,)),
          Padding(
            padding:  EdgeInsets.all(ScreenWidth *0.05),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                  Material(
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
                            MaterialPageRoute(builder: (context) => LoginScreen()));

                      },
                          icon: Icon(Icons.arrow_back_ios_new
                            ,color: Colors.black,)),
                    ),
                  ),
                  SizedBox(
                    height: ScreenHeight * 0.15,
                  ),
                  Text('Reset Password',
                    textAlign: TextAlign.left,
                    style:Style.textStyle38,
                  ),
                  SizedBox(
                    height: ScreenHeight * 0.02,
                  ),
                  Text(
                    'Please enter your email address to',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Sofia',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'request a password reset',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Sofia',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: ScreenHeight * 0.06,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'prelookstudio@gmail.com',
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange)
                      ),

                    ),


                  ),
                  SizedBox(
                    height: ScreenHeight * 0.06,
                  ),

                  Center(
                    child: ElevatedButton(
                        onPressed: () async {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => VerificationScreen()));

                        },
                        style: ElevatedButton.styleFrom(

                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),

                            backgroundColor: Colors.deepOrange,
                            minimumSize:Size(240, 55)
                        ),
                        child: Text('Send new password',
                          style:TextStyle(
                            color: Colors.white,
                            fontFamily: 'Sofia',
                            fontSize: 15,
                          ),
                        )),
                  ),







                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}

