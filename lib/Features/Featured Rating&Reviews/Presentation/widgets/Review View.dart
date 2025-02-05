import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../Core/Styles.dart';

class ReviewView extends StatelessWidget {
  const ReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
                'assets/images/ProfImage.png'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Alyce Lambo',style: Style.textStyle16.copyWith(color: Colors.black),),
                const SizedBox(
                  height: 4,),

                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                      '25/06/2020',style: Style.textStyle14),
                ),

              ],
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Icon(Icons.more_vert,color: Colors.grey,),
            ),
          ],
        ),
        Text(
          'Really convenient and the points system helps benefit loyalty. Some mild glitches here and there, but nothing too egregious. Obviously needs to roll out to more remote.',style: Style.textStyle16.copyWith(color: Colors.grey),),


      ],
    );
  }
}
