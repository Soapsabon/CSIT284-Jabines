import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return DiceRollerState();
  }
}

class DiceRollerState extends State<DiceRoller> {
  var currentDiceImage = 'assets/dice-images/dice-images/dice-1.png';

  void rollDice() {
    setState(() {
      currentDiceImage =
          'assets/dice-images/dice-images/dice-${Random().nextInt(6) + 1}.png';
    });
  }

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
              currentDiceImage,
            ), // Image.asset
            SizedBox(height: 30),
            TextButton(
              onPressed: rollDice,
              child: Text(
                style: TextStyle(fontSize: 28),
                "Roll Dice",
              ), // Text
            ), // TextButton
          ],
        ), // Column
      ), // Center
    ); // Container
  }
}