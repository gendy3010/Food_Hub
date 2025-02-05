import 'package:flutter/material.dart';
import 'package:food_hub/Core/Styles.dart';
import 'package:food_hub/Core/Widgets/Custom%20Button.dart';
import '../widgets/ReviewTextField.dart';
import 'Reviews Screen.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Stack(
                    children: [
                      Center(
                          child: Image.asset('assets/images/RatingBG.png')),
                      Padding(
                        padding: const EdgeInsets.only(top: 15,left: 35),
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
                                    MaterialPageRoute(builder: (context) => const ReviewsScreen()));

                              },
                                  icon: const Icon(Icons.arrow_back_ios_new
                                    ,color: Colors.black,size: 18,)),
                            ),
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 90),
                            child: Center(
                              child: Container(
                                height: 115,
                                width: 115,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),

                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 98),
                            child: Center(
                              child: Container(
                                height:100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(50),

                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 120),
                            child: Center(child: Image.asset(
                                'assets/images/PizzaIcon.png',)),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Pizza Hut',
                  style:Style.textStyle20),
                const SizedBox(
                  height: 7,
                ),
                Text('4102 pretty view lanenda',
                    style:Style.textStyle16.copyWith(color: Colors.grey)),
                const SizedBox(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Order Delivered',style: Style.textStyle14.copyWith(color: Colors.green),),

                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('Please Rate Delivery Service',
                    style:Style.textStyle18),
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
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: ReviewTextField(),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(child: Custombutton(title: 'SUBMIT')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
