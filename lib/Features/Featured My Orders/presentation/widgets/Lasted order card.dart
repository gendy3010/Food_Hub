import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../../../Core/Styles.dart';
import 'Custom Order Button.dart';

class LastedOrderCard extends StatefulWidget {
  const LastedOrderCard({super.key});

  @override
  State<LastedOrderCard> createState() => _LastedOrderCardState();
}

class _LastedOrderCardState extends State<LastedOrderCard> {
  bool trackOrder = true;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 10),
        child: SizedBox(
          height: 180,
          width: 300,
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                                width: 60,
                                height: 60,
                                child: Image.asset('assets/images/OrderImage.png'))),
                      ),
                      SizedBox(
                        width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                '20 Jun, 10:30',style: Style.textStyle14.copyWith(color: Colors.grey),),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '3 items',style: Style.textStyle14.copyWith(color: Colors.grey),),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                'Jimmy John’s ',style: Style.textStyle20.copyWith(color: Colors.black),),
                              SizedBox(width: 3,),
                              Icon(
                                Icons.check_circle_rounded,color: Color(0xFF029094),size: 12,)
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Order Delivered',style: Style.textStyle14.copyWith(color: Colors.green),),

                            ],
                          ),


                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          r'$17.10',style: Style.textStyle18.copyWith(fontWeight:FontWeight.normal,color: Colors.orange),),
                      ),


                    ],
                  ),
                  SizedBox(
                    height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OrderButton(
                        text: 'Rate',
                        isActive: trackOrder,
                        onTap: () {
                          setState(() {
                            trackOrder = true;
                          });
                        },
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      OrderButton(
                        text: 'Re-Order',
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
      ),
    );
  }
}
