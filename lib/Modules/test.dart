import 'package:flutter/material.dart';


class HomeScreenTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deliver to 4102 Pretty View Lane'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'What would you like to order',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Find for food or restaurant...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryButton(icon: Icons.fastfood, label: 'Burger'),
                  CategoryButton(icon: Icons.cake, label: 'Donut'),
                  CategoryButton(icon: Icons.local_pizza, label: 'Pizza'),
                  CategoryButton(icon: Icons.restaurant, label: 'Mexican'),
                  CategoryButton(icon: Icons.ramen_dining, label: 'Asian'),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Featured Restaurants',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  RestaurantCard(
                    name: 'McDonald\'s',
                    rating: 4.5,
                    deliveryTime: '10-15 mins',
                    deliveryType: 'Free delivery',
                    image: 'assets/mcdonalds.png',
                  ),
                  SizedBox(width: 16),
                  RestaurantCard(
                    name: 'Starbucks',
                    rating: 4.7,
                    deliveryTime: '10-15 mins',
                    deliveryType: 'Free delivery',
                    image: 'assets/starbucks.png',
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Popular Items',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  PopularItemCard(
                    name: 'Burger',
                    price: 'R50',
                    image: 'assets/burger.png',
                  ),
                  SizedBox(width: 16),
                  PopularItemCard(
                    name: 'Chicken',
                    price: 'R50',
                    image: 'assets/chicken.png',
                  ),
                  SizedBox(width: 16),
                  PopularItemCard(
                    name: 'Fast Food',
                    price: 'R50',
                    image: 'assets/fastfood.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final IconData icon;
  final String label;

  CategoryButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 40),
        SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}

class RestaurantCard extends StatelessWidget {
  final String name;
  final double rating;
  final String deliveryTime;
  final String deliveryType;
  final String image;

  RestaurantCard({
    required this.name,
    required this.rating,
    required this.deliveryTime,
    required this.deliveryType,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(image, height: 100, width: double.infinity, fit: BoxFit.cover),
              SizedBox(height: 8),
              Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Text('$rating ⭐'),
              SizedBox(height: 4),
              Text(deliveryTime),
              SizedBox(height: 4),
              Text(deliveryType, style: TextStyle(color: Colors.green)),
            ],
          ),
        ),
      ),
    );
  }
}

class PopularItemCard extends StatelessWidget {
  final String name;
  final String price;
  final String image;

  PopularItemCard({required this.name, required this.price, required this.image});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(image, height: 100, width: double.infinity, fit: BoxFit.cover),
              SizedBox(height: 8),
              Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Text(price, style: TextStyle(fontSize: 16, color: Colors.green)),
            ],
          ),
        ),
      ),
    );
  }
}