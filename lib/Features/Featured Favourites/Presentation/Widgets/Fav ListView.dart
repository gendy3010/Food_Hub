
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Fav Card.dart';



class FavListView extends StatelessWidget {
  const FavListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.73,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context , index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: FavCard(),
            );
          },
          itemCount: 7,
        ),
      ),
    );
  }
}
