
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub/Constants/constants.dart';
import 'package:food_hub/Modules/Reset%20Password%20Screen.dart';
import 'package:food_hub/Modules/Featured%20Home/Presentation/view/Side%20Menu.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../Constants/Widgets/Custom IconButton.dart';
import '../Constants/Widgets/Custom TextFormField.dart';
import 'SignUp Screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();

  String? email;
  String? passsword;
  bool isLoading = false;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
                child: Image.asset(
                  KBackGImage,
                  fit: BoxFit.fill,)),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: IconButton(onPressed: (){},
                            icon: Icon(Icons.arrow_back_ios_new)),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Text('Login',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Sofia',
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 60,
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
                        height: 3,
                      ),
                      CustomTextFormField(
                        hintText: 'Your email or phone',
                        warninText: 'email must not be empty',
                      ),
                      SizedBox(
                        height: 10,
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
                        height: 3,
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
                        height: 10,
                      ),
                      Center(
                        child: TextButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ResetPassScreen()));
                            },
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                color: Colors.red,
                                fontFamily: 'Sofia',
                                fontSize: 13,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: ElevatedButton(
                            onPressed: () async {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SideMenu()));

                              /* if(formKey.currentState!.validate()){
                                isLoading= true;
                                setState(() {

                                });

                                isLoading= false;
                                setState(() {

                                });
                              }*/
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),

                                backgroundColor: Colors.deepOrange,
                                minimumSize:Size(240, 55)
                            ),
                            child: Text('LOGIN',
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
                          Text('Don\'t have an account?',
                            style: TextStyle(
                              color: Colors.brown,
                              fontFamily: 'Sofia',
                              fontSize: 12,
                            ),),
                          TextButton(
                            onPressed: (){
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context)=> SignUpScreen()));

                            },
                            child:  Text('Sign Up',
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
                                  width: 88,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Sign in with',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Sofia',
                                    color: Colors.brown,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 1,
                                  width: 88,
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
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                        ),
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
