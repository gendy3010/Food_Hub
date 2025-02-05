
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Review View.dart';





class ReviewsListView extends StatelessWidget {
  const ReviewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.78,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context , index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 7, vertical: 10),
              child: ReviewView(),
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
