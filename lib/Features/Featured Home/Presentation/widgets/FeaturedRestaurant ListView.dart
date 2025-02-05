
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Featured Card.dart';


class FeaturedRestaurantListView extends StatelessWidget {
  const FeaturedRestaurantListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.33,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: CustomCard(),
            );
          },
          itemCount: 5,
        ),
      ),
    );
  }
}
