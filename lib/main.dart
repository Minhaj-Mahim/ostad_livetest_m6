import 'package:flutter/material.dart';

void main() {
  runApp(livetestApp());
}

class livetestApp extends StatelessWidget {
  const livetestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoppingListScreen(),
    );
  }
}

class ShoppingListScreen extends StatelessWidget {
  const ShoppingListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Shopping List"),
        centerTitle: true,

        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: ShoppingList(),
    );
  }
}

class ShoppingList extends StatelessWidget {
  final List<Map<String, dynamic>> shoppingItems = [
    {"name": "Apples", "icon": Icons.shopping_basket},
    {"name": "Bananas", "icon": Icons.shopping_basket},
    {"name": "Milk", "icon": Icons.shopping_basket},
    {"name": "Eggs", "icon": Icons.shopping_basket},
    {"name": "Bread", "icon": Icons.shopping_basket},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: shoppingItems.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(shoppingItems[index]["icon"]),
          title: Text(shoppingItems[index]["name"]),
          // You can add more details or actions for each item here
        );
      },
    );
  }
}