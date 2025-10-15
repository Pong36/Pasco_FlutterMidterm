import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruit Shop',
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyAppList(),
    );
  }
}

class MyAppList extends StatelessWidget {
  final List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'price': 25},
    {'name': 'Banana', 'price': 10},
    {'name': 'Mango', 'price': 30},
    {'name': 'Orange', 'price': 20},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Available Fruits')),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          final fruit = fruits[index];
          return GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'You selected ${fruit['name']} – ₱${fruit['price']}',
                  ),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: ListTile(
                leading: Icon(Icons.local_grocery_store, color: Colors.orange),
                title: Text(
                  fruit['name'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('₱${fruit['price']}'),
                trailing: ElevatedButton(
                  child: Text('Add to Cart'),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('${fruit['name']} added to your cart!'),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
