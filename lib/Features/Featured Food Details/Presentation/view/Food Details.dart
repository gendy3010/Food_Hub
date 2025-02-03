import 'package:flutter/material.dart';

import '../../../../Core/Widgets/Counter Button.dart';
import '../../../Featured Home/Presentation/view/Side Menu.dart';
import '../widgets/Ingredient Selection.dart';

class FoodDetailsScreen extends StatefulWidget {
  const FoodDetailsScreen({super.key});

  @override
  State<FoodDetailsScreen> createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 25),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
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
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.asset(
                            'assets/images/image 57.png', height: 220, width: 330, fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40,left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){
                          },
                          child: Material(
                            borderRadius: BorderRadius.circular(10),
                            elevation: 2,
                            child: Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: IconButton(onPressed: (){},
                                  icon: Icon(Icons.arrow_back_ios_new,size: 18
                                    ,color: Colors.black,)),
                            ),
                          ),
                        ),
                        SizedBox(width: 200,),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: Icon(Icons.favorite,color: Colors.white,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text('Ground Beef Tacos',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Sofia',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "⭐ 4.5 ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Sofia"),
                  ),
                  Text(
                    "(25+)",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Sofia"),
                  ),
                  SizedBox(width: 30,),
                  GestureDetector(
                    child: Text(
                      "See Preview",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.orange,
                          decorationThickness: 2.5,
                          color: Colors.orange,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Sofia"),
                    ),
                  ),


                ],
              ),
              SizedBox(
                height: 10,),
              Row(

                children: [
                  Text(r'$',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Sofia',
                      fontSize: 17,
                    ),
                  ),
                  Text('9.50',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Sofia',
                      fontSize: 31,
                    ),
                  ),
                 Spacer(),
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
              SizedBox(
                height: 10,),
              Text(
                'Brown the beef better. Lean ground beef – I like to use 85% lean angus. Garlic – use fresh  chopped. Spices – chili powder, cumin, onion powder.',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Sofia',
                  fontSize: 17,
                ),
              ),
              SizedBox(
                height: 10,),
              Text('Choice of Add On',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Sofia',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,),
              IngredientSelection(),
              SizedBox(
                height: 10,),
              Center(
                child: ElevatedButton.icon(
                  onPressed: (){},
                  icon: CircleAvatar(
                    radius:17,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.shopping_bag,
                      color: Colors.deepOrange,
                      size: 20,
                    ),
                  ),
                  label: Text('ADD TO CART',
                    style: TextStyle(
                      fontFamily: 'Sofia',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),

                    backgroundColor:Colors.deepOrange ,
                    foregroundColor:Colors.red ,
                    side:BorderSide(color: Colors.deepOrange) ,
                    minimumSize: Size(10, 45),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
