import 'package:flutter/material.dart';
import 'package:food_hub/Features/Featured%20Favourites/Presentation/Views/Favourites%20Screen.dart';

import '../../../../Core/Styles.dart';
import '../../../Featured Cart/Presentation/view/Cart Screen.dart';
import '../widgets/Featured Category ListView.dart';
import '../widgets/FeaturedRestaurant ListView.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: GestureDetector(
                            onTap: (){
                              Scaffold.of(context).openDrawer();
                            },
                            child: Image.asset(
                              'assets/images/menu.png',height: 40,width: 40,),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Deliver to',
                                  style: Style.textStyle14.copyWith(color: Colors.grey),
                                ),
                                IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.keyboard_arrow_down_outlined,color: Colors.grey,size: 15,),)
                              ],
                            ),
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
                      Spacer(),
                      GestureDetector(
                        child: Image.asset('assets/images/profhome.png',

                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'What would you like',
                      textAlign: TextAlign.left,
                      style: Style.textStyle30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text('to order',
                      textAlign: TextAlign.left,
                      style: Style.textStyle30,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 260,
                          height: 36,
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
                        GestureDetector(
                          onTap: (){
                            print('filter');
                          },
                          child: Image.asset('assets/images/filter.png',height: 70,width: 70,),
                        )
                      ],
                    ),
                  ),
                  FeaturedCategoryListView(),
                  SizedBox(
                      height: 10),
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
              icon: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CartScreen()));
                  },
                  child: Icon(Icons.shopping_bag,color: Colors.grey,)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FavouritesScreen()));
                  },

                  child: Icon(Icons.favorite,color: Colors.grey,)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications,color: Colors.grey,),
              label: '',
            ),


          ],
        ),

      ),
    );
  }
}


