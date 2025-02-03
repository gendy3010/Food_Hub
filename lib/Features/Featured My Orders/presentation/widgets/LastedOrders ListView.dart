
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Lasted order card.dart';



class LastedOrdersListView extends StatelessWidget {
  const LastedOrdersListView({super.key});

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
              child: LastedOrderCard(),
            );
          },
          itemCount: 7,
        ),
      ),
    );
  }
}
