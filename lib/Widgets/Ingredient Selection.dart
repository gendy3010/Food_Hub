import 'package:flutter/material.dart';

class IngredientSelection extends StatefulWidget {
  const IngredientSelection({super.key});

  @override
  _IngredientSelectionState createState() => _IngredientSelectionState();
}

class _IngredientSelectionState extends State<IngredientSelection> {
  String? _selectedIngredient = 'Pepper Julienne'; // العنصر المختار مبدئيًا

  final List<Map<String, String>> ingredients = [
    {
      'name': 'Pepper Julienne',
      'price': '\$2.30',
      'image': 'assets/images/selection item.png',
    },
    {
      'name': 'Baby Spinach',
      'price': '\$4.70',
      'image': 'assets/images/selection item.png',
    },
    {
      'name': 'Masroom',
      'price': '\$2.50',
      'image': 'assets/images/selection item.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: ingredients.map((ingredient) {
          return ListTile(
            leading: Image.asset(
              ingredient['image']!,
              width: 40,
              height: 40,
            ),
            title: Text(
              ingredient['name']!,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "+${ingredient['price']!}",
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Radio<String>(
                  value: ingredient['name']!,
                  groupValue: _selectedIngredient,
                  activeColor: Colors.orange,
                  onChanged: (value) {
                    setState(() {
                      _selectedIngredient = value;
                    });
                  },
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
