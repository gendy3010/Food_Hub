import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom category button.dart';

class FeaturedCategoryListView extends StatefulWidget {
  const FeaturedCategoryListView({super.key});

  @override
  _FeaturedCategoryListViewState createState() =>
      _FeaturedCategoryListViewState();
}

class _FeaturedCategoryListViewState extends State<FeaturedCategoryListView> {
  int selectedIndex = -1; // عشان يكون مفيش زر مختار في البداية

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.13,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, index) {
            return CategoryButton(
              label: 'Burger',
              isSelected: selectedIndex == index,
              onTap: () {
                setState(() {
                  selectedIndex = index; // يغير المؤشر لما يتم الضغط على زر جديد
                });
              },
            );
          },
        ),
      ),
    );
  }
}

