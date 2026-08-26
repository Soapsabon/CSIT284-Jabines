import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(),
      ), // Scaffold
    ), // MaterialApp
  );
}

class GradientContainer extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.red, Colors.yellow],
        ), // LinearGradient
      ), // BoxDecoration
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              width: 200,
              'assets/dice-images/dice-images/dice-2.png',
            ), // Image.asset
            SizedBox(height: 30),
            TextButton(
              onPressed: () {},
              child: Text(
                style: TextStyle(
                  fontSize: 28,
                ), // TextStyle
                "Roll Dice",
              ), // Text
            ), // TextButton
          ],
        ), // Column
      ), // Center
    ); // Container
  }
}