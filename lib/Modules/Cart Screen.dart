import 'package:flutter/material.dart';

import '../Widgets/Counter Button.dart';
import 'Side Menu.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 10),
              child: Row(
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SideMenu()));

                      },
                          icon: Icon(Icons.arrow_back_ios_new
                            ,color: Colors.black,)),
                    ),
                  ),
                  SizedBox(width: 120,),
                  Text('Cart',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Sofia',
                      fontSize: 20,
                    ),
                  ),

                ],
              ),


            ),
            Row(
              children: [
                Center(
                  child: Image.asset(
                      'assets/images/cartitem.png'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Red n Hot Pizza',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: 'Sofia',
                                fontSize: 22,
                              ),
                            ),
                            Text('Spicy chicken,beef',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Sofia',
                                fontSize: 17,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.close,color: Colors.orange,size: 22,)),
                      ],
                    ),
                    Row(
                      children: [
                        Text(r'$15.30',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Sofia',
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(width: 100,),
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
            Row(
              children: [
                Center(
                  child: Image.asset(
                      'assets/images/cartitem.png'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Greek Salad',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: 'Sofia',
                                fontSize: 22,
                              ),
                            ),
                            Text('with baked salmon',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Sofia',
                                fontSize: 17,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.close,color: Colors.orange,size: 22,)),
                      ],
                    ),
                    Row(
                      children: [
                        Text(r'$15.30',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Sofia',
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(width: 100,),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () async {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                          backgroundColor: Colors.deepOrange,
                          minimumSize: (Size(95, 40)),
                        ),
                        child: Text('Apply',
                          style:TextStyle(
                            color: Colors.white,
                            fontFamily: 'Sofia',
                            fontSize: 16,
                          ),
                        )),
                  ),

                  hintText: 'Promo Code',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),

                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(color: Colors.orange)
                  ),

                ),


              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
              child: Row(
                children: [
                  Text('Subtotal',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Sofia',
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Text(r'$27.30',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Sofia',
                      fontSize: 20,
                    ),
                  ),
                  Text(' USD',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Sofia',
                      fontSize: 17,
                    ),
                  ),




                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
                height: 5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
              child: Row(
                children: [
                  Text('Tax and Fees',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Sofia',
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Text(r'$5.30',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Sofia',
                      fontSize: 20,
                    ),
                  ),
                  Text(' USD',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Sofia',
                      fontSize: 17,
                    ),
                  ),




                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
                height: 5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
              child: Row(
                children: [
                  Text('Delivery',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Sofia',
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Text(r'$1.00',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Sofia',
                      fontSize: 20,
                    ),
                  ),
                  Text(' USD',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Sofia',
                      fontSize: 17,
                    ),
                  ),




                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
                height: 5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
              child: Row(
                children: [
                  Text('Total',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Sofia',
                      fontSize: 20,
                    ),
                  ),
                  Text('  (2 items)',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Sofia',
                      fontSize: 17,
                    ),
                  ),
                  Spacer(),
                  Text(r'$33.60',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Sofia',
                      fontSize: 20,
                    ),
                  ),
                  Text(' USD',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Sofia',
                      fontSize: 17,
                    ),
                  ),




                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
                height: 5,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () async {
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

                    backgroundColor: Colors.deepOrange,
                    minimumSize:Size(230, 55)
                ),
                child: Text('CHECKOUT',
                  style:TextStyle(
                    color: Colors.white,
                    fontFamily: 'Sofia',
                    fontSize: 15,
                  ),
                )),
            SizedBox(
              height: 50,
            ),

          ],
        ),
      ),
    );
  }
}
