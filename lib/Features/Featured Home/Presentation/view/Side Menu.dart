import 'package:flutter/material.dart';
import 'package:food_hub/Features/Add%20New%20Adrees.dart';

import '../../../Featured My Orders/presentation/views/My Orders.dart';
import '../../../Featured Profile/presentation/views/My Profile.dart';
import 'Home Screen.dart';

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
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyProfile()));
                },
                child: const CircleAvatar(

                  radius: 40,
                  backgroundImage: AssetImage('assets/images/profile.png'), // Add your image asset
                ),
              ),
              const SizedBox(
                  height: 16),
              const Text(
                'Furion Wick',
                style: TextStyle(
                  fontFamily: 'Sofia',
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,

                ),
              ),
              const SizedBox(
                  height: 5),

              const Text(
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
              const SizedBox(height: 20,),

              ListTile(
          leading: Image.asset('assets/images/icon.png'),
          title: Text(
            'My Orders',
            style: TextStyle(
                fontFamily: 'Sofia',
                fontSize: mediaQuery.size.width * 0.045),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=> const MyOrdersScreen()));
          },
        ),
              ListTile(
          leading: Image.asset('assets/images/prof icon.png'),
          title: GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyProfile()));
            },
            child: Text(
              'My Profile',
              style: TextStyle(
                  fontFamily: 'Sofia',
                  fontSize: mediaQuery.size.width * 0.045),
            ),
          ),
          onTap: () {
            // Handle Delivery Address
          },
        ),
              ListTile(
          leading: const Icon(Icons.location_on),
          title: GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddNewAdress()));
            },
            child: Text(
              'Delivery Address',
              style: TextStyle(
                  fontFamily: 'Sofia',
                  fontSize: mediaQuery.size.width * 0.045),
            ),
          ),
          onTap: () {
            // Handle Delivery Address
          },
        ),
              ListTile(
                leading: const Icon(Icons.wallet),
                title: GestureDetector(
                  onTap: (){
                  },
                  child: Text(
                    'Payment Methods',
                    style: TextStyle(
                        fontFamily: 'Sofia',
                        fontSize: mediaQuery.size.width * 0.045),
                  ),
                ),
                onTap: () {
                  // Handle Delivery Address
                },
              ),
              ListTile(
          leading: const Icon(Icons.email),
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
          leading: const Icon(Icons.settings),
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
          leading: const Icon(Icons.help),
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
              LogOutButton(),

            ],
          ),
        ),
      body: const HomeScreen(),
    );
  }

  Padding LogOutButton() {
    return Padding(
              padding: const EdgeInsets.only(right: 165,top: 70,left: 10),
              child: ElevatedButton.icon(
                onPressed: (){},
                icon: const CircleAvatar(
                  radius:17,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.power_settings_new,
                    color: Colors.deepOrange,
                    size: 20,
                  ),
                ),
                label: const Text('Log Out',
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
                  side:const BorderSide(color: Colors.deepOrange) ,
                  minimumSize: const Size(10, 45),
                ),
              ),
            );
  }
}