import 'package:flutter/material.dart';
import 'package:food_hub/Widgets/FeaturedRestaurant%20ListView.dart';
import '../Widgets/Featured Category ListView.dart';

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
        leading: GestureDetector(
          onTap: (){
            Scaffold.of(context).openDrawer();
          },
          child: Center(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 5),
                  child: Material(
                    elevation: 1,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox(
                      height: 35,
                      width: 35,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 20,
                        height: 2,
                        color: Colors.black,
                      ),
                      SizedBox(height: 5,),
                      Container(
                        width:13,
                        height: 2,
                        color: Colors.black,
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Expanded(
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
                FeaturedCategoryListView(),
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
                FeaturedRestaurantListView(),

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.explore,color: Colors.grey,),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on,color: Colors.grey,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag,color: Colors.grey,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,color: Colors.grey,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,color: Colors.grey,),
            label: '',
          ),


        ],
      ),

    );
  }
}


