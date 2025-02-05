import 'package:flutter/material.dart';

import '../../../Featured Home/Presentation/view/Side Menu.dart';
import '../Widgets/Fav ListView.dart';
import '../Widgets/FavButtons.dart';


class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
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
          title: Center(
            child: Text(

              'My Orders ',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Sofia',
                fontSize: 20,
              ),
            ),
          ),
          leading:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
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
                    icon: Icon(Icons.arrow_back_ios_new
                      ,color: Colors.black,)),
              ),
            ),
          ),

        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                FavButtons(),
                SizedBox(height: 20,),
                FavListView(),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
