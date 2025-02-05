import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../Core/Styles.dart';
import '../../../Featured Food Details/Presentation/view/Food Details.dart';
import '../../../Featured Rating&Reviews/Presentation/views/Reviews Screen.dart';

class FavCard extends StatelessWidget {
  const FavCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 250,
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
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset(
                        'assets/images/image 57.png', height: 170, width: double.infinity, fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      r"$",
                                      style: Style.textStyle16.copyWith(color: Colors.orange,fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "10.35",
                                      style: Style.textStyle16.copyWith(color: Colors.black,fontWeight: FontWeight.bold),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 110,
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                    context, MaterialPageRoute(
                                    builder: (context)=>ReviewsScreen()));
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
                                  child: Row(
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

                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: Icon(Icons.favorite,color: Colors.white,),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                child: Row(
                  children: [
                    Text('Chicken Huawaiian',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Sofia',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5,left: 10),
                child: Row(
                  children: [
                    Text('Chicken, Cheese and pineapple',
                      textAlign: TextAlign.left,
                      style: Style.textStyle16.copyWith(color: Colors.grey),
                    ),

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

              backgroundColor: Color(0xFFF6F6F6),
              minimumSize:Size(30, 25)
          ),
          child: Text(text,
            style:TextStyle(
              color: Color(0xFF8A8E9B),
              fontFamily: 'Sofia',
              fontSize: 12,
            ),
          )),
    );
  }
}