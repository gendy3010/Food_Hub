import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../../../Core/Styles.dart';
import '2 Buttons.dart';
import 'Custom Order Button.dart';

class OrderCart extends StatefulWidget {
  const OrderCart({super.key});

  @override
  State<OrderCart> createState() => _OrderCartState();
}

class _OrderCartState extends State<OrderCart> {
  bool trackOrder = true;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      child: SizedBox(
        height: 229,
        width: 320,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Material(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                            width: 60,
                            height: 60,
                            child: Image.asset('assets/images/OrderImage.png'))),
                    const SizedBox(
                      width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),

                        Text(
                          '3 items',style: Style.textStyle14.copyWith(color: Colors.grey),),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              'Starbuck',style: Style.textStyle20.copyWith(color: Colors.black),),
                            const SizedBox(width: 3,),
                            const Icon(
                              Icons.check_circle_rounded,color: Color(0xFF029094),size: 12,)
                          ],
                        ),

                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '#234555',style: Style.textStyle18.copyWith(fontWeight:FontWeight.normal,color: Colors.orange),),
                    ),


                  ],
                ),
                const SizedBox(
                  height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Estimated Arrival',style: Style.textStyle14.copyWith(color: Colors.grey),),
                    const Spacer(),
                    Text(
                      'Now',style: Style.textStyle14.copyWith(color: Colors.grey),),


                  ],
                ),
                const SizedBox(
                  height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '25',style: Style.textStyle30.copyWith(color: Colors.black),),
                    const SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'min',style: Style.textStyle14.copyWith(color: Colors.black),),
                    ),
                    const Spacer(),
                    Text(
                      'Food on the way',style: Style.textStyle16.copyWith(color: Colors.black,fontWeight: FontWeight.normal),),



                  ],
                ),
                const SizedBox(
                  height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OrderButton(
                      text: 'Cancel',
                      isActive: trackOrder,
                      onTap: () {
                        setState(() {
                          trackOrder = true;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    OrderButton(
                      text: 'Track Order',
                      isActive: !trackOrder,
                      onTap: () {
                        setState(() {
                          trackOrder =false;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
