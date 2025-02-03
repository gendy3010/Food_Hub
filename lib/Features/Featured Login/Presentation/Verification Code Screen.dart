import 'package:flutter/material.dart';

import '../../../Core/Styles.dart';
import '../../../Core/constants.dart';
import 'Reset Password Screen.dart';

class VerificationScreen extends StatelessWidget {
   VerificationScreen({super.key});

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                          MaterialPageRoute(builder: (context) => ResetPassScreen()));

                    },
                        icon: Icon(Icons.arrow_back_ios_new
                          ,color: Colors.black,)),
                  ),
                ),
                SizedBox(
                  height: ScreenHeight * 0.15,
                ),
                Text('Verification Code',
                  textAlign: TextAlign.left,
                  style:Style.textStyle38,
                ),
                Text(
                  'Please type the verification code sent to prelookstudio@gmail.com',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Sofia',
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: ScreenHeight * 0.09,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CodeField(),
                    CodeField(),
                    CodeField(),
                    CodeField(),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'I dont recieve a code!',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Sofia',
                        fontSize: 14,
                      ),
                    ),
                    TextButton(
                        onPressed: (){},
                        child: Text(
                          'Please resend',
                          style: TextStyle(
                            color: Colors.red,
                            fontFamily: 'Sofia',
                            fontSize: 13,
                          ),
                        )),

                  ],
                ),






              ],
            ),
          ),

        ],
      ),
    );
  }
}

class CodeField extends StatelessWidget {
  const CodeField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(

        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        autofocus: true,
        onChanged: (value){
          if(value.length == 1){
            FocusScope.of(context).nextFocus();
          }
        },
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orange)
          ),

          counterText: '',
          border: InputBorder.none,
        ),
        style: TextStyle(
          color: Colors.orange
        ),
      ),
    );
  }
}
