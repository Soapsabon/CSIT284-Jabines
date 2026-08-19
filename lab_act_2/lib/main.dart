import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.indigo,
                Colors.purpleAccent,
              ],
            ),
          ), // BoxDecoration
          child: Center(
            child: Text("Hello World"),
          ), // Center
        ), // Container
      ), // Scaffold
    ), // MaterialApp
  );
}