import 'package:flutter/material.dart';
import 'package:food_hub/Core/Styles.dart';
import 'package:food_hub/Core/Widgets/Custom%20Button.dart';
import '../Core/Widgets/Custom TextFormField.dart';

import 'Featured Home/Presentation/view/Side Menu.dart';

class AddNewAdress extends StatelessWidget {
  const AddNewAdress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(

            'Add new adress',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Sofia',
              fontSize: 20,
            ),
          ),
        ),
        leading:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
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
                    MaterialPageRoute(builder: (context) => SideMenu()));

              },
                  icon: Icon(Icons.arrow_back_ios_new
                    ,color: Colors.black,)),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Full name',
                textAlign: TextAlign.left,
                style: Style.textStyle16.copyWith(color: Colors.grey,fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5,
              ),
              CustomTextFormField(
                hintText: 'Your full name',
                warninText: 'name must not be empty',
              ),
              SizedBox(
                height: 20,
              ),
              Text('Mobile',
                textAlign: TextAlign.left,
                style: Style.textStyle16.copyWith(color: Colors.grey,fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5,
              ),
              CustomTextFormField(
                hintText: 'Your Number',
                warninText: 'Mobile number must not be empty',
              ),
              SizedBox(
                height: 20,
              ),
              Text('State',
                textAlign: TextAlign.left,
                style: Style.textStyle16.copyWith(color: Colors.grey,fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5,
              ),
              CustomTextFormField(
                suffix: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 18,),
                hintText: 'Select state',
                warninText: 'State must not be empty',
              ),
              SizedBox(
                height: 20,
              ),
              Text('City',
                textAlign: TextAlign.left,
                style: Style.textStyle16.copyWith(color: Colors.grey,fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5,
              ),
              CustomTextFormField(
                suffix: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 18,),
                hintText: 'Select City',
                warninText: 'City must not be empty',
              ),
              SizedBox(
                height: 20,
              ),
              Text('Street (include number house)',
                textAlign: TextAlign.left,
                style: Style.textStyle16.copyWith(color: Colors.grey,fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5,
              ),
              CustomTextFormField(
                hintText: 'Street',
                warninText: 'Please enter number of street',
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                  child: Custombutton(title: 'SAVE')),


            ],
          ),
        ),
      ),
    );
  }
}
