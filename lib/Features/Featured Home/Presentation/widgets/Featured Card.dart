import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub/Features/Featured%20Rating&Reviews/Presentation/views/Review%20Resturant.dart';

import '../../../Featured Food Details/Presentation/view/Food Details.dart';
import '../../../Featured Rating&Reviews/Presentation/views/Reviews Screen.dart';


class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, 
            MaterialPageRoute(builder: (context)=> const FoodDetailsScreen()));
      },
      child: SizedBox(
        height: 229,
        width: 320,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),),
          elevation: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Image.asset(
                      'assets/images/image 57.png', height: 100, width: double.infinity, fit: BoxFit.cover),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 10),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ReviewResturant()));
                          },
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 30,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "4.5 ⭐",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Sofia"),
                                  ),
                                  Text(
                                    "(25+)",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Sofia"),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: const Icon(Icons.favorite,color: Colors.white,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                child: Row(
                  children: [
                    const Text('McDonald’s',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Sofia',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 5,),
                    Icon(Icons.check_circle_rounded,color: Colors.grey[700],size: 14,)
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.delivery_dining_sharp,color: Colors.orange,),
                    SizedBox(
                      width: 8,),
                    Text('Free Delivery',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Sofia',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                   Spacer(),
                    Icon(
                      Icons.timer,color: Colors.orange,size: 20,),
                    SizedBox(
                      width: 2,),
                    Text('10-15 mins',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Sofia',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),



                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Customorder(text: 'BURGER',),
                    Customorder(text: 'CHICKEN',),
                    Customorder(text: 'FAST FOOD',),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
class Customorder extends StatelessWidget {
  Customorder({super.key,required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ElevatedButton(
          onPressed: ()  {},
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),

              backgroundColor: const Color(0xFFF6F6F6),
              minimumSize:const Size(30, 25)
          ),
          child: Text(text,
            style:const TextStyle(
              color: Color(0xFF8A8E9B),
              fontFamily: 'Sofia',
              fontSize: 12,
            ),
          )),
    );
  }
}