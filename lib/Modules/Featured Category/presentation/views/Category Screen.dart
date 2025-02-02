import 'package:flutter/material.dart';

import '../../../../Constants/Styles.dart';
import '../../../Featured Home/Presentation/view/Side Menu.dart';
import '../widgets/Category ListView.dart';


class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics:  BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                              width: 300,
                              height: 320,
                              child: Image.asset('assets/images/pizza.png',fit: BoxFit.fill,)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25,left: 20),
                      child: SizedBox(
                        height: 240,
                        width: 145,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Material(
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
                                    icon: Icon(Icons.arrow_back_ios_rounded,size: 20
                                      ,color: Colors.black,)),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text('Fast',
                              textAlign: TextAlign.left,
                              style: Style.textStyle45,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Food',
                              textAlign: TextAlign.left,
                              style: Style.textStyle45.copyWith(color: Colors.deepOrange),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('80 type of pizza',
                              textAlign: TextAlign.left,
                              style: Style.textStyle20.copyWith(color: Colors.grey,fontWeight: FontWeight.w400),
                            ),



                          ],
                        ),
                      ),
                    ),


                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                    height: 70,
                    child: Row(
                      children: [
                        Text('Sort by:',
                          textAlign: TextAlign.left,
                          style: Style.textStyle18.copyWith(color: Colors.black,fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text('Popular:',
                          textAlign: TextAlign.left,
                          style: Style.textStyle16.copyWith(color: Colors.orange,fontWeight: FontWeight.w400),
                        ),
                        Icon(
                          Icons.arrow_drop_down_sharp,color: Colors.orange,),
                        Spacer(),
                        GestureDetector(
                          onTap: (){
                            print('filter');
                          },
                          child: SizedBox(
                              height: 70,
                              width: 70,
                              child: Image.asset('assets/images/filter.png')),
                        )




                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: FeaturedCaregoryListView(),

          ),
        ],
      ),
    );
  }
}

