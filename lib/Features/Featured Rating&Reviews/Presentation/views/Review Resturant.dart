import 'package:flutter/material.dart';
import 'package:food_hub/Core/Styles.dart';

import '../../../../Core/Widgets/Custom Button.dart';
import '../../../Featured Home/Presentation/view/Side Menu.dart';


class ReviewResturant extends StatelessWidget {
  const ReviewResturant({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 290),
                child: SizedBox(
                  height: 35,
                  width: 35,
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  SideMenu()));

                      },
                          icon: const Icon(Icons.arrow_back_ios_new
                            ,color: Colors.black,size: 18,)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Center(
                    child: Image.asset('assets/images/RestIcon.png')),
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'How was your last',style: Style.textStyle30.copyWith(fontWeight: FontWeight.normal),),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'order from Pizza Hut ?',style: Style.textStyle30.copyWith(fontWeight: FontWeight.normal),),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Good',
                  style:Style.textStyle22),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "⭐⭐⭐⭐⭐",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Sofia"),
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'write'
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Center(
                  child: Custombutton(title: 'SUBMIT')),
            ],
          ),
        ),
      ),
    );
  }
}
