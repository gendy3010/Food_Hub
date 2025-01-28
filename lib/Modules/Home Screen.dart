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

          ],
        ),
      ),

    );
  }
}

