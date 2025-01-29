
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Featured Card.dart';
import 'custom category button.dart';


class FeaturedCategoryListView extends StatelessWidget {
  const FeaturedCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.14,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index) {
            return CategoryButton(label: 'Burger',);
          },
          itemCount: 7,
        ),
      ),
    );
  }
}
