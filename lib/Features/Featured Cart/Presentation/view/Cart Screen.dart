import 'package:flutter/material.dart';

import '../../../../Core/Styles.dart';
import '../../../../Core/Widgets/Custom Button.dart';
import '../../../../Core/Widgets/Divider.dart';
import '../widgets/Order Item.dart';
import '../../../Featured Home/Presentation/view/Side Menu.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
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
              OrderItem(),
              OrderItem(),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon:Padding(
                      padding: const EdgeInsets.only(right: 8,top: 3,bottom: 3),
                      child:SizedBox(
                        width: 100,
                        height: 40,
                        child: Custombutton(
                          title: 'Apply',
                        ),
                      ),

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
                      style: Style.textStyle18.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Text(r'$27.30',
                      textAlign: TextAlign.left,
                      style: Style.textStyle20,
                    ),
                    Text(' USD',
                      textAlign: TextAlign.left,
                      style: Style.textStyle14,
                    ),




                  ],
                ),
              ),
              CustomDivider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
                child: Row(
                  children: [
                    Text('Tax and Fees',
                      textAlign: TextAlign.left,
                      style: Style.textStyle18.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Text(r'$5.30',
                      textAlign: TextAlign.left,
                      style: Style.textStyle20,
                    ),
                    Text(' USD',
                      textAlign: TextAlign.left,
                      style: Style.textStyle14,
                    ),




                  ],
                ),
              ),
              CustomDivider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
                child: Row(
                  children: [
                    Text('Delivery',
                      textAlign: TextAlign.left,
                      style: Style.textStyle18.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Text(r'$1.00',
                      textAlign: TextAlign.left,
                      style: Style.textStyle20,
                    ),
                    Text(' USD',
                      textAlign: TextAlign.left,
                      style: Style.textStyle14,
                    ),




                  ],
                ),
              ),
              CustomDivider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
                child: Row(
                  children: [
                    Text('Total',
                      textAlign: TextAlign.left,
                      style: Style.textStyle18.copyWith(fontWeight: FontWeight.w600),
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
                      style: Style.textStyle20,
                    ),
                    Text(' USD',
                      textAlign: TextAlign.left,
                      style: Style.textStyle14,
                    ),




                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Custombutton(
                title: 'CHECKOUT',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
