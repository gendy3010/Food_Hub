
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub/Constants/constants.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../Constants/Styles.dart';
import '../Constants/Widgets/Custom IconButton.dart';
import '../Constants/Widgets/Custom TextFormField.dart';
import 'Login Screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? email;
  String? passsword;
  bool isLoading = false;
  bool _obscureText = true;


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
                      Text('Sign Up',
                        textAlign: TextAlign.left,
                        style:Style.textStyle38,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text('Full name',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Sofia',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CustomTextFormField(
                       hintText: 'Your full name',
                       warninText: 'name must not be empty',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('E-mail',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Sofia',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CustomTextFormField(
                        hintText: 'Your email or phone',
                        warninText: 'email must not be empty',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Password',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Sofia',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        obscureText: _obscureText,
                        onChanged: (data){
                          passsword= data;
                        },
                        validator: (value){
                          if(value!.isEmpty){
                            return'password must not be empty';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            onPressed: (){
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            icon: Icon(
                              _obscureText ? Icons.visibility : Icons.visibility_off,
                            ),
                          ),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange)
                          ),

                        ),


                      ),
                      SizedBox(
                        height: 25,
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
                                minimumSize:Size(230, 55)
                            ),
                            child: Text('SIGN UP',
                              style:TextStyle(
                                color: Colors.white,
                                fontFamily: 'Sofia',
                                fontSize: 13,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?',
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
                            child:  Text('Login',
                              style: TextStyle(
                                color: Colors.red,
                                fontFamily: 'Sofia',
                                fontSize: 12,
                              ),),),
                        ],
                      ),
                      SizedBox(
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
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Sign up with',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontFamily: 'Sofia',
                                    color: Colors.brown,
                                  ),
                                ),
                                SizedBox(
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
                      SizedBox(
                        height: 20,
                      ),
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
