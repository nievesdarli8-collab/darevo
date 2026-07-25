import 'package:flutter/material.dart';

void main() {
  runApp(const DarevoApp());
}

class DarevoApp extends StatelessWidget {
  const DarevoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DAREVO',
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: Text(
            'DAREVO',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}