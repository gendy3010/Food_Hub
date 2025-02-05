import 'package:flutter/material.dart';
import 'package:food_hub/Core/Styles.dart';

import '../../../../Core/Widgets/Custom TextFormField.dart';
import '../../../Featured Home/Presentation/view/Side Menu.dart';
import '../widgets/Profile Icon.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children:
                  [
                    Image.asset('assets/images/profileBG.png',width: 400,),
                    Padding(
                      padding: const EdgeInsets.only(top: 25,left: 15),
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
                              icon: const Icon(Icons.arrow_back_ios_new
                                ,color: Colors.black,)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 120),
                      child: Center(
                        child: Stack(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)
                              ),

                            ),
                            const ProfileIcon(),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Center(
                  child: Text('Eljad Eandaz',
                    style: Style.textStyle20),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text(
                      'Edit profile',
                      style: Style.textStyle14),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text('Full name',
                  textAlign: TextAlign.left,
                  style: Style.textStyle16.copyWith(color: Colors.grey,fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextFormField(
                  hintText: 'Your full name',
                  warninText: 'name must not be empty',
                ),
                const SizedBox(
                  height: 20,
                ),
                Text('E-mail',
                  textAlign: TextAlign.left,
                  style: Style.textStyle16.copyWith(color: Colors.grey,fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextFormField(
                  hintText: 'prelookstudio@gmail.com',
                  warninText: 'email must not be empty',
                ),
                const SizedBox(
                  height: 20,
                ),
                Text('Phone Number',
                  textAlign: TextAlign.left,
                  style: Style.textStyle16.copyWith(color: Colors.grey,fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextFormField(
                  hintText: 'Your Number',
                  warninText: 'Mobile number must not be empty',
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

