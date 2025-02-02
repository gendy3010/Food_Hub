
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Category Card.dart';


class FeaturedCaregoryListView extends StatelessWidget {
  const FeaturedCaregoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context , index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: CategoryCard(),
            );
          },
          itemCount: 7,
        ),
      ),
    );
  }
}
