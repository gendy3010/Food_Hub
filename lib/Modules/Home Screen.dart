import 'package:flutter/material.dart';

import '../Widgets/custom csategory button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Deliver to',
                  style: TextStyle(
                      fontFamily: 'Sofia',
                      color: Colors.grey,
                      fontSize: 14),
                ),
                IconButton(onPressed: (){},
                  icon: Icon(Icons.keyboard_arrow_down_outlined,color: Colors.grey,),)
              ],
            ),
            Text(
              '4102  Pretty View Lane ',
              style: TextStyle(
                  fontFamily: 'Sofia',
                  color: Colors.orange,
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
          ],
        ),
        leading: IconButton(
          onPressed: (){},
          color: Colors.black,
          icon: Icon(Icons.featured_play_list_outlined),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 5, bottom: 5),
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
              ),
              child: GestureDetector(
                child: Image.asset('assets/images/profile.png',

                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Text('What would you like',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Sofia',
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('to order',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Sofia',
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 260,
                  height: 51,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Find for food or restaurant...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                    width: 70,
                    child: Image.asset('assets/images/filter.png'))
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryButton(label: 'Burger'),
                  CategoryButton(label: 'Donat'),
                  CategoryButton(label: 'Bizza'),
                  CategoryButton(label: 'Mexiaca'),
                  CategoryButton(label: 'Burger'),
                  CategoryButton(label: 'Donat'),
                  CategoryButton(label: 'Bizza'),
                  CategoryButton(label: 'Mexiaca'),
                  CategoryButton(label: 'Assian'),
                ],
              ),
            ),
            SizedBox(
                height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Featured Restaurants',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Sofia',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          // Handle view all button press
                        },
                        child: Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.orange,
                          fontFamily: 'Sofia',
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                      Icon(Icons.arrow_forward_ios,size: 12,color: Colors.orange,)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
                height: 5),
            CustomCard(),

          ],
        ),
      ),

    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Card(
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
                    Align(
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
          Row(
            children: [
              Text('McDonald’s',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Sofia',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 5,),
              Icon(Icons.check_circle_rounded,color: Colors.grey[700],size: 14,)
            ],
          ),
          Row(
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
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                width: 35,),
              Icon(
                Icons.timer,color: Colors.orange,size: 20,),
              SizedBox(
                width: 8,),
              Text('10-15 mins',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Sofia',
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),



            ],
          ),

        ],
      ),
    );
  }
}
