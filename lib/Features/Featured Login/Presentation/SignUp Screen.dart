
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';


import '../../../Core/Styles.dart';
import '../../../Core/Widgets/Custom IconButton.dart';
import '../../../Core/Widgets/Custom TextFormField.dart';
import '../../../Core/constants.dart';
import 'Login Screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? email;
  String? passsword;
  bool isLoading = false;


  var formK = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
                child: Image.asset(KBackGImage,
                  fit: BoxFit.fill,)),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 70,horizontal: 40),
                child: Form(
                  key: formK,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Sign Up',
                        textAlign: TextAlign.left,
                        style:Style.textStyle38,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text('Full name',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Sofia',
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomTextFormField(
                       hintText: 'Your full name',
                       warninText: 'name must not be empty',
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('E-mail',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Sofia',
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomTextFormField(
                        hintText: 'Your email or phone',
                        warninText: 'email must not be empty',
                      ),

                      const SizedBox(
                        height: 190,
                      ),
                      Center(
                        child: ElevatedButton(
                            onPressed: () async {
                              if(formK.currentState!.validate()){
                                isLoading= true;
                                setState(() {

                                });
                                }
                                isLoading= false;
                                setState(() {

                                });
                              },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

                                backgroundColor: Colors.deepOrange,
                                minimumSize:const Size(230, 55)
                            ),
                            child: const Text('SIGN UP',
                              style:TextStyle(
                                color: Colors.white,
                                fontFamily: 'Sofia',
                                fontSize: 13,
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already have an account?',
                            style: TextStyle(
                              color: Colors.brown,
                              fontFamily: 'Sofia',
                              fontSize: 12,
                            ),),
                          TextButton(
                            onPressed: (){
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context)=> LoginScreen()));
                            },
                            child:  const Text('Login',
                              style: TextStyle(
                                color: Colors.red,
                                fontFamily: 'Sofia',
                                fontSize: 12,
                              ),),),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 1,
                                  width: 85,
                                  color: Colors.grey,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text('Sign up with',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontFamily: 'Sofia',
                                    color: Colors.brown,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 1,
                                  width: 85,
                                  color: Colors.grey,
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          CustomIconButton(
                              title: 'facebook',
                              image: 'assets/images/facebook.png'),
                          const Spacer(),
                          CustomIconButton(
                              title: 'Google',
                              image: 'assets/images/google.png'),


                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


 }
