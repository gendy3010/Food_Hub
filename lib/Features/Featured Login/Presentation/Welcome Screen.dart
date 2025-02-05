import 'package:flutter/material.dart';


import '../../../Core/Styles.dart';
import '../../../Core/Widgets/Custom IconButton.dart';
import 'Regestiration Screen.dart';
import 'Login Screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset('assets/images/background.png',
                fit: BoxFit.fill,)),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 70,horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 30,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Skip",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Sofia"),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Text('Welcome to',
                    textAlign: TextAlign.left,
                    style: Style.textStyle45,
                  ),
                  Text('FoodHub',
                    textAlign: TextAlign.left,
                    style: Style.textStyle45.copyWith(color: Colors.orange),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Your favourite foods delivered',
                    style: Style.textStyle18.copyWith(color: Color(0xFF30384F),fontWeight: FontWeight.normal),
                  ),
                  Text('fast at your door.',
                    style: Style.textStyle18.copyWith(color: Color(0xFF30384F),fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 220,),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1,
                          width: 90,
                          color: Colors.white,
                        ),
                        Text('Sign in with',
                          style: Style.textStyle14.copyWith(color: Colors.white,fontWeight: FontWeight.normal),
                        ),
                        Container(
                          height: 1,
                          width: 90,
                          color: Colors.white,
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      CustomIconButton(
                          title: 'facebook',
                          image: 'assets/images/facebook.png'),
                      Spacer(),
                      CustomIconButton(
                          title: 'Google',
                          image: 'assets/images/google.png'),


                    ],
                  ),
                  SizedBox(height: 25,),
                  Center(
                    child: OutlinedButton(
                      onPressed: (){
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=> RegistrationScreen()));                      },
                      child: Text('Start with email or phone',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Sofia',
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),

                          minimumSize:Size(double.infinity, 50) ,
                          backgroundColor: Colors.white60,
                          side: BorderSide(color: Colors.black)
                      ),

                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account? ',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Sofia',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),),
                      TextButton(
                        onPressed: (){
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context)=> LoginScreen()));
                        },
                        child:  Text('Sign In',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Sofia',
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),),),
                    ],
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