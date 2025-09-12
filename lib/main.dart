import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Text(
                'Welcome to the Layout Demo!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  buildSection('Left', Colors.red, 1),
                  buildSection('Center', Colors.green, 2),
                  buildSection('Right', Colors.orange, 1),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  buildSection('Top', Colors.purple, 1),
                  buildSection('Bottom', Colors.teal, 2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Expanded buildSection(String text, Color color, int flex) {
    return Expanded(
      flex: flex,
      child: Container(
        color: color,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
