import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub/Modules/Home%20Screen.dart';
import 'package:food_hub/Modules/test.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
          DrawerHeader(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/profile.png'), // Add your image asset
              ),
              SizedBox(
                  height: 16),
              Text(
                'Furion Wick',
                style: TextStyle(
                  fontFamily: 'Sofia',
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,

                ),
              ),
              Text(
                'forionwick@gmail.com',
                style: TextStyle(
                  fontFamily: 'Sofia',
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,

                ),
              ),
            ],
          ),
        ),
              SizedBox(height: 20,),

              ListTile(
          leading: Image.asset('assets/images/icon.png'),
          title: Text(
            'My Orders',
            style: TextStyle(
                fontFamily: 'Sofia',
                fontSize: mediaQuery.size.width * 0.045),
          ),
          onTap: () {
            // Handle My Orders
          },
        ),
        ListTile(
          leading: Image.asset('assets/images/prof icon.png'),
          title: Text(
            'My Profile',
            style: TextStyle(
                fontFamily: 'Sofia',
                fontSize: mediaQuery.size.width * 0.045),
          ),
          onTap: () {
            // Handle Delivery Address
          },
        ),
        ListTile(
          leading: Icon(Icons.location_on),
          title: Text(
            'Delivery Address',
            style: TextStyle(
                fontFamily: 'Sofia',
                fontSize: mediaQuery.size.width * 0.045),
          ),
          onTap: () {
            // Handle Delivery Address
          },
        ),
        ListTile(
          leading: Icon(Icons.email),
          title: Text(
            'Contact Us',
            style: TextStyle(
                fontFamily: 'Sofia',
                fontSize: mediaQuery.size.width * 0.045),
          ),
          onTap: () {
            // Handle Payment Methods
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text(
            'Settings',
            style: TextStyle(
                fontFamily: 'Sofia',
                fontSize: mediaQuery.size.width * 0.045),
          ),
          onTap: () {
            // Handle My Orders
          },
        ),
        ListTile(
          leading: Icon(Icons.help),
          title: Text(
            'Help & FAQs',
            style: TextStyle(
                fontFamily: 'Sofia',
                fontSize: mediaQuery.size.width * 0.045),
          ),
          onTap: () {
            // Handle Payment Methods
          },
        ),
              Padding(
                padding: const EdgeInsets.only(right: 165,top: 100,left: 10),
                child: ElevatedButton.icon(
                  onPressed: (){},
                  icon: CircleAvatar(
                    radius:17,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.power_settings_new,
                      color: Colors.deepOrange,
                      size: 20,
                    ),
                  ),
                  label: Text('Log Out',
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
      body: HomeScreen(),
    );
  }
}