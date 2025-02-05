import 'package:flutter/material.dart';
import 'package:food_hub/Core/Widgets/Custom%20TextFormField.dart';
import '../../../Featured Home/Presentation/view/Side Menu.dart';
import '../widgets/Reviews ListView.dart';
import 'RatingScreen.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(left: 100,top: 15),
            child: Text(

              'Reviews',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Sofia',
                fontSize: 20,
              ),
            ),
          ),
          leading:  Padding(
            padding: const EdgeInsets.only(left: 15,top: 15),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 1,
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

        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                CustomTextFormField(
                  tap:(){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=> const RatingScreen()));
                },
                    hintText: 'Write your review',
                    warninText: 'warninText',
                  prefix: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Image.asset('assets/images/ReviewImage.png',

                    ),
                  ),

                ),
                const SizedBox(
                  height: 30,),
                const ReviewsListView(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
