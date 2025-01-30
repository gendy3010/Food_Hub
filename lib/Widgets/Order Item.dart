import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants/Styles.dart';
import 'Counter Button.dart';

class OrderItem extends StatefulWidget {
  const OrderItem({super.key});

  @override
  State<OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  int _counter = 2;
  bool _isIncrementing = false;
  void _increment() {
    setState(() {
      _counter++;
      _isIncrementing = true;
    });
  }

  void _decrement() {
    if (_counter > 0) {
      setState(() {
        _counter--;
        _isIncrementing = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Image.asset(
              'assets/images/cartitem.png',),
        ),
        Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 35,
                      child: Row(
                        children: [
                          Text('Red n Hot Pizza',
                            textAlign: TextAlign.left,
                            style: Style.textStyle18,
                          ),
                          SizedBox(width: 80,),
                          IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.close,color: Colors.orange,size: 22,)),

                        ],
                      ),
                    ),
                    Text('Spicy chicken,beef',
                      textAlign: TextAlign.left,
                      style: Style.textStyle14,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(r'$15.30',
                          textAlign: TextAlign.left,
                          style: Style.textStyle16,
                        ),
                        SizedBox(width: 105,),
                        buildButton(Icons.remove, _decrement, !_isIncrementing),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            _counter.toString().padLeft(2, '0'),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        buildButton(Icons.add, _increment, _isIncrementing),
                      ],
                    ),

                  ],
                ),
              ],
            ),


          ],
        ),
      ],
    );
  }
}
